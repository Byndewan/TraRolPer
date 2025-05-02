<?php

namespace App\Http\Controllers\Front;

use App\Models\Sponsor;
use App\Notifications\PaymentNotification;
use Illuminate\Mail\Mailable;
use Notification;
use Illuminate\Support\Facades\Log;
use App\Models\AboutItem;
use App\Models\Booking;
use App\Models\ContactItem;
use App\Models\HomeItem;
use App\Models\Payment;
use App\Models\Review;
use Illuminate\Support\Str;
use App\Models\Subscriber;
use App\Models\TermPrivacyItem;
use App\Models\Wishlist;
use Illuminate\Support\Facades\Http;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use App\Http\Controllers\Controller;
use App\Models\DestinationPhoto;
use App\Models\DestinationVideo;
use App\Models\PackageItinerary;
use App\Models\PackageAmenity;
use Illuminate\Http\Request;
use App\Models\BlogCategory;
use App\Models\PackageVideo;
use App\Models\PackagePhoto;
use App\Models\CounterItem;
use App\Models\Destination;
use App\Models\WelcomeItem;
use App\Models\Testimonial;
use App\Models\PackageFaq;
use App\Models\TeamMember;
use App\Mail\Websitemail;
use App\Models\Package;
use App\Models\Feature;
use App\Models\Slider;
use App\Models\Admin;
use App\Models\Comment;
use App\Models\Tour;
use App\Models\User;
use App\Models\Post;
use App\Models\Faq;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use App\Helpers\FilterHelper;
use App\Models\Accommodation;
use App\Models\Room;
use Carbon\Carbon;
use Midtrans\Config;
use Midtrans\Snap;

class FrontController extends Controller
{
    // Navbar Section
    public function home()
    {
        $sponsors = Sponsor::get();
        $faqs = Faq::get();
        $sliders = Slider::get();
        $features = Feature::get();
        $testimonials = Testimonial::get();
        $destinations = Destination::orderBy('view_count', 'desc')->get()->take(8);
        $posts = Post::with('blog_category')->orderBy('id', 'desc')->get()->take(3);
        $welcome_items = WelcomeItem::where('id', 1)->first();
        $packages = Package::with('destination', 'package_amenities', 'package_itinerary', 'tours', 'reviews')->orderBy('id', 'desc')->get()->take(3);
        $home_item = HomeItem::where('id', 1)->first();

        return view('front.home', compact('sliders', 'welcome_items', 'features', 'testimonials', 'faqs', 'posts', 'destinations', 'packages', 'home_item','sponsors'));
    }

    public function about()
    {
        $features = Feature::get();
        $counter_items = CounterItem::where('id', 1)->first();
        $welcome_items = WelcomeItem::where('id', 1)->first();
        $about_item = AboutItem::where('id', 1)->first();
        return view('front.about', compact('welcome_items', 'features', 'counter_items', 'about_item'));
    }

    public function destinations()
    {
        $destinations = Destination::orderBy('id', 'asc')->paginate(20);
        return view('front.destinations', compact('destinations'));
    }

    public function destination($slug)
    {
        $destination = Destination::where('slug', $slug)->first();
        $destination->view_count = $destination->view_count + 1;
        $destination->update();

        $destination_photos = DestinationPhoto::where('destination_id', $destination->id)->get();
        $destination_videos = DestinationVideo::where('destination_id', $destination->id)->get();

        $packages = Package::with('destination', 'package_amenities', 'package_itinerary', 'tours', 'reviews')
            ->orderBy('id', 'desc')
            ->where('destination_id', $destination->id)
            ->get()
            ->take(3);

        return view('front.destination', compact('destination', 'destination_photos', 'destination_videos', 'packages'));
    }

    public function packages(Request $request)
    {
        // dd($request->all());
        $form_name = $request->name;
        $form_min_price = $request->min_price;
        $form_max_price = $request->max_price;
        $form_destination_id = $request->destination_id;
        $form_review = $request->review;
        // dd($form_review);

        $destinations = Destination::orderBy('name', 'asc')->get();

        $packages = Package::with('destination', 'package_amenities', 'package_itinerary', 'tours', 'reviews')->orderBy('id', 'desc');

        if ($request->name != '') {
            $packages = $packages->where('name', 'like', '%' . $request->name . '%');
        }

        if ($request->min_price != '') {
            $packages = $packages->where('price', '>=', $request->min_price);
        }

        if ($request->max_price != '') {
            $packages = $packages->where('price', '<=', $request->max_price);
        }

        if ($request->destination_id != '') {
            $packages = $packages->where('destination_id', $request->destination_id);
        }

        if ($request->review != 'all' && $request->review != null) {
            $packages = $packages->whereRaw('total_score/total_rating = ?', [$request->review]);
        }

        $packages = $packages->paginate(6);

        return view('front.packages', compact('destinations', 'packages', 'form_name', 'form_min_price', 'form_max_price', 'form_destination_id', 'form_review'));
    }

    public function package($slug, Request $request, Booking $booking, Package $package)
    {
        $booking = Booking::first();
        $package = Package::with('destination')->where('slug', $slug)->first();


        $package_amenities_includes = PackageAmenity::with( 'photo')
            ->where('package_id', $package->id)
            ->where('type', 'include')
            ->get();

        $package_amenities_excludes = PackageAmenity::with( 'photo')
            ->where('package_id', $package->id)
            ->where('type', 'exclude')
            ->get();


        $package_amenities = $package_amenities_includes->merge($package_amenities_excludes);


        $package_itineraries = PackageItinerary::where('package_id', $package->id)->get();
        $package_photos = PackagePhoto::where('package_id', $package->id)->get();
        $package_videos = PackageVideo::where('package_id', $package->id)->get();
        $package_faqs = PackageFaq::where('package_id', $package->id)->get();
        $tours = Tour::where('package_id', $package->id)->get();
        $reviews = Review::with('user')
            ->where('package_id', $package->id)
            ->get();

            return view('front.package', compact(
                'package', 'package_amenities_includes', 'package_amenities_excludes',
                'package_itineraries', 'package_photos', 'package_videos', 'package_faqs',
                'tours', 'reviews', 'booking','package_amenities'
            ));
    }

    public function team_members()
    {
        $team_members = TeamMember::paginate(20);
        return view('front.team_members', compact('team_members'));
    }

    public function team_member($slug)
    {
        $team_member = TeamMember::where('slug', $slug)->first();
        return view('front.team_member', compact('team_member'));
    }

    public function faq()
    {
        $faqs = Faq::get();
        return view('front.faq', compact('faqs'));
    }

    public function blog()
    {
        $posts = Post::with('blog_category')->orderBy('id', 'desc')->paginate(9);
        return view('front.blog', compact('posts'));
    }






    public function CommentStore(Request $request, $id)
    {
        $request->validate([
            'comment' => 'required'
        ]);

        // Cek apakah komentar mengandung kata kasar
        if (FilterHelper::containsBadWords($request->comment)) {
            Comment::create([
                'post_id' => $id,
                'name' => Auth::user()->name,
                'comment' => $request->comment,
                'status' => 'pending'
            ]);

            return back()->with('error', 'Komentar mengandung kata yang tidak diperbolehkan!');
        }

        Comment::create([
            'post_id' => $id,
            'name' => Auth::user()->name,
            'comment' => $request->comment,
            'status' => 'approved'
        ]);


        return redirect()->back()->with('success', 'Komentar Berhasil Terkirim');
    }

    public function ReplyStore(Request $request, $id)
    {
        $request->validate([
            'comment' => 'required',
            'parent_id' => 'nullable|exists:comments,id'
        ]);

        // Cek apakah komentar mengandung kata kasar
        if (FilterHelper::containsBadWords($request->comment)) {
            Comment::create([
                'post_id' => $id,
                'name' => Auth::user()->name,
                'comment' => $request->comment,
                'parent_id' => $request->parent_id,
                'status' => 'pending'
            ]);

            return back()->with('error', 'Balasan mengandung kata yang tidak diperbolehkan!');
        }

        Comment::create([
            'post_id' => $id,
            'name' => Auth::user()->name,
            'comment' => $request->comment,
            'parent_id' => $request->parent_id,
            'status' => 'approved'
        ]);


        return redirect()->back()->with('success', 'Berhasil Membalas Komentar!');
    }





















    public function contact()
    {
        $contact_item = ContactItem::where('id', 1)->first();
        return view('front.contact', compact('contact_item'));
    }

    public function contact_submit(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'comment' => 'required',
        ]);

        $admin = Admin::where('id', 1)->first();

        $subject = 'Contact Form Message';
        $message = '<b>Name:<b><br>' . $request->name . '<br><br>';
        $message .= '<b>Email:<b><br>' . $request->email . '<br><br>';
        $message .= '<b>Comment:<b><br>' . nl2br($request->comment) . '<br>';

        Mail::to($admin->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'Your message is submitted successfully. We will contact you soon.');
    }

    // End Navbar Section



    // Footer section

    public function terms()
    {
        $term_privacy_item = TermPrivacyItem::where('id', 1)->first();
        return view('front.terms', compact('term_privacy_item'));
    }

    public function privacy()
    {
        $term_privacy_item = TermPrivacyItem::where('id', 1)->first();
        return view('front.privacy', compact('term_privacy_item'));
    }

    // End Footer Section

    public function wishlist($package_id)
    {
        if (!Auth::guard('web')->check()) {
            return redirect()->route('login')->with('error', 'Please login First to add this item to your wishlist!');
        }

        $user_id = Auth::guard('web')->user()->id;

        $check = Wishlist::where('user_id', $user_id)->where('package_id', $package_id)->count();
        if ($check > 0) {
            return redirect()->back()->with('error', 'This item already added to your wishlist!');
        }

        $wishlist = new Wishlist();
        $wishlist->user_id = $user_id;
        $wishlist->package_id = $package_id;
        $wishlist->save();

        return redirect()->back()->with('success', 'Item added to your wishlist!');
    }

    public function enquery_form_submit(Request $request, $id)
    {
        $package = Package::where('id', $id)->first();
        $admin = Admin::where('id', 1)->first();

        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required',
        ]);

        $subject = 'Enquery About: ' . $package->name;
        $message = '<b>Name:</b><br>' . $request->name . '<br><br>';
        $message .= '<b>Email:</b><br>' . $request->email . '<br><br>';
        $message .= '<b>Phone:</b><br>' . $request->phone . '<br><br>';
        $message .= '<b>Message:</b><br>' . nl2br($request->message) . '<br>';

        Mail::to($admin->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'Your enquery is submitted successfully, we will contact to you soon.');
    }

    public function payment(Request $request)
    {

        $today = date('Ymd');
        $countToday = Booking::whereDate('created_at', date('Y-m-d'))->count();
        $noUrut = str_pad($countToday + 1, 7, '0', STR_PAD_LEFT);

        $faktur_no = 'TRV|' . $today . '|' . $noUrut;

        // Check the Tour Selection
        if (!$request->tour_id) {
            return redirect()->back()->with('error', 'Please select a tour First!.');
        }
        // Check the Available Seats
        $tour_data = Tour::where('id', $request->tour_id)->first();
        $total_allowed_seats = $tour_data->total_seat;

        if ($total_allowed_seats != -1) {
            $total_booked_seats = 0;
            $data = Booking::where('tour_id', $request->tour_id)
                ->where('package_id', $request->package_id)
                ->get();
            foreach ($data as $data_tour) {
                $total_booked_seats += $data_tour->total_person;
            }

            $remaining_seats = $total_allowed_seats - $total_booked_seats;

            if ($total_booked_seats + $request->total_person > $total_allowed_seats) {
                return redirect()
                    ->back()
                    ->with('error', 'Sorry! Only ' . $remaining_seats . ' seats are available for this tour. Please select another tour.');
            }
        }

        $user_id = Auth::guard('web')->user()->id;
        $package = Package::where('id', $request->package_id)->first();
        $user = User::where('id', $request->user_id)->first();
        $total_price = $request->ticket_price * $request->total_person;


        if ($request->payment_method == 'PayPal') {
            $provider = new PayPalClient();
            $provider->setApiCredentials(config('paypal'));
            $paypalToken = $provider->getAccessToken();
            $response = $provider->createOrder([
                'intent' => 'CAPTURE',
                'application_context' => [
                    'return_url' => route('paypal_success'),
                    'cancel_url' => route('paypal_cancel'),
                ],
                'purchase_units' => [
                    [
                        'amount' => [
                            'currency_code' => 'IDR',
                            'value' => $total_price,
                        ],
                    ],
                ],
            ]);
            // dd($response);
            if (isset($response['id']) && $response['id'] != '') {
                foreach ($response['links'] as $link) {
                    if ($link['rel'] == 'approve') {
                        session()->put('total_person', $request->total_person);
                        session()->put('tour_id', $request->tour_id);
                        session()->put('package_id', $request->package_id);
                        session()->put('user_id', $user_id);
                        return redirect()->away($link['href']);
                    }
                }
            } else {
                return redirect()->route('paypal_cancel');
            }
        } elseif ($request->payment_method == 'Stripe') {
            $stripe = new \Stripe\StripeClient(config('stripe.stripe_sk'));
            $response = $stripe->checkout->sessions->create([
                'line_items' => [
                    [
                        'price_data' => [
                            'currency' => 'usd',
                            'product_data' => [
                                'name' => $package->name,
                            ],
                            'unit_amount' => $total_price * 100,
                        ],
                        'quantity' => $request->total_person,
                    ],
                ],
                'mode' => 'payment',
                'success_url' => route('stripe_success') . '?session_id={CHECKOUT_SESSION_ID}',
                'cancel_url' => route('stripe_cancel'),
            ]);
            // dd($response);
            if (isset($response->id) && $response->id != '') {
                session()->put('total_person', $request->total_person);
                session()->put('tour_id', $request->tour_id);
                session()->put('package_id', $request->package_id);
                session()->put('user_id', $user_id);
                session()->put('price', $total_price);
                return redirect($response['url']);
            } else {
                return redirect()->route('stripe_cancel');
            }
        } elseif ($request->payment_method == 'Cash') {
            $obj = new Booking();
            $obj->tour_id = $request->tour_id;
            $obj->package_id = $request->package_id;
            $obj->user_id = Auth::guard('web')->user()->id;
            $obj->total_person = $request->total_person;
            $obj->paid_amount = $request->ticket_price * $request->total_person;
            $obj->payment_method = 'Cash';
            $obj->payment_status = 'Pending';
            $obj->invoice_no = $faktur_no;
            $obj->created_at = Carbon::now();
            $obj->updated_at = Carbon::now();
            $obj->save();

            return redirect()->back()->with('success', 'Payment is pending and will be successful after admin approval!');

        } elseif ($request->payment_method == 'Midtrans') {
            Config::$serverKey = 'SB-Mid-server-39zR0mT9p972NtZIVsAKw-ws';
            Config::$isProduction = env('MIDTRANS_IS_PRODUCTION') == 'true';
            Config::$is3ds = true;

            $package = Package::find($request->package_id);

            $obj = new Booking();
            $obj->order_id = null;
            $obj->tour_id = $request->tour_id;
            $obj->package_id = $request->package_id;
            $obj->user_id = Auth::guard('web')->user()->id;
            $obj->total_person = $request->total_person;
            $obj->paid_amount = $request->ticket_price * $request->total_person;
            $obj->invoice_no = $faktur_no;
            $obj->payment_method = 'Midtrans';
            $obj->payment_status = 'Pending';
            $obj->created_at = Carbon::now();
            $obj->updated_at = Carbon::now();
            $obj->save();

            $transaction = [
                'transaction_details' => [
                    'order_id' => $obj->invoice_no,
                    'gross_amount' => $obj->paid_amount,
                ],
                'item_details' => [
                    [
                        'price' => $request->ticket_price,
                        'quantity' => $request->total_person,
                        'name' => $package->name ?? 'Unknown Package',
                    ],
                ],
                'customer_details' => [
                    'name' => Auth::guard('web')->user()->name,
                    'email' => Auth::guard('web')->user()->email,
                    'phone' => Auth::guard('web')->user()->phone ?? '08123456789',
                ]
            ];

            $orderId = booking::first();
            $snapToken = Snap::getSnapToken($transaction);

            return view('front.payment.midtrans', [
                'order_id' => $orderId,
                'snap_token' => $snapToken
            ]);
        }
    }

    // public function paypal_success(Request $request)
    // {
    //     $provider = new PayPalClient();
    //     $provider->setApiCredentials(config('paypal'));
    //     $paypalToken = $provider->getAccessToken();
    //     $response = $provider->capturePaymentOrder($request->token);
    //     if (isset($response['status']) && $response['status'] == 'Completed') {
    //         // Insert data into database
    //         $obj = new Booking();
    //         $obj->package_id = session()->get('package_id');
    //         $obj->tour_id = session()->get('tour_id');
    //         $obj->user_id = session()->get('user_id');
    //         $obj->total_person = session()->get('total_person');
    //         $obj->paid_amount = $response['purchase_units'][0]['payments']['captures'][0]['amount']['value'];
    //         $obj->payment_method = 'PayPal';
    //         $obj->payment_status = $response['status'];
    //         $obj->invoice_no = time();
    //         $obj->save();

    //         // $obj->payment_id = $response['id'];
    //         // $obj->payer_name = $response['payer']['name']['given_name'];
    //         // $obj->payer_email = $response['payer']['email_address'];

    //         unset($_SESSION['tour_id']);
    //         unset($_SESSION['package_id']);
    //         unset($_SESSION['user_id']);
    //         unset($_SESSION['total_person']);

    //         return redirect()->back()->with('success', 'Payment is successful!');
    //     } else {
    //         return redirect()->route('paypal_cancel');
    //     }
    // }

    // public function paypal_cancel()
    // {
    //     return redirect()->back()->with('error', 'Payment is cancelled!');
    // }

    public function stripe_success(Request $request)
    {
        if (isset($request->session_id)) {
            $stripe = new \Stripe\StripeClient(config('stripe.stripe_sk'));
            $response = $stripe->checkout->sessions->retrieve($request->session_id);

            $today = date('Ymd');
            $countToday = Booking::whereDate('created_at', date('Y-m-d'))->count();
            $noUrut = str_pad($countToday + 1, 7, '0', STR_PAD_LEFT);

            $faktur_no = 'TRV|' . $today . '|' . $noUrut;

            // Insert data into database
            $obj = new Booking();
            $obj->tour_id = session()->get('tour_id');
            $obj->package_id = session()->get('package_id');
            $obj->user_id = session()->get('user_id');
            $obj->total_person = session()->get('total_person');
            $obj->paid_amount = session()->get('price');
            $obj->payment_method = 'Stripe';
            $obj->payment_status = 'Completed';
            $obj->invoice_no = $faktur_no;
            $obj->created_at = Carbon::now();
            $obj->updated_at = Carbon::now();
            $obj->save();

            unset($_SESSION['tour_id']);
            unset($_SESSION['package_id']);
            unset($_SESSION['user_id']);
            unset($_SESSION['total_person']);
            unset($_SESSION['paid_amount']);

            return redirect()->back()->with('success', 'Payment is successful!');
        } else {
            return redirect()->route('stripe_cancel');
        }
    }

    public function stripe_cancel()
    {
        return redirect()->back()->with('error', 'Payment is cancelled!');
    }




    public function MidtransOrder(Request $request)
    {
        $result = $request->input('result');

            if (!$result) {
                return response()->json(['message' => 'Result not found.'], 400);
            }

            $order_id = $result['order_id'] ?? null;
            $transaction_status = $result['transaction_status'] ?? 'unknown';

            $booking = Booking::where('invoice_no', $order_id)->first();

            if (!$booking) {
                return response()->json(['message' => 'Payment not found.'], 404);
            }

            if ($transaction_status == 'capture') {
                $booking->payment_status = 'Completed';
            } elseif ($transaction_status == 'settlement') {
                $booking->payment_status = 'Completed';
            } elseif ($transaction_status == 'pending') {
                $booking->payment_status = 'Pending';
            } elseif (in_array($transaction_status, ['deny', 'cancel', 'expire'])) {
                $booking->payment_status = 'Failed';
            }

            $booking->payment_method = 'Midtrans';
            $booking->update();

            return response()->json(['message' => 'Payment Confirm Successfully']);
    }



    public function subscriber_submit(Request $request)
    {
        $request->validate([
            'email' => 'required|email|unique:subscribers,email',
        ]);

        $token = hash('sha256', time());

        $obj = new Subscriber();
        $obj->email = $request->email;
        $obj->token = $token;
        $obj->status = 'Pending';
        $obj->save();

        $verification_link = route('subscriber_verify', ['email' => $request->email, 'token' => $token]);

        $subject = 'Subscriber Verification';
        $message = 'Please click the following link to verify your email address:<br><a href="' . $verification_link . '">Verify Email</a>';

        Mail::to($request->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'Thank you for subscribing. Please check your email for confirm verification.');
    }

    public function subscriber_verify($email, $token)
    {
        $subscriber = Subscriber::where('email', $email)->where('token', $token)->first();
        if (!$subscriber) {
            return redirect()->route('home');
        }
        $subscriber->token = '';
        $subscriber->status = 'Active';
        $subscriber->update();

        return redirect()->back()->with('success', 'Your Subcribtion is successfull.');
    }

    public function post($slug)
    {
        $categories = BlogCategory::orderBy('name', 'asc')->get();
        $post = Post::with('blog_category')->where('slug', $slug)->first();
        $latest_posts = Post::with('blog_category')->orderBy('id', 'desc')->get()->take(5);
        return view('front.post', compact('post', 'categories', 'latest_posts'));
    }

    public function category($slug)
    {
        $category = BlogCategory::where('slug', $slug)->first();
        $posts = Post::with('blog_category')
            ->where('blog_category_id', $category->id)
            ->orderBy('id', 'desc')
            ->paginate(9);
        return view('front.category', compact('posts', 'category'));
    }

    public function review_submit(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'rating' => 'required',
            'comment' => 'required',
        ]);

        $obj = new Review();
        $obj->user_id = Auth::guard('web')->user()->id;
        $obj->package_id = $request->package_id;
        $obj->rating = $request->rating;
        $obj->comment = $request->comment;
        $obj->save();

        $package_data = Package::where('id', $request->package_id)->first();
        $package_data->total_rating = $package_data->total_rating + 1;
        $package_data->total_score = $package_data->total_score + $request->rating;
        $package_data->update();

        return redirect()->back()->with('success', 'Review is submitted successfully!');
    }

    public function registration()
    {
        return view('front.registration');
    }

    public function registration_submit(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8',
            'retype_password' => 'required|same:password|min:8',
        ]);

        $token = hash('sha256', time());

        $user = new User();

        if (Hash::check($request->password, $user->password)) {
            return redirect()->back()->with('error', 'Password sudah digunakan!');
        }

        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->token = $token;
        $user->save();

        $verification_link = route('registration_verify', ['email' => $request->email, 'token' => $token]);

        $subject = 'User Account Verification';
        $message = 'Please click the following link to verify your email address:<br><a href="' . $verification_link . '">Verify Email</a>';

        Mail::to($request->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'Registration is Successful, please check your email for confirm verification.');
    }

    public function registration_verify($email, $token)
    {
        $user = User::where('token', $token)->where('email', $email)->first();
        if (!$user) {
            return redirect()->route('login');
        }
        $user->token = '';
        $user->status = 1;
        $user->update();

        return redirect()->route('login')->with('success', 'Your email is verified. You can login now.');
    }

    public function login(Request $request)
    {
        // Simpan URL sebelumnya ke dalam session
        $request->session()->put('url_sebelumnya', url()->previous());
        return view('front.login');
    }

    public function login_submit(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:8',
        ]);

        $check = $request->all();
        $data = [
            'email' => $check['email'],
            'password' => $check['password'],
            'status' => 1,
        ];

        if (Auth::guard('web')->attempt($data)) {
            activity()->causedBy(Auth::guard('web')->user())->event('login')->log('User ' . Auth::guard('web')->user()->name . ' Melakukan login');

            // Ambil URL sebelumnya dari session
            $previousUrl = $request->session()->get('url_sebelumnya', 'user_dashboard');

            // Cek apakah URL sebelumnya adalah URL login
            if (url()->previous() === route('login')) {
                // Jika URL sebelumnya adalah login, arahkan ke dashboard atau URL default
                return redirect()->intended('user/dashboard')->with('success', 'Login Successful');
            }

            // Jika tidak, arahkan ke URL sebelumnya
            return redirect()->intended($previousUrl)->with('success', 'Login Successful');

        } else {
            return redirect()->back()->with('error', 'The information you entered is incorrect! Please try again!');
        }
    }

    public function logout()
    {
        activity()->causedBy(Auth::guard('web')->user())->event('logout')->log('User ' . Auth::guard('web')->user()->name . ' Melakukan logout');
        Auth::guard('web')->logout();
        return redirect()->route('home')->with('success', 'Logout Successful');
    }

    public function forget_password()
    {
        return view('front.forget-passsword');
    }

    public function forget_password_submit(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email'],
        ]);

        $admin = User::where('email', $request->email)->first();
        if (!$admin) {
            return redirect()->back()->with('error', 'Email is not found');
        }

        $token = hash('sha256', time());
        $admin->token = $token;
        $admin->update();

        $reset_link = route('reset_password', ['token' => $token, 'email' => $request->email]);
        $subject = 'Password Reset';
        $message = 'To reset password, please click on the link below:<br>';
        $message .= "<a href='" . $reset_link . "'>Click Here</a>";

        Mail::to($request->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'We have sent a password reset link to your email.');
    }

    public function reset_password($token, $email)
    {
        $user = User::where('token', $token)->where('email', $email)->first();
        if (!$user) {
            return redirect()->route('login')->with('error', 'Token or email is not correct');
        }

        return view('front.reset-password', compact('token', 'email'));
    }

    public function reset_password_submit(Request $request, $token, $email)
    {
        $request->validate([
            'password' => ['required'],
            'confirm_password' => ['required', 'same:password'],
        ]);

        // Cari user berdasarkan token dan email
        $user = User::where('token', $request->token)
                    ->where('email', $request->email)
                    ->first();

        if (!$user) {
            return redirect()->back()->with('error', 'Invalid token or email.');
        }

        // Cek apakah password baru sama dengan password lama
        if (Hash::check($request->password, $user->password)) {
            return redirect()->back()->with('error', 'Password baru tidak boleh sama dengan password lama.');
        }

        // Update password baru
        $user->password = Hash::make($request->password);
        $user->token = ''; // Kosongkan token setelah reset password
        $user->save();

        return redirect()->route('login')->with('success', 'Password berhasil direset. Silakan login.');
    }
}
