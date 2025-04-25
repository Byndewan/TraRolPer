<?php

namespace App\Helpers;

class AccessHelper
{
    public static function getFirstAccessibleRoute($admin, $menuRoutes)
    {
        foreach ($menuRoutes as $route) {
            $permissionMap = [
                'admin_dashboard' => 'lihat.dashboard', 
                'admin_slider_index' => 'lihat.slider',
                'admin_welcome_item_index' => 'lihat.welcome',
                'admin_feature_index' => 'lihat.fitur',
                'admin_counter_item_index' => 'lihat.counter',
                'admin_testimonial_index' => 'lihat.testimoni',
                'admin_team_member_index' => 'lihat.anggota',
                'admin_faq_index' => 'lihat.pertanyaan',
                'admin_blog_category_index' => 'lihat.blogKategori',
                'admin_post_index' => 'lihat.blogPost',
                'admin_destination_index' => 'lihat.destinasi',
                'admin_package_index' => 'lihat.paket',
                'admin.laporan.pemesanan' => 'lihat.laporan',
                'admin_setting_index' => 'lihat.pengaturan',
                'admin_review_index' => 'lihat.ulasan',
                'comment.index' => 'lihat.commentBlog',
                'admin_tour_index' => 'lihat.tur',
                'admin_subscribers' => 'lihat.pengikut',
                'admin_subscriber_send_email' => 'kirimEmail.pengikut',
                'admin_message' => 'lihat.message.pengguna',
                'admin_users' => 'lihat.pengguna',
                'sponsor_index' => 'lihat.sponsor',
                // 'admin_admins' => 'lihat.',
                'admin_home_page_item_index' => 'lihat.beranda',
                'admin_about_item_index' => 'lihat.tentang',
                'admin_contact_item_index' => 'lihat.kontak',
                'admin_term_privacy_item_index' => 'lihat.privacy.policy',
                'log.admin' => 'lihat.logAktivitas.admin',
                'log.user' => 'lihat.logAktivitas.user',
            ];

            if ($admin->can($permissionMap)) {
                return $route;
            }
        }

        return null;
    }


    private static function getPermissionFromRoute($route)
    {
        $name = explode('.', $route)[0];
        return 'view ' . $name;
    }

}
