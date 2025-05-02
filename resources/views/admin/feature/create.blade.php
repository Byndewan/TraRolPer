@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Tambah Fitur</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_feature_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i>
                        Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_feature_create_submit') }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Pilih Ikon *</label>
                                        <div id="icon-picker" class="d-flex flex-wrap gap-2">
                                            @php
                                                $icons = [
                                                    'fas fa-star',
                                                    'fas fa-heart',
                                                    'fas fa-bolt',
                                                    'fas fa-cog',
                                                    'fas fa-globe',
                                                    'fas fa-check',
                                                    'fas fa-users',
                                                    'fas fa-briefcase',
                                                    'fas fa-book',
                                                    'fas fa-camera',
                                                    'fas fa-envelope',
                                                    'fas fa-comments',
                                                    'fas fa-chart-bar',
                                                    'fas fa-clock',
                                                    'fas fa-cloud',
                                                    'fas fa-desktop',
                                                    'fas fa-download',
                                                    'fas fa-edit',
                                                    'fas fa-eye',
                                                    'fas fa-file',
                                                    'fas fa-flag',
                                                    'fas fa-gift',
                                                    'fas fa-home',
                                                    'fas fa-info',
                                                    'fas fa-key',
                                                    'fas fa-lightbulb',
                                                    'fas fa-lock',
                                                    'fas fa-map',
                                                    'fas fa-microphone',
                                                    'fas fa-moon',
                                                    'fas fa-music',
                                                    'fas fa-paper-plane',
                                                    'fas fa-phone',
                                                    'fas fa-play',
                                                    'fas fa-print',
                                                    'fas fa-question',
                                                    'fas fa-recycle',
                                                    'fas fa-search',
                                                    'fas fa-share',
                                                    'fas fa-shopping-cart',
                                                    'fas fa-signal',
                                                    'fas fa-smile',
                                                    'fas fa-thumbs-up',
                                                    'fas fa-thumbs-down',
                                                    'fas fa-trash',
                                                    'fas fa-unlock',
                                                    'fas fa-upload',
                                                    'fas fa-user',
                                                    'fas fa-wifi',
                                                    'fas fa-wrench',
                                                ];
                                                @endphp

                                            @foreach ($icons as $icon)
                                                <button type="button" class="btn btn-light border icon-select"
                                                    data-icon="{{ $icon }}">
                                                    <i class="fas {{ $icon }}"></i>
                                                </button>
                                            @endforeach
                                        </div>
                                    </div>

                                    <input type="text" name="icon" id="iconInput" class="form-control"
                                        value="{{ old('icon') }}" placeholder="Klik ikon di atas atau isi manual...">

                                    <div class="mb-3">
                                        <label class="form-label">Heading *</label>
                                        <input type="text" class="form-control" name="heading"
                                            value="{{ old('heading') }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deksripsi *</label>
                                        <textarea name="description" class="form-control h_100" cols="30" rows="10">{{ old('description') }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Buat</button>
                                    </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    </div>
    </section>
    </div>

    <script>
        document.querySelectorAll('.icon-select').forEach(btn => {
            btn.addEventListener('click', function() {
                const iconClass = this.getAttribute('data-icon');
                document.getElementById('iconInput').value = iconClass;
            });
        });
    </script>
@endsection
