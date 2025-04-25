@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Paket</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.paket'))
                        <a href="{{ route('admin_package_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Paket</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.paket'))
                        <a href="{{ route('admin_package_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                        @endif
                    </div>
                </div>
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="example1">
                                            <thead>
                                                <tr>
                                                    <th>SL</th>
                                                    <th>Foto</th>
                                                    <th>Nama Paket</th>
                                                    @if (auth('admin')->user()?->can('lihat.fasilitas.paket') || auth('admin')->user()?->can('lihat.rencana') || auth('admin')->user()?->can('lihat.pertanyaan.paket') || auth('admin')->user()?->can('lihat.galeryFoto.paket') || auth('admin')->user()?->can('lihat.galeryVideo.paket'))
                                                    <th>Galeri</th>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.paket') || auth('admin')->user()?->can('hapus.paket'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($packages as $package)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/'.$package->featured_photo) }}" alt="{{ $package->name }}" class="w_100">
                                                    </td>
                                                    <td>{{ $package->name }}</td>
                                                    @if (auth('admin')->user()?->can('lihat.fasilitas.paket') || auth('admin')->user()?->can('lihat.rencana') || auth('admin')->user()?->can('lihat.pertanyaan.paket') || auth('admin')->user()?->can('lihat.galeryFoto.paket') || auth('admin')->user()?->can('lihat.galeryVideo.paket'))
                                                    <td>
                                                        <div>
                                                            @if (auth('admin')->user()?->can('lihat.fasilitas.paket'))
                                                            <a href="{{ route('package_amenities', $package->id) }}" class="btn btn-success mb-2">Fasilitas</a>
                                                            @endif
                                                            @if (auth('admin')->user()?->can('lihat.rencana'))
                                                            <a href="{{ route('package_itineraries', $package->id) }}" class="btn btn-success mb-2">Rencana</a>
                                                            @endif
                                                            @if (auth('admin')->user()?->can('lihat.pertanyaan.paket'))
                                                            <a href="{{ route('package_faqs',$package->id) }}" class="btn btn-success mb-2">Pertanyaan</a>
                                                            @endif
                                                        </div>
                                                        <div>
                                                            @if (auth('admin')->user()?->can('lihat.galeryFoto.paket'))
                                                            <a href="{{ route('package_photos', $package->id) }}" class="btn btn-success mb-2">Galeri Foto </a>
                                                            @endif
                                                            @if (auth('admin')->user()?->can('lihat.galeryVideo.paket'))
                                                            <a href="{{ route('package_videos',$package->id) }}" class="btn btn-success mb-2">Galeri Video</a>
                                                            @endif
                                                        </div>
                                                    </td>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.paket') || auth('admin')->user()?->can('hapus.paket'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.paket'))
                                                        <a href="{{ route('admin_package_edit', $package->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.paket'))
                                                        <a href="{{ route('admin_package_delete', $package->id) }}" class="btn btn-danger" onClick="return confirm('Package will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
                                                        @endif
                                                    </td>
                                                    @endif
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
@endsection
