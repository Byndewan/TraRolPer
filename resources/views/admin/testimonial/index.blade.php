@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Testimoni</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.testimoni'))
                        <a href="{{ route('admin_testimonial_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Testimoni</a>
                        @endif
                        @if (auth('admin')->user()?->can('hapus.testimoni'))
                        <a href="{{ route('admin_testimonial_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Nama</th>
                                                    <th>Jabatan</th>
                                                    @if (auth('admin')->user()?->can('edit.testimoni') || auth('admin')->user()?->can('hapus.testimoni'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($testimonials as $testimonial)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/'.$testimonial->photo) }}" alt="{{ $testimonial->name }}" class="w_100">
                                                    </td>
                                                    <td>{{ $testimonial->name }}</td>
                                                    <td>{{ $testimonial->designation }}</td>
                                                    @if (auth('admin')->user()?->can('edit.testimoni') || auth('admin')->user()?->can('hapus.testimoni'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.testimoni'))
                                                        <a href="{{ route('admin_testimonial_edit', $testimonial->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.testimoni'))
                                                        <a href="{{ route('admin_testimonial_delete', $testimonial->id) }}" class="btn btn-danger" onClick="return confirm('Testimonial will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
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
