@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Destinasi</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.destinasi'))
                        <a href="{{ route('admin_destination_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Destinasi</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.destinasi'))
                        <a href="{{ route('admin_destination_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Nama Destinasi</th>
                                                    @if (auth('admin')->user()?->can('lihat.galeryFoto.destinasi') || auth('admin')->user()?->can('lihat.galeryVideo.destinasi'))
                                                    <th>Galeri</th>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.destinasi') || auth('admin')->user()?->can('hapus.destinasi'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($destinations as $destination)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/'.$destination->featured_photo) }}" alt="{{ $destination->name }}" class="w_100">
                                                    </td>
                                                    <td>{{ $destination->name }}</td>
                                                    @if (auth('admin')->user()?->can('lihat.galeryFoto.destinasi') || auth('admin')->user()?->can('lihat.galeryVideo.destinasi'))
                                                    <td>
                                                        @if (auth('admin')->user()?->can('lihat.galeryFoto.destinasi'))
                                                        <a href="{{ route('destination_photos', $destination->id) }}" class="btn btn-success btn-sm">Galeri Foto</a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('lihat.galeryVideo.destinasi'))
                                                        <a href="{{ route('destination_videos',$destination->id) }}" class="btn btn-success btn-sm">Galeri Video</a>
                                                        @endif
                                                    </td>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.destinasi') || auth('admin')->user()?->can('hapus.destinasi'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.destinasi'))
                                                        <a href="{{ route('admin_destination_edit', $destination->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.destinasi'))
                                                        <a href="{{ route('admin_destination_delete', $destination->id) }}" class="btn btn-danger" onClick="return confirm('Destination will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
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
