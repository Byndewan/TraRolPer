@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Fitur</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_feature_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_feature_edit_submit',$feature->id) }}" method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Preview Ikon Saat Ini *</label>
                                        <div class="mb-2">
                                            <i id="previewIcon" class="{{ $feature->icon }} fz_30"></i>
                                        </div>

                                        <label class="form-label">Nama Ikon *</label>
                                        <input type="text" class="form-control" name="icon" id="iconInput" value="{{ $feature->icon }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Pilih Ikon Baru (Opsional)</label>
                                        <div id="icon-picker" class="d-flex flex-wrap gap-2">
                                            @php
                                                $icons = ['fa-star', 'fa-heart', 'fa-bolt', 'fa-cog', 'fa-globe', 'fa-check', 'fa-users', 'fa-briefcase'];
                                            @endphp

                                            @foreach($icons as $icon)
                                                <button type="button" class="btn btn-light border icon-select" data-icon="{{ $icon }}">
                                                    <i class="fas {{ $icon }}"></i>
                                                </button>
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Heading *</label>
                                        <input type="text" class="form-control" name="heading"
                                            value="{{ $feature->heading }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi *</label>
                                        <textarea name="description" class="form-control h_100" cols="30" rows="10">{{ $feature->description }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Perbarui</button>
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
            btn.addEventListener('click', function () {
                const selectedIcon = this.getAttribute('data-icon');
                document.getElementById('iconInput').value = selectedIcon;
                document.getElementById('previewIcon').className = `fas ${selectedIcon} fz_30`;
            });
        });
    </script>

@endsection
