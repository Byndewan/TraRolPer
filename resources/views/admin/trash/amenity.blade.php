@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Sampah Bagian Fasilitas</h1>
                    <div class="ml-auto">
                    <a href="{{ route('admin_amenity_index') }}" class="btn btn-primary"><i class="fas fa-arrow-circle-left"></i> Kembali</a>
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
                                                    <th>Aksi</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($amenities as $amenity)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $amenity->name }}</td>
                                                    <td class="pt_10 pb_10">
                                                        <a href="{{ route('admin_amenity_trash_restore', $amenity->id) }}" class="btn btn-primary"><i class="fas fa-arrows-alt-v"></i> Pulihkan</a>

                                                        <a href="{{ route('admin_amenity_trash_delete', $amenity->id) }}" class="btn btn-danger" onClick="return confirm('Fasilitas akan dihapus secara permanen. Apakah anda yakin?');"><i class="fas fa-trash"></i> Hapus Permanen</a>
                                                    </td>
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
