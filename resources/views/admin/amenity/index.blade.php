@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Fasilitas</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.fasilitas'))
                        <a href="{{ route('admin_amenity_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>Tambah Fasilitas</a>
                        @endif

                        @if (auth('admin')->user()?->can('hapus.fasilitas'))
                        <a href="{{ route('admin_amenity_trash') }}" class="btn btn-danger mr_10"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Nama Fasilitas</th>
                                                    @if (auth('admin')->user()?->can('edit.fasilitas') || auth('admin')->user()?->can('hapus.fasilitas'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($amenities as $amenity)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $amenity->name }}</td>
                                                    @if (auth('admin')->user()?->can('edit.fasilitas') || auth('admin')->user()?->can('hapus.fasilitas'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.fasilitas'))
                                                        <a href="{{ route('admin_amenity_edit', $amenity->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.fasilitas'))
                                                        <a href="{{ route('admin_amenity_delete', $amenity->id) }}" class="btn btn-danger" onClick="return confirm('Amenity will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
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
