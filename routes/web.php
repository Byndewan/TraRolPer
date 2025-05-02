<?php

use App\Http\Controllers\Admin\AdminAboutItemController;
use App\Http\Controllers\Admin\AdminAmenityController;
use App\Http\Controllers\Admin\AdminAuthController;
use App\Http\Controllers\Admin\AdminBlogCategoryController;
use App\Http\Controllers\Admin\AdminBookingController;
use App\Http\Controllers\Admin\AdminCommentController;
use App\Http\Controllers\Admin\AdminContactItemController;
use App\Http\Controllers\Admin\AdminCounterItemController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Admin\AdminDestinationController;
use App\Http\Controllers\Admin\AdminFaqController;
use App\Http\Controllers\Admin\AdminFeatureController;
use App\Http\Controllers\Admin\AdminHomeItemController;
use App\Http\Controllers\Admin\AdminPackageController;
use App\Http\Controllers\Admin\AdminPostController;
use App\Http\Controllers\Admin\AdminReviewController;
use App\Http\Controllers\Admin\AdminsController;
use App\Http\Controllers\Admin\AdminSettingController;
use App\Http\Controllers\Admin\AdminSliderController;
use App\Http\Controllers\Admin\AdminSponsorController;
use App\Http\Controllers\Admin\AdminSubscriberController;
use App\Http\Controllers\Admin\AdminTeamMemberController;
use App\Http\Controllers\Admin\AdminTermPrivacyItemController;
use App\Http\Controllers\Admin\AdminTestimonialController;
use App\Http\Controllers\Admin\adminTourController;
use App\Http\Controllers\Admin\AdminTrashController;
use App\Http\Controllers\Admin\AdminUserController;
use App\Http\Controllers\Admin\AdminWelcomeItemController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Front\FrontController;
use App\Http\Controllers\LogActivity\LogActivityController;
use App\Http\Controllers\User\UserController;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Spatie\Permission\Middleware\PermissionMiddleware;
use Spatie\Permission\Middleware\RoleMiddleware;
use Spatie\Permission\Middleware\RoleOrPermissionMiddleware;

Route::middleware([
    'permission' => PermissionMiddleware::class,
    'role' => RoleMiddleware::class,
    'role_or_permission' => RoleOrPermissionMiddleware::class,
]);


// Pages
Route::get('/', [FrontController::class, 'home'])->name('home');
Route::get('/about', [FrontController::class, 'about'])->name('about');
Route::get('/contact', [FrontController::class, 'contact'])->name('contact');
Route::post('/contact/submit', [FrontController::class, 'contact_submit'])->name('contact_submit');
Route::get('/faqs', [FrontController::class, 'faq'])->name('faq');
Route::get('/team-members', [FrontController::class, 'team_members'])->name('team_members');
Route::get('/team-member/{slug}', [FrontController::class, 'team_member'])->name('team_member');
Route::get('/blog', [FrontController::class, 'blog'])->name('blog');
Route::get('/post/{slug}', [FrontController::class, 'post'])->name('post');
Route::get('/category/{slug}', [FrontController::class, 'category'])->name('category');
Route::get('/destinations', [FrontController::class, 'destinations'])->name('destinations');
Route::get('/destination/{slug}', [FrontController::class, 'destination'])->name('destination');
Route::get('/packages', [FrontController::class, 'packages'])->name('packages');
Route::get('/package/{slug}', [FrontController::class, 'package'])->name('package');
Route::post('/payment', [FrontController::class, 'payment'])->name('payment');

Route::post('/post/{id}/comment', [FrontController::class, 'CommentStore'])->name('comment.store');
Route::post('/post/{id}/reply', [FrontController::class, 'ReplyStore'])->name('reply.store');

Route::post('/midtrans_order', [FrontController::class, 'MidtransOrder'])->name('midtrans_order');


Route::get('/payment/cuccess', function (Request $request) {
    return view('front.payment.success');
})->name('payment_succ');

Route::get('/payment/pending', function (Request $request) {
    return view('front.payment.pending');
});


Route::get('/payment/failed', function (Request $request) {
    return view('front.payment.fail');
});


// Route::get('/admin/dashboard', [AdminDashboardController::class, 'dashboard'])->name('admin.dashboard.booking');


Route::post('/enquery/submit/{id}', [FrontController::class, 'enquery_form_submit'])->name('enquery_form_submit');
Route::post('/review/submit', [FrontController::class, 'review_submit'])->name('review_submit');
Route::get('/wishlist/{package_id}', [FrontController::class, 'wishlist'])->name('wishlist');
Route::get('/term-of-use', [FrontController::class, 'terms'])->name('terms');
Route::get('/privacy-policy', [FrontController::class, 'privacy'])->name('privacy');


// Route::post('/payment/checkout', [FrontController::class, 'checkout']);

Route::get('/paypal/success', [FrontController::class, 'paypal_success'])->name('paypal_success');
Route::get('/paypal/cancel', [FrontController::class, 'paypal_cancel'])->name('paypal_cancel');


Route::get('/stripe/success', [FrontController::class, 'stripe_success'])->name('stripe_success');
Route::get('/stripe/cancel', [FrontController::class, 'stripe_cancel'])->name('stripe_cancel');


// User Auth
Route::get('/registration', [FrontController::class, 'registration'])->name('registration');
Route::post('/registration', [FrontController::class, 'registration_submit'])->name('registration_submit');
Route::get('/registration-verify-email/{email}/{token}', [FrontController::class, 'registration_verify'])->name('registration_verify');
Route::get('/login', [FrontController::class, 'login'])->name('login');
Route::post('/login', [FrontController::class, 'login_submit'])->name('login_submit');
Route::get('/forget-password', [FrontController::class, 'forget_password'])->name('forget_password');
Route::post('/forget_password_submit', [FrontController::class, 'forget_password_submit'])->name('forget_password_submit');
Route::get('/logout', [FrontController::class, 'logout'])->name('logout');
Route::get('/reset-password/{token}/{email}', [FrontController::class, 'reset_password'])->name('reset_password');
Route::post('/reset-password/{token}/{email}', [FrontController::class, 'reset_password_submit'])->name('reset_password_submit');
Route::post('/subscriber-submit', [FrontController::class, 'subscriber_submit'])->name('subscriber_submit');
Route::get('/subscriber-verify/{email}/{token}', [FrontController::class, 'subscriber_verify'])->name('subscriber_verify');

// User
Route::middleware('auth')
    ->prefix('user')
    ->group(function () {
        Route::get('/dashboard', [UserController::class, 'dashboard'])->name('user_dashboard');
        Route::get('/booking', [UserController::class, 'booking'])->name('user_booking');
        Route::get('/review', [UserController::class, 'review'])->name('user_review');
        Route::get('/invoice/{invoice_no}',[UserController::class,'invoice'])->name('user_invoice');
        Route::get('/profile', [UserController::class, 'profile'])->name('user_profile');
        Route::post('/profile', [UserController::class, 'profile_submit'])->name('user_profile_submit');
        Route::get('/wishlist', [UserController::class, 'wishlist'])->name('user_wishlist');
        Route::get('/wishlist-delete/{id}', [UserController::class, 'wishlist_delete'])->name('user_wishlist_delete');
        Route::get('/message', [UserController::class, 'message'])->name('user_message');
        Route::get('/message-start', [UserController::class, 'message_start'])->name('user_message_start');
        Route::post('/message-submit', [UserController::class, 'message_submit'])->name('user_message_submit');
    });




// Admin
Route::middleware(['admin:admin'])
    ->prefix('admin')
    ->group(function () {
        Route::get('/dashboard', [AdminDashboardController::class, 'dashboard'])->name('admin_dashboard')->middleware('permission:lihat.dashboard,admin');

        Route::get('/booking/report', [AdminBookingController::class, 'index'])->name('admin.laporan.pemesanan')->middleware('permission:lihat.laporan,admin');

        Route::get('/booking/filter', [AdminBookingController::class, 'filter'])->name('admin_booking_filter');

        Route::get('/admin/bookings/export/pdf', [AdminBookingController::class, 'exportPdf'])->name('admin.bookings.export.pdf')->middleware('permission:simpanpdf.laporan,admin');

        Route::get('/admin/bookings/export/excel', [AdminBookingController::class, 'exportExcel'])->name('admin.bookings.export.excel')->middleware('permission:simpanexcel.laporan,admin');

        // Profile Section
        Route::get('/profile', [AdminAuthController::class, 'profile'])->name('admin_profile');
        Route::post('/profile', [AdminAuthController::class, 'profile_submit'])->name('admin_profile_submit');

        // Sliders Section
        Route::get('/sliders/index', [AdminSliderController::class, 'index'])->name('admin_slider_index')->middleware('permission:lihat.slider,admin');

        Route::get('/sliders/create', [AdminSliderController::class, 'create'])->name('admin_slider_create')->middleware('permission:tambah.slider,admin');

        Route::post('/sliders/create', [AdminSliderController::class, 'create_submit'])->name('admin_slider_create_submit');

        Route::get('/sliders/edit/{id}', [AdminSliderController::class, 'edit'])->name('admin_slider_edit')->middleware('permission:edit.slider,admin');

        Route::post('/sliders/edit/{id}', [AdminSliderController::class, 'edit_submit'])->name('admin_slider_edit_submit');
        Route::get('/sliders/delete/{id}', [AdminSliderController::class, 'delete'])->name('admin_slider_delete')->middleware('permission:hapus.slider,admin');

        // Welcome Items Section
        Route::get('/welcome-items/index', [AdminWelcomeItemController::class, 'index'])->name('admin_welcome_item_index')->middleware('permission:lihat.welcome,admin');
        Route::post('/welcome-item/update', [AdminWelcomeItemController::class, 'update'])->name('admin_welcome_item_update');

        // Features Section
        Route::get('/features/index', [AdminFeatureController::class, 'index'])->name('admin_feature_index')->middleware('permission:lihat.fitur,admin');
        Route::get('/features/create', [AdminFeatureController::class, 'create'])->name('admin_feature_create')->middleware('permission:tambah.fitur,admin');
        Route::post('/features/create', [AdminFeatureController::class, 'create_submit'])->name('admin_feature_create_submit');
        Route::get('/features/edit/{id}', [AdminFeatureController::class, 'edit'])->name('admin_feature_edit')->middleware('permission:edit.fitur,admin');
        Route::post('/features/edit/{id}', [AdminFeatureController::class, 'edit_submit'])->name('admin_feature_edit_submit');
        Route::get('/features/delete/{id}', [AdminFeatureController::class, 'delete'])->name('admin_feature_delete')->middleware('permission:hapus.fitur,admin');

        // Counter Items Section
        Route::get('/counter-items/index', [AdminCounterItemController::class, 'index'])->name('admin_counter_item_index')->middleware('permission:lihat.counter,admin');
        Route::post('/counter-item/update', [AdminCounterItemController::class, 'update'])->name('admin_counter_item_update');

        // Testimonials Section
        Route::get('/testimonials/index', [AdminTestimonialController::class, 'index'])->name('admin_testimonial_index')->middleware('permission:lihat.testimoni,admin');
        Route::get('/testimonials/create', [AdminTestimonialController::class, 'create'])->name('admin_testimonial_create')->middleware('permission:tambah.testimoni,admin');
        Route::post('/testimonials/create', [AdminTestimonialController::class, 'create_submit'])->name('admin_testimonial_create_submit');
        Route::get('/testimonials/edit/{id}', [AdminTestimonialController::class, 'edit'])->name('admin_testimonial_edit')->middleware('permission:edit.testimoni,admin');
        Route::post('/testimonials/edit/{id}', [AdminTestimonialController::class, 'edit_submit'])->name('admin_testimonial_edit_submit');
        Route::get('/testimonials/delete/{id}', [AdminTestimonialController::class, 'delete'])->name('admin_testimonial_delete')->middleware('permission:hapus.testimoni,admin');

        // Team Members Section
        Route::get('/team-members/index', [AdminTeamMemberController::class, 'index'])->name('admin_team_member_index')->middleware('permission:lihat.anggota,admin');
        Route::get('/team-members/create', [AdminTeamMemberController::class, 'create'])->name('admin_team_member_create')->middleware('permission:tambah.anggota,admin');
        Route::post('/team-members/create', [AdminTeamMemberController::class, 'create_submit'])->name('admin_team_member_create_submit');
        Route::get('/team-members/edit/{id}', [AdminTeamMemberController::class, 'edit'])->name('admin_team_member_edit')->middleware('permission:edit.anggota,admin');
        Route::post('/team-members/edit/{id}', [AdminTeamMemberController::class, 'edit_submit'])->name('admin_team_member_edit_submit');
        Route::get('/team-members/delete/{id}', [AdminTeamMemberController::class, 'delete'])->name('admin_team_member_delete')->middleware('permission:hapus.anggota,admin');

        // Faqs Section
        Route::get('/faqs/index', [AdminFaqController::class, 'index'])->name('admin_faq_index')->middleware('permission:lihat.pertanyaan,admin');
        Route::get('/faqs/create', [AdminFaqController::class, 'create'])->name('admin_faq_create')->middleware('permission:tambah.pertanyaan,admin');
        Route::post('/faqs/create', [AdminFaqController::class, 'create_submit'])->name('admin_faq_create_submit');
        Route::get('/faqs/edit/{id}', [AdminFaqController::class, 'edit'])->name('admin_faq_edit')->middleware('permission:edit.pertanyaan,admin');
        Route::post('/faqs/edit/{id}', [AdminFaqController::class, 'edit_submit'])->name('admin_faq_edit_submit');
        Route::get('/faqs/delete/{id}', [AdminFaqController::class, 'delete'])->name('admin_faq_delete')->middleware('permission:hapus.pertanyaan,admin');

        // Blog Categories Section
        Route::get('/blog-categories/index', [AdminBlogCategoryController::class, 'index'])->name('admin_blog_category_index')->middleware('permission:lihat.blogKategori,admin');
        Route::get('/blog-categories/create', [AdminBlogCategoryController::class, 'create'])->name('admin_blog_category_create')->middleware('permission:tambah.blogKategori,admin');
        Route::post('/blog-categories/create', [AdminBlogCategoryController::class, 'create_submit'])->name('admin_blog_category_create_submit');
        Route::get('/blog-categories/edit/{id}', [AdminBlogCategoryController::class, 'edit'])->name('admin_blog_category_edit')->middleware('permission:edit.blogKategori,admin');
        Route::post('/blog-categories/edit/{id}', [AdminBlogCategoryController::class, 'edit_submit'])->name('admin_blog_category_edit_submit');
        Route::get('/blog-categories/delete/{id}', [AdminBlogCategoryController::class, 'delete'])->name('admin_blog_category_delete')->middleware('permission:hapus.blogKategori,admin');

        // Posts Section
        Route::get('/posts/index', [AdminPostController::class, 'index'])->name('admin_post_index')->middleware('permission:lihat.blogPost,admin');
        Route::get('/posts/create', [AdminPostController::class, 'create'])->name('admin_post_create')->middleware('permission:tambah.blogPost,admin');
        Route::post('/posts/create', [AdminPostController::class, 'create_submit'])->name('admin_post_create_submit');
        Route::get('/posts/edit/{id}', [AdminPostController::class, 'edit'])->name('admin_post_edit')->middleware('permission:edit.blogPost,admin');
        Route::post('/posts/edit/{id}', [AdminPostController::class, 'edit_submit'])->name('admin_post_edit_submit');
        Route::get('/posts/delete/{id}', [AdminPostController::class, 'delete'])->name('admin_post_delete')->middleware('permission:hapus.blogPost,admin');

        // Destinations Section
        Route::get('/destinations/index', [AdminDestinationController::class, 'index'])->name('admin_destination_index')->middleware('permission:lihat.destinasi,admin');
        Route::get('/destinations/create', [AdminDestinationController::class, 'create'])->name('admin_destination_create')->middleware('permission:tambah.destinasi,admin');
        Route::post('/destinations/create', [AdminDestinationController::class, 'create_submit'])->name('admin_destination_create_submit');
        Route::get('/destinations/edit/{id}', [AdminDestinationController::class, 'edit'])->name('admin_destination_edit')->middleware('permission:edit.destinasi,admin');
        Route::post('/destinations/edit/{id}', [AdminDestinationController::class, 'edit_submit'])->name('admin_destination_edit_submit');
        Route::get('/destinations/delete/{id}', [AdminDestinationController::class, 'delete'])->name('admin_destination_delete')->middleware('permission:hapus.destinasi,admin');

        // Destinations Photo Section
        Route::get('/destination-photos/{id}', [AdminDestinationController::class, 'destination_photos'])->name('destination_photos')->middleware('permission:lihat.galeryFoto.destinasi,admin');
        Route::post('/destination-photos-submit/{id}', [AdminDestinationController::class, 'destination_photo_submit'])->name('destination_photo_submit');
        Route::get('/destination-photo-delete/{id}', [AdminDestinationController::class, 'destination_photo_delete'])->name('destination_photo_delete')->middleware('permission:hapus.galeryFoto.destinasi,admin');

        // Destinations Video Section
        Route::get('/destination-videos/{id}', [AdminDestinationController::class, 'destination_videos'])->name('destination_videos')->middleware('permission:lihat.galeryVideo.destinasi,admin');
        Route::post('/destination-videos-submit/{id}', [AdminDestinationController::class, 'destination_video_submit'])->name('destination_video_submit');
        Route::get('/destination-video-delete/{id}', [AdminDestinationController::class, 'destination_video_delete'])->name('destination_video_delete')->middleware('permission:hapus.galeryVideo.destinasi,admin');

        // Packages Section
        Route::get('/packages/index', [AdminPackageController::class, 'index'])->name('admin_package_index')->middleware('permission:lihat.paket,admin');
        Route::get('/packages/create', [AdminpackageController::class, 'create'])->name('admin_package_create')->middleware('permission:tambah.paket,admin');
        Route::post('/packages/create', [AdminpackageController::class, 'create_submit'])->name('admin_package_create_submit');
        Route::get('/packages/edit/{id}', [AdminpackageController::class, 'edit'])->name('admin_package_edit')->middleware('permission:edit.paket,admin');
        Route::post('/packages/edit/{id}', [AdminpackageController::class, 'edit_submit'])->name('admin_package_edit_submit');
        Route::get('/packages/delete/{id}', [AdminpackageController::class, 'delete'])->name('admin_package_delete')->middleware('permission:hapus.paket,admin');

        // Package Amenity Section
        Route::get('/package-amenities/{id}', [AdminPackageController::class, 'package_amenities'])->name('package_amenities')->middleware('permission:lihat.fasilitas.paket,admin');
        Route::post('/package-amenities-submit/{id}', [AdminPackageController::class, 'package_amenities_submit'])->name('package_amenities_submit');
        Route::get('/package-amenities-delete/{id}', [AdminPackageController::class, 'package_amenities_delete'])->name('package_amenities_delete')->middleware('permission:hapus.fasilitas,admin');



        // Package Amenity Photo Section
        Route::get('/package-amenities/{package_id}/photos/{amenity_id}', [AdminPackageController::class, 'package_amenity_photos'])->name('package_amenity_photos')->middleware('permission:lihat.galery.fasilitas,admin');
        Route::post('/package-amenities-submit/{package_id}/photos/{amenity_id}', [AdminPackageController::class, 'package_amenity_photos_submit'])->name('package_amenity_photos_submit');
        Route::get('/package-amenities/photos/delete/{id}', [AdminPackageController::class, 'package_amenity_photos_delete'])->name('package_amenity_photos_delete')->middleware('permission:hapus.galery.fasilitas,admin');


        // Package itinerary Section
        Route::get('/package-itineraries/{id}', [AdminPackageController::class, 'package_itineraries'])->name('package_itineraries')->middleware('permission:lihat.rencana,admin');
        Route::post('/package-itineraries-submit/{id}', [AdminPackageController::class, 'package_itineraries_submit'])->name('package_itineraries_submit');
        Route::get('/package-itineraries-delete/{id}', [AdminPackageController::class, 'package_itineraries_delete'])->name('package_itineraries_delete')->middleware('permission:hapus.rencana,admin');

        // Package Photos Section
        Route::get('/package-photos/{id}', [AdminPackageController::class, 'package_photos'])->name('package_photos')->middleware('permission:lihat.galeryFoto.paket,admin');
        Route::post('/package-photos-submit/{id}', [AdminPackageController::class, 'package_photos_submit'])->name('package_photos_submit');
        Route::get('/package-photos-delete/{id}', [AdminPackageController::class, 'package_photos_delete'])->name('package_photos_delete')->middleware('permission:hapus.galeryFoto.paket,admin');

        // Package Videos Section
        Route::get('/package-videos/{id}', [AdminPackageController::class, 'package_videos'])->name('package_videos')->middleware('permission:lihat.galeryVideo.paket,admin');
        Route::post('/package-videos-submit/{id}', [AdminPackageController::class, 'package_videos_submit'])->name('package_videos_submit');
        Route::get('/package-videos-delete/{id}', [AdminPackageController::class, 'package_videos_delete'])->name('package_videos_delete')->middleware('permission:hapus.galeryVideo.paket,admin');

        // Package Faqs Section
        Route::get('/package-faqs/{id}', [AdminPackageController::class, 'package_faqs'])->name('package_faqs')->middleware('permission:lihat.pertanyaan.paket,admin');
        Route::post('/package-faqs-submit/{id}', [AdminPackageController::class, 'package_faqs_submit'])->name('package_faqs_submit');
        Route::get('/package-faqs-delete/{id}', [AdminPackageController::class, 'package_faqs_delete'])->name('package_faqs_delete')->middleware('permission:hapus.pertanyaan.paket,admin');

        // Amenities Section
        // Route::get('/amenities/index', [AdminAmenityController::class, 'index'])->name('admin_amenity_index')->middleware('permission:lihat.fasilitas.paket,admin');
        // Route::get('/amenities/create', [AdminAmenityController::class, 'create'])->name('admin_amenity_create');
        // Route::post('/amenities/create', [AdminAmenityController::class, 'create_submit'])->name('admin_amenity_create_submit');
        // Route::get('/amenities/edit/{id}', [AdminAmenityController::class, 'edit'])->name('admin_amenity_edit');
        // Route::post('/amenities/edit/{id}', [AdminAmenityController::class, 'edit_submit'])->name('admin_amenity_edit_submit');
        // Route::get('/amenities/delete/{id}', [AdminAmenityController::class, 'delete'])->name('admin_amenity_delete');

        // Tours Section
        Route::get('/tours/index', [adminTourController::class, 'index'])->name('admin_tour_index')->middleware('permission:lihat.tur,admin');
        Route::get('/tours/create', [AdminTourController::class, 'create'])->name('admin_tour_create')->middleware('permission:tambah.tur,admin');
        Route::post('/tours/create', [AdminTourController::class, 'create_submit'])->name('admin_tour_create_submit');
        Route::get('/tours/edit/{id}', [AdminTourController::class, 'edit'])->name('admin_tour_edit')->middleware('permission:edit.tur,admin');
        Route::post('/tours/edit/{id}', [AdminTourController::class, 'edit_submit'])->name('admin_tour_edit_submit');
        Route::get('/tours/delete/{id}', [AdminTourController::class, 'delete'])->name('admin_tour_delete')->middleware('permission:hapus.tur,admin');

        Route::get('/tours/booking/{tour_id}/{package_id}', [AdminTourController::class, 'tour_booking'])->name('admin_tour_booking')->middleware('permission:lihat.infoPemesanan,admin');
        Route::get('/Tours/Booking-delete/{id}', [AdminTourController::class, 'tour_booking_delete'])->name('admin_tour_booking_delete')->middleware('permission:hapus.infoPemesanan,admin');
        Route::get('/Tours/booking-approve/{id}', [AdminTourController::class, 'tour_booking_approve'])->name('admin_tour_booking_approve')->middleware('permission:approve.infoPemesanan,admin');
        Route::get('/Tours/invoice/{invoice_no}', [AdminTourController::class, 'tour_invoice'])->name('admin_tour_invoice')->middleware('permission:infofaktur.infoPemesanan,admin');

        // Reviews Section
        Route::get('/reviews/index', [AdminReviewController::class, 'index'])->name('admin_review_index')->middleware('permission:lihat.ulasan,admin');
        Route::get('/reviews/delete/{id}', [AdminReviewController::class, 'delete'])->name('admin_review_delete')->middleware('permission:hapus.ulasan,admin');

        // Users Section
        Route::get('/users', [AdminUserController::class, 'users'])->name('admin_users')->middleware('permission:lihat.pengguna,admin');
        Route::get('/users/create', [AdminUserController::class, 'user_create'])->name('admin_user_create')->middleware('permission:tambah.pengguna,admin');
        Route::post('/users/create/submit', [AdminUserController::class, 'user_create_submit'])->name('admin_user_create_submit');
        Route::get('/users/edit/{id}', [AdminUserController::class, 'user_edit'])->name('admin_user_edit')->middleware('permission:edit.pengguna,admin');
        Route::post('/users/edit/{id}', [AdminUserController::class, 'user_edit_submit'])->name('admin_user_edit_submit');
        Route::get('/users/delete/{id}', [AdminUserController::class, 'user_delete'])->name('admin_user_delete')->middleware('permission:hapus.pengguna,admin');

        Route::get('/message', [AdminUserController::class, 'message'])->name('admin_message')->middleware('permission:lihat.message.pengguna,admin');
        Route::get('/message-detail/{id}', [AdminUserController::class, 'message_detail'])->name('admin_message_detail')->middleware('permission:buka.message.penggguna,admin');
        Route::post('/message-submit/{id}', [AdminUserController::class, 'message_submit'])->name('admin_message_submit');

        // Subscribers Section
        Route::get('/subscribers', [AdminSubscriberController::class, 'subscribers'])->name('admin_subscribers')->middleware('permission:lihat.pengikut,admin');
        Route::get('/subscriber-send-email', [AdminSubscriberController::class, 'send_email'])->name('admin_subscriber_send_email');
        Route::post('/subscriber-send-email-submit', [AdminSubscriberController::class, 'send_email_submit'])->name('admin_subscriber_send_email_submit');
        Route::get('/subscriber/delete/{id}', [AdminSubscriberController::class, 'subscriber_delete'])->name('admin_subscriber_delete')->middleware('permission:hapus.pengikut,admin');

        // Home Items Section
        Route::get('/home-page-items/index', [AdminHomeItemController::class, 'index'])->name('admin_home_page_item_index')->middleware('permission:lihat.beranda,admin');
        Route::post('/home-item/update', [AdminHomeItemController::class, 'update'])->name('admin_home_page_item_update');

        // About Items Section
        Route::get('/about-items/index', [AdminAboutItemController::class, 'index'])->name('admin_about_item_index')->middleware('permission:lihat.tentang,admin');
        Route::post('/about-item/update', [AdminAboutItemController::class, 'update'])->name('admin_about_item_update');

         // Contact Items Section
         Route::get('/contact-items/index', [AdminContactItemController::class, 'index'])->name('admin_contact_item_index')->middleware('permission:lihat.kontak,admin');
         Route::post('/contact-item/update', [AdminContactItemController::class, 'update'])->name('admin_contact_item_update');

         // Term Privacy Items Section
         Route::get('/term-privacy-items/index', [AdminTermPrivacyItemController::class, 'index'])->name('admin_term_privacy_item_index')->middleware('permission:lihat.privacy.policy,admin');
         Route::post('/term-privacy-item/update', [AdminTermPrivacyItemController::class, 'update'])->name('admin_term_privacy_item_update');

         // Settings Section
        Route::get('/settings/index', [AdminSettingController::class, 'index'])->name('admin_setting_index')->middleware('permission:lihat.pengaturan,admin');
        Route::post('/setting/update', [AdminSettingController::class, 'update'])->name('admin_setting_update');

        // Sponsor Section
        Route::get('/sponsor/index', [AdminSponsorController::class, 'index'])->name('sponsor_index')->middleware('permission:lihat.sponsor,admin');
        Route::post('/sponsor-submit', [AdminSponsorController::class, 'sponsor_submit'])->name('sponsor_submit');
        Route::get('/sponsor-delete/{id}', [AdminSponsorController::class, 'sponsor_delete'])->name('sponsor_delete')->middleware('permission:hapus.sponsor,admin');

        // Comment Blog Section
        Route::get('/comment/index', [AdminCommentController::class, 'index'])->name('comment.index')->middleware('permission:lihat.commentBlog,admin');
        Route::post('/comment-approve/{id}', [AdminCommentController::class, 'approve'])->name('comment.approve');
        Route::get('/comment-delete/{id}', [AdminCommentController::class, 'delete'])->name('comment.delete')->middleware('permission:hapus.commentBlog,admin');

        // LOG Section
        Route::get('/log/activity/admin', [LogActivityController::class, 'indexAdmin'])->name('log.admin')->middleware('permission:lihat.logAktivitas.admin,admin');
        Route::get('/log/activity/user', [LogActivityController::class, 'indexUser'])->name('log.user')->middleware('permission:lihat.logAktivitas.user,admin');



        // Admins Section
        Route::get('/admins', [AdminsController::class, 'admins'])->name('admin_admins')->middleware('permission:lihat.pengguna,admin');
        Route::get('/admins/create', [AdminsController::class, 'admin_create'])->name('admin_admin_create')->middleware('permission:tambah.pengguna,admin');
        Route::post('/admins/create/submit', [AdminsController::class, 'admin_create_submit'])->name('admin_admin_create_submit');
        Route::get('/admins/edit/{id}', [AdminsController::class, 'admin_edit'])->name('admin_admin_edit')->middleware('permission:edit.pengguna,admin');
        Route::post('/admins/edit/{id}', [AdminsController::class, 'admin_edit_submit'])->name('admin_admin_edit_submit');
        Route::get('/admins/delete/{id}', [AdminsController::class, 'admin_delete'])->name('admin_admin_delete')->middleware('permission:hapus.pengguna,admin');




        Route::resource('roles', RoleController::class)->middleware('permission:Perizinan,admin');
        Route::resource('permissions', PermissionController::class);

        Route::get('assign-role', [RoleController::class, 'assignRoleForm'])->name('assign.role.form');
        Route::post('assign-role', [RoleController::class, 'assignRoleSubmit'])->name('assign.role.submit');
        Route::delete('/user/{admin}/role/{role}', [RoleController::class, 'removeRole'])->name('user.removeRole');



        // Slider Trash Section
        Route::get('/slider/trash', [AdminTrashController::class, 'SliderTrash'])->name('admin_slider_trash')->middleware('permission:sampah.slider,admin');
        Route::get('/slider/trash/delete/{id}', [AdminTrashController::class, 'SliderTrashDelete'])->name('admin_slider_trash_delete');
        Route::get('/slider/trash/restore/{id}', [AdminTrashController::class, 'SliderTrashRestore'])->name('admin_slider_trash_restore');

        // // Amenity Trash Section
        // Route::get('/amenity/trash', [AdminTrashController::class, 'AmenityTrash'])->name('admin_amenity_trash')->middleware('permission:sampah.fasilitas,admin');
        // Route::get('/amenity/trash/delete/{id}', [AdminTrashController::class, 'AmenityTrashDelete'])->name('admin_amenity_trash_delete');
        // Route::get('/amenity/trash/restore/{id}', [AdminTrashController::class, 'AmenityTrashRestore'])->name('admin_amenity_trash_restore');

        // Review Trash Section
        Route::get('/review/trash', [AdminTrashController::class, 'ReviewTrash'])->name('admin_review_trash')->middleware('permission:sampah.ulasan,admin');
        Route::get('/review/trash/delete/{id}', [AdminTrashController::class, 'ReviewTrashDelete'])->name('admin_review_trash_delete');
        Route::get('/review/trash/restore/{id}', [AdminTrashController::class, 'ReviewTrashRestore'])->name('admin_review_trash_restore');

        // Feature Trash Section
        Route::get('/feature/trash', [AdminTrashController::class, 'FeatureTrash'])->name('admin_feature_trash')->middleware('permission:sampah.fitur,admin');
        Route::get('/feature/trash/delete/{id}', [AdminTrashController::class, 'FeatureTrashDelete'])->name('admin_feature_trash_delete');
        Route::get('/feature/trash/restore/{id}', [AdminTrashController::class, 'FeatureTrashRestore'])->name('admin_feature_trash_restore');

        // Destination Trash Section
        Route::get('/destination/trash', [AdminTrashController::class, 'DestinationTrash'])->name('admin_destination_trash')->middleware('permission:sampah.destinasi,admin');
        Route::get('/destination/trash/delete/{id}', [AdminTrashController::class, 'DestinationTrashDelete'])->name('admin_destination_trash_delete');
        Route::get('/destination/trash/restore/{id}', [AdminTrashController::class, 'DestinationTrashRestore'])->name('admin_destination_trash_restore');

        // Destination Photo Trash Section
        Route::get('/destination/photo/trash', [AdminTrashController::class, 'DestinationPhotoTrash'])->name('admin_destination_photo_trash')->middleware('permission:sampah.galeryFoto.destinasi,admin');
        Route::get('/destination/photo/trash/delete/{id}', [AdminTrashController::class, 'DestinationPhotoTrashDelete'])->name('admin_destination_photo_trash_delete');
        Route::get('/destination/photo/trash/restore/{id}', [AdminTrashController::class, 'DestinationPhotoTrashRestore'])->name('admin_destination_photo_trash_restore');

        // Destination Video Trash Section
        Route::get('/destination/video/trash', [AdminTrashController::class, 'DestinationVideoTrash'])->name('admin_destination_video_trash')->middleware('permission:sampah.galeryVideo.destinasi,admin');
        Route::get('/destination/video/trash/delete/{id}', [AdminTrashController::class, 'DestinationVideoTrashDelete'])->name('admin_destination_video_trash_delete');
        Route::get('/destination/video/trash/restore/{id}', [AdminTrashController::class, 'DestinationVideoTrashRestore'])->name('admin_destination_video_trash_restore');

        // Blog Category Trash Section
        Route::get('/blog/category/trash', [AdminTrashController::class, 'BlogCategoryTrash'])->name('admin_blog_category_trash')->middleware('permission:sampah.blogKategori,admin');
        Route::get('/blog/category/trash/delete/{id}', [AdminTrashController::class, 'BlogCategoryTrashDelete'])->name('admin_blog_category_trash_delete');
        Route::get('/blog/category/trash/restore/{id}', [AdminTrashController::class, 'BlogCategoryTrashRestore'])->name('admin_blog_category_trash_restore');

        // Blog Trash Section
        Route::get('/blog/trash', [AdminTrashController::class, 'BlogTrash'])->name('admin_blog_trash')->middleware('permission:sampah.blogPost,admin');
        Route::get('/blog/trash/delete/{id}', [AdminTrashController::class, 'BlogTrashDelete'])->name('admin_blog_trash_delete');
        Route::get('/blog/trash/restore/{id}', [AdminTrashController::class, 'BlogTrashRestore'])->name('admin_blog_trash_restore');

        // Package Trash Section
        Route::get('/package/trash', [AdminTrashController::class, 'PackageTrash'])->name('admin_package_trash')->middleware('permission:sampah.paket,admin');
        Route::get('/package/trash/delete/{id}', [AdminTrashController::class, 'PackageTrashDelete'])->name('admin_package_trash_delete');
        Route::get('/package/trash/restore/{id}', [AdminTrashController::class, 'PackageTrashRestore'])->name('admin_package_trash_restore');

        // Package Amenity Trash Section
        Route::get('/package/amenity/trash', [AdminTrashController::class, 'PackageAmenityTrash'])->name('admin_package_amenity_trash')->middleware('permission:sampah.fasilitas.paket,admin');
        Route::get('/package/amenity/trash/delete/{id}', [AdminTrashController::class, 'PackageAmenityTrashDelete'])->name('admin_package_amenity_trash_delete');
        Route::get('/package/amenity/trash/restore/{id}', [AdminTrashController::class, 'PackageAmenityTrashRestore'])->name('admin_package_amenity_trash_restore');

        // Package Itinerary Trash Section
        Route::get('/package/itinerary/trash', [AdminTrashController::class, 'PackageItineraryTrash'])->name('admin_package_itinerary_trash')->middleware('permission:sampah.rencana,admin');
        Route::get('/package/itinerary/trash/delete/{id}', [AdminTrashController::class, 'PackageItineraryTrashDelete'])->name('admin_package_itinerary_trash_delete');
        Route::get('/package/itinerary/trash/restore/{id}', [AdminTrashController::class, 'PackageItineraryTrashRestore'])->name('admin_package_itinerary_trash_restore');

        // Package Faq Trash Section
        Route::get('/package/faq/trash', [AdminTrashController::class, 'PackageFaqTrash'])->name('admin_package_faq_trash')->middleware('permission:sampah.pertanyaan.paket,admin');
        Route::get('/package/faq/trash/delete/{id}', [AdminTrashController::class, 'PackageFaqTrashDelete'])->name('admin_package_faq_trash_delete');
        Route::get('/package/faq/trash/restore/{id}', [AdminTrashController::class, 'PackageFaqTrashRestore'])->name('admin_package_faq_trash_restore');

        // Package Photo Trash Section
        Route::get('/package/photo/trash', [AdminTrashController::class, 'PackagePhotoTrash'])->name('admin_package_photo_trash')->middleware('permission:sampah.galeryFoto.paket,admin');
        Route::get('/package/photo/trash/delete/{id}', [AdminTrashController::class, 'PackagePhotoTrashDelete'])->name('admin_package_photo_trash_delete');
        Route::get('/package/photo/trash/restore/{id}', [AdminTrashController::class, 'PackagePhotoTrashRestore'])->name('admin_package_photo_trash_restore');

        // Package Video Trash Section
        Route::get('/package/video/trash', [AdminTrashController::class, 'PackageVideoTrash'])->name('admin_package_video_trash')->middleware('permission:sampah.galeryVideo.paket,admin');
        Route::get('/package/video/trash/delete/{id}', [AdminTrashController::class, 'PackageVideoTrashDelete'])->name('admin_package_video_trash_delete');
        Route::get('/package/video/trash/restore/{id}', [AdminTrashController::class, 'PackageVideoTrashRestore'])->name('admin_package_video_trash_restore');

        // Tour Trash Section
        Route::get('/tour/trash', [AdminTrashController::class, 'TourTrash'])->name('admin_tour_trash')->middleware('permission:sampah.tur,admin');
        Route::get('/tour/trash/delete/{id}', [AdminTrashController::class, 'TourTrashDelete'])->name('admin_tour_trash_delete');
        Route::get('/tour/trash/restore/{id}', [AdminTrashController::class, 'TourTrashRestore'])->name('admin_tour_trash_restore');

        // Booking Trash Section
        Route::get('/booking/trash', [AdminTrashController::class, 'BookingTrash'])->name('admin_booking_trash')->middleware('permission:sampah.infoPemesanan,admin');
        Route::get('/booking/trash/delete/{id}', [AdminTrashController::class, 'BookingTrashDelete'])->name('admin_booking_trash_delete');
        Route::get('/booking/trash/restore/{id}', [AdminTrashController::class, 'BookingTrashRestore'])->name('admin_booking_trash_restore');

        // Subscriber Trash Section
        Route::get('/subscriber/trash', [AdminTrashController::class, 'SubscriberTrash'])->name('admin_subscriber_trash')->middleware('permission:sampah.pengikut,admin');
        Route::get('/subscriber/trash/delete/{id}', [AdminTrashController::class, 'SubscriberTrashDelete'])->name('admin_subscriber_trash_delete');
        Route::get('/subscriber/trash/restore/{id}', [AdminTrashController::class, 'SubscriberTrashRestore'])->name('admin_subscriber_trash_restore');

        // User Trash Section
        Route::get('/user/trash', [AdminTrashController::class, 'UserTrash'])->name('admin_user_trash')->middleware('permission:sampah.pengguna,admin');
        Route::get('/user/trash/delete/{id}', [AdminTrashController::class, 'UserTrashDelete'])->name('admin_user_trash_delete');
        Route::get('/user/trash/restore/{id}', [AdminTrashController::class, 'UserTrashRestore'])->name('admin_user_trash_restore');

        // Testimonial Trash Section
        Route::get('/testimonial/trash', [AdminTrashController::class, 'TestimonialTrash'])->name('admin_testimonial_trash')->middleware('permission:sampah.testimoni,admin');
        Route::get('/testimonial/trash/delete/{id}', [AdminTrashController::class, 'TestimonialTrashDelete'])->name('admin_testimonial_trash_delete');
        Route::get('/testimonial/trash/restore/{id}', [AdminTrashController::class, 'TestimonialTrashRestore'])->name('admin_testimonial_trash_restore');

        // FAQ Trash Section
        Route::get('/faq/trash', [AdminTrashController::class, 'FAQTrash'])->name('admin_faq_trash')->middleware('permission:sampah.pertanyaan,admin');
        Route::get('/faq/trash/delete/{id}', [AdminTrashController::class, 'FAQTrashDelete'])->name('admin_faq_trash_delete');
        Route::get('/faq/trash/restore/{id}', [AdminTrashController::class, 'FAQTrashRestore'])->name('admin_faq_trash_restore');

        // TeamMember Trash Section
        Route::get('/team_member/trash', [AdminTrashController::class, 'TeamMemberTrash'])->name('admin_team_member_trash')->middleware('permission:sampah.anggota,admin');
        Route::get('/team_member/trash/delete/{id}', [AdminTrashController::class, 'TeamMemberTrashDelete'])->name('admin_team_member_trash_delete');
        Route::get('/team_member/trash/restore/{id}', [AdminTrashController::class, 'TeamMemberTrashRestore'])->name('admin_team_member_trash_restore');

        // Sponsor Trash Section
        Route::get('/sponsor/trash', [AdminTrashController::class, 'SponsorTrash'])->name('admin_sponsor_trash')->middleware('permission:sampah.sponsor,admin');
        Route::get('/sponsor/trash/delete/{id}', [AdminTrashController::class, 'SponsorTrashDelete'])->name('admin_sponsor_trash_delete');
        Route::get('/sponsor/trash/restore/{id}', [AdminTrashController::class, 'SponsorTrashRestore'])->name('admin_sponsor_trash_restore');

    });

Route::prefix('admin')->group(function () {
    Route::get('/login', [AdminAuthController::class, 'login'])->name('admin_login');
    Route::post('/login', [AdminAuthController::class, 'login_submit'])->name('admin_login_submit');
    Route::get('/logout', [AdminAuthController::class, 'logout'])->name('admin_logout');
    Route::get('/forget-password', [AdminAuthController::class, 'forget_password'])->name('admin_forget_password');
    Route::post('/forget_password_submit', [AdminAuthController::class, 'forget_password_submit'])->name('admin_forget_password_submit');
    Route::get('/reset-password/{token}/{email}', [AdminAuthController::class, 'reset_password'])->name('admin_reset_password');
    Route::post('/reset-password/{token}/{email}', [AdminAuthController::class, 'reset_password_submit'])->name('admin_reset_password_submit');
});

Route::get('/test-php', function (){

});
