<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\AccessHelper;
use App\Http\Controllers\Controller;
use App\Mail\Websitemail;
use App\Models\admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Log;
use Spatie\Activitylog\Models\Activity;

class AdminAuthController extends Controller
{
    public function login()
    {
        return view('admin.auth2.login');
    }

    public function login_submit(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);

        $check = $request->all();
        $data = [
            'email' => $check['email'],
            'password' => $check['password'],
        ];

        if (Auth::guard('admin')->attempt($data)) {
            $admin = Auth::guard('admin')->user();

            $menuRoutes = [
                'admin_dashboard',
                'admin.laporan.pemesanan',
                'admin_setting_index',
                'admin_slider_index',
                'admin_welcome_item_index',
                'admin_feature_index',
                'admin_counter_item_index',
                'admin_testimonial_index',
                'admin_team_member_index',
                'admin_faq_index',
                'admin_blog_category_index',
                'admin_post_index',
                'admin_destination_index',
                'admin_package_index',
                'admin_review_index',
                'comment.index',
                'admin_tour_index',
                'admin_subscribers',
                'admin_subscriber_send_email',
                'admin_message',
                'admin_users',
                'sponsor_index',
                'admin_admins',
                'admin_home_page_item_index',
                'admin_about_item_index',
                'admin_contact_item_index',
                'admin_term_privacy_item_index',
                'log.admin',
                'log.user',
            ];

            $accessibleRoute = AccessHelper::getFirstAccessibleRoute($admin, $menuRoutes);

            if ($accessibleRoute) {
                activity()
                    ->causedBy($admin)
                    ->event('login')
                    ->log('Admin ' . $admin->name . ' melakukan login');

                return redirect()->route($accessibleRoute)->with('success', 'Login berhasil dan dialihkan ke halaman yang diizinkan.');
            } else {
                return redirect()->route('admin_login')->with('error', 'Login gagal karena Anda tidak memiliki akses apapun.');
            }
        } else {
            return redirect()->route('admin_login')->with('error', 'Email atau password salah!');
        }
    }

    public function logout()
    {
        activity()->causedBy(Auth::guard('admin')->user())->event('logout')->log('Admin ' . Auth::guard('admin')->user()->name . ' Melakukan logout');
        Auth::guard('admin')->logout();
        return redirect()->route('admin_login')->with('success', 'Logout is successful!');
    }

    public function profile()
    {
        return view('admin.profile.profile');
    }

    public function profile_submit(Request $request)
    {
        $request->validate([
            'name' => ['required'],
            'email' => ['required', 'email'],
        ]);

        $admin = Admin::where('id', Auth::guard('admin')->user()->id)->first();

        if ($request->photo) {
            $request->validate([
                'photo' => 'mimes:jpeg,png,jpg,gif','max:2048',
            ]);

            if ($admin->photo) {
                unlink(public_path('uploads/').$admin->photo);
            }

            $final_name = 'admin_' . time() . '.' . $request->photo->extension();
            $request->photo->move(public_path('uploads'), $final_name);
            $admin->photo = $final_name;
        }

        $request->validate([
            'password' => 'nullable|min:8',
            'confirm_password' => 'nullable|required_with:password|same:password|min:8',
        ]);

        if ($request->password) {
            // Cek apakah password baru sama dengan password lama
            if (Hash::check($request->password, $admin->password)) {
                return redirect()->back()->with('error', 'Password baru tidak boleh sama dengan password lama.');
            }

            // Jika berbeda, update password baru
            $admin->password = Hash::make($request->password);
            $admin->save();
        }

        // if ($request->password) {
        //     $request->validate([
        //         'password' => 'required|min:8',
        //         'confirm_password' => 'required|same:password|min:8',
        //     ]);

        //     $admin->password = Hash::make($request->password);
        // }

        // Ambil admin yang akan diperbarui
        $admin = Admin::findOrFail(Auth::guard('admin')->user()->id);

        // Simpan data lama
        $oldData = $admin->getAttributes();

        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->save();

        // Ambil data baru
        $newData = $admin->getAttributes();

        // Format log
        $logData = [
            'attributes' => $newData,
            'old' => $oldData,
        ];

        // Simpan log menggunakan insert
        Activity::insert([
            'causer_id' => $admin->id,
            'causer_type' => 'App\Models\Admin',
            'log_name' => 'default',
            'event' => 'updated',
            'subject_type' => 'App\Models\Admin',
            'subject_id' => $admin->id,
            'description' => 'Admin Mengedit Profile.',
            'properties' => json_encode($logData), // Simpan dalam format JSON
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->back()->with('success', 'Profile is Updated!');
    }

    public function forget_password()
    {
        return view('admin.auth2.forget-password');
    }

    public function forget_password_submit(Request $request)
    {
        $request->validate([
            'email' => ['required', 'email'],
        ]);

        $admin = Admin::where('email', $request->email)->first();
        if (!$admin) {
            return redirect()->back()->with('error', 'Email is not found');
        }

        $token = hash('sha256', time());
        $admin->token = $token;
        $admin->update();

        $reset_link = url('admin/reset-password/' . $token . '/' . $request->email);
        $subject = 'Password Reset';
        $message = 'To reset password, please click on the link below:<br>';
        $message .= "<a href='" . $reset_link . "'>Click Here</a>";

        Mail::to($request->email)->send(new Websitemail($subject, $message));

        return redirect()->back()->with('success', 'We have sent a password reset link to your email. Please check your email. If you do not find the email in your inbox, please check your spam folder.');
    }

    public function reset_password($token, $email)
    {
        $admin = Admin::where('token', $token)->where('email', $email)->first();
        if (!$admin) {
            return redirect()->route('admin_login')->with('error', 'Token or email is not correct');
        }

        return view('admin.auth2.reset-password', compact('token', 'email'));
    }

    public function reset_password_submit(Request $request, $token, $email)
    {
        $request->validate([
            'password' => ['required'],
            'confirm_password' => ['required', 'same:password'],
        ]);

        // Cari user berdasarkan token dan email
        $user = Admin::where('token', $request->token)
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

        return redirect()->route('admin_login')->with('success', 'Password berhasil direset. Silakan login.');
    }
}
