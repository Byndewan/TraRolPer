<div class="main-sidebar">
    <aside id="sidebar-wrapper" data-simplebar="true">
        <div class="sidebar-brand">
            <a href="{{ route('admin_dashboard') }}">Admin Panel</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route('admin_dashboard') }}"></a>
        </div>

        <ul class="sidebar-menu">

            {{-- @if (auth('admin')->user()?->role('super_admin')) --}}

            @if (auth('admin')->user()?->can('lihat.dashboard'))
                <li class="{{ Route::is('admin_dashboard') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_dashboard') }}"><i class="fab fa-dashcube"></i>
                        <span>Dashboard</span></a>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.laporan'))
                <li class="{{ Route::is('admin.laporan.pemesanan') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('admin.laporan.pemesanan') }}">
                        <i class="fas fa-cash-register"></i> <span>Laporan Pemesanan</span>
                    </a>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.pengaturan'))
                <li class="{{ Route::is('admin_setting_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_setting_index') }}"><i class="fas fa-cogs"></i>
                        <span>Pengaturan</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.slider'))
                <li class="{{ Route::is('admin_slider_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_slider_index') }}"><i class="fas fa-sliders-h"></i>
                        <span>Slider</span></a>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.welcome'))
                <li class="{{ Route::is('admin_welcome_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_welcome_item_index') }}"><i class="fas fa-door-open"></i>
                        <span>Item Selamat Datang</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.beranda'))
                <li class="{{ Route::is('admin_home_page_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_home_page_item_index') }}"><i class="fas fa-laptop-house"></i>
                        <span>Item Halaman Utama</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.tentang'))
                <li class="{{ Route::is('admin_about_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_about_item_index') }}"><i class="fas fa-address-card"></i>
                        <span>Item Tentang</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.counter'))
                <li class="{{ Route::is('admin_counter_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_counter_item_index') }}"><i class="fas fa-hand-point-right"></i>
                        <span>Item Counter</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.kontak'))
                <li class="{{ Route::is('admin_contact_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_contact_item_index') }}"><i class="fas fa-address-book"></i>
                        <span>Item Kontak</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.destinasi'))
                <li class="{{ Route::is('admin_destination_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_destination_index') }}"><i class="fas fa-map-marker-alt"></i>
                        <span>Destinasi</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.fitur'))
                <li class="{{ Route::is('admin_feature_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_feature_index') }}"><i class="fas fa-hand-point-right"></i>
                        <span>Fitur</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.paket'))
                <li
                    class="{{ Route::is('admin_package_index') || Route::is('package_itineraries') || Route::is('package_amenities') || Route::is('package_photos') || Route::is('package_videos') || Route::is('package_faqs') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ route('admin_package_index') }}"><i class="fas fa-box-open"></i>
                        <span>Paket</span></a>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.tur'))
                <li class="{{ Route::is('admin_tour_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_tour_index') }}"><i class="fas fa-torii-gate"></i>
                        <span>Tur</span></a>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.testimoni'))
                <li class="{{ Route::is('admin_testimonial_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_testimonial_index') }}"><i class="fas fa-hand-point-right"></i>
                        <span>Testimoni</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.blogKategori') ||
                    auth('admin')->user()?->can('lihat.blogPost') ||
                    auth('admin')->user()?->can('lihat.commentBlog'))
                <li
                    class="nav-item dropdown {{ Route::is('admin_blog_category_index') || Route::is('admin_post_index') || Route::is('comment.index') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-blog"></i><span> Bagian
                            Blog</span></a>
                    <ul class="dropdown-menu">

                        @if (auth('admin')->user()?->can('lihat.blogKategori'))
                            <li class=""><a
                                    class="nav-link {{ Route::is('admin_blog_category_index') ? 'active' : '' }}"
                                    href="{{ route('admin_blog_category_index') }}"><i
                                        class="fas fa-angle-right"></i><span>Kategori</span></a></li>
                        @endif
                        @if (auth('admin')->user()?->can('lihat.blogPost'))
                            <li class=""><a class="nav-link {{ Route::is('admin_post_index') ? 'active' : '' }}"
                                    href="{{ route('admin_post_index') }}"><i class="fas fa-angle-right"></i><span>Blog
                                        Post</span></a></li>
                        @endif
                        @if (auth('admin')->user()?->can('lihat.commentBlog'))
                            <li class=""><a class="nav-link {{ Route::is('comment.index') ? 'active' : '' }}"
                                    href="{{ route('comment.index') }}"><i class="fas fa-angle-right"></i><span>Kelola
                                        Komentar blog</span></a></li>
                        @endif
                    </ul>
                </li>
            @endif

            {{-- <li class="{{ Route::is('admin_amenity_index') ? 'active' : '' }}"><a class="nav-link"
                    href="{{ route('admin_amenity_index') }}"><i class="fas fa-umbrella-beach"></i>
                    <span>Fasilitas</span></a></li> --}}

            @if (auth('admin')->user()?->can('lihat.ulasan'))
                <li class="{{ Route::is('admin_review_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_review_index') }}"><i class="far fa-grin-beam"></i>
                        <span>Ulasan</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.message.pengguna') || auth('admin')->user()?->can('lihat.pengguna'))
                <li
                    class="nav-item dropdown {{ Route::is('admin_message') || Route::is('admin_users') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-user">
                        </i><span> Bagian Pengguna</span></a>
                    <ul class="dropdown-menu">

                        @if (auth('admin')->user()?->can('lihat.pengguna'))
                            <li class="{{ Route::is('admin_users') ? 'active' : '' }}"><a class="nav-link"
                                    href="{{ route('admin_users') }}"><i class="fas fa-angle-right"></i><span>Semua
                                        Pengguna</span></a></li>
                        @endif
                        @if (auth('admin')->user()?->can('lihat.message.pengguna'))
                            <li class="{{ Route::is('admin_message') ? 'active' : '' }}"><a class="nav-link"
                                    href="{{ route('admin_message') }}"><i
                                        class="fas fa-angle-right"></i><span>Obrolan</span></a></li>
                        @endif
                    </ul>
                </li>
            @endif



            @if (auth('admin')->user()?->can('lihat.pertanyaan'))
                <li class="{{ Route::is('admin_faq_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_faq_index') }}"><i class="fas fa-hand-point-right"></i>
                        <span>Pertanyaan</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.anggota'))
                <li class="{{ Route::is('admin_team_member_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_team_member_index') }}"><i class="fas fa-users-cog"></i>
                        <span>Anggota Tim</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.sponsor'))
                <li class="{{ Route::is('sponsor_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('sponsor_index') }}"><i class="fas fa-users-cog"></i>
                        <span>Sponsor</span></a></li>
            @endif


            @if (auth('admin')->user()?->can('Perizinan'))
                <li
                    class="nav-item dropdown {{ Route::is('admin_admins') || Route::is('roles.index') || Route::is('assign.role.form') ? 'active' : '' }}">
                    <a href="#" class="nav-link has-dropdown"><i class="fas fa-user">
                        </i><span> Semua Admin & Perizinan</span></a>
                    <ul class="dropdown-menu">
                        <li class="{{ Route::is('admin_admins') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('admin_admins') }}"><i class="fas fa-angle-right"></i><span>Kelola
                                    Admins</span></a></li>
                        <li class="{{ Route::is('roles.index') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('roles.index') }}"><i class="fas fa-angle-right"></i><span> Kelola
                                    Peran &
                                    Perizinan</span></a></li>
                        <li class="{{ Route::is('assign.role.form') ? 'active' : '' }}"><a class="nav-link"
                                href="{{ route('assign.role.form') }}"><i class="fas fa-angle-right"></i><span>Kelola
                                    Akses</span></a></li>
                    </ul>
                </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.privacy.policy'))
                <li class="{{ Route::is('admin_term_privacy_item_index') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route('admin_term_privacy_item_index') }}"><i class="fas fa-user-secret"></i>
                        <span>Item Ketentuan & Kebijakan</span></a></li>
            @endif

            <li @if (auth('admin')->user()?->can('lihat.pengikut') || auth('admin')->user()?->can('lihat.kirimEmail')) class="nav-item dropdown {{ Route::is('admin_subscribers') || Route::is('admin_subscriber_send_email') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-users">
                </i><span> Bagian Pengikut</span></a>
                <ul class="dropdown-menu">
                    @if (auth('admin')->user()?->can('lihat.pengikut'))
                    <li class="{{ Route::is('admin_subscribers') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route('admin_subscribers') }}"><i class="fas fa-angle-right"></i><span> Semua
                                Pengikut</span></a></li> @endif
                @if (auth('admin')->user()?->can('lihat.kirimEmail')) <li class="{{ Route::is('admin_subscriber_send_email') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route('admin_subscriber_send_email') }}"><i
                                class="fas fa-angle-right"></i><span>Kirim Email</span></a></li> @endif
                </ul>
            </li>
            @endif

            @if (auth('admin')->user()?->can('lihat.logAktivitas.admin'))
                <li class="{{ Request::is('admin/log/activity/admin') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ url('admin/log/activity/admin') }}"><i class="fas fa-user-secret"></i>
                        <span>Log Aktivitas Admin</span></a></li>
            @endif

            @if (auth('admin')->user()?->can('lihat.logAktivitas.user'))
                <li class="{{ Request::is('admin/log/activity/user') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ url('admin/log/activity/user') }}"><i class="fas fa-user-secret"></i>
                        <span>Log Aktivitas Pengguna</span></a></li>
            @endif

            {{-- @endif --}}

        </ul>
    </aside>
</div>
