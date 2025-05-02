@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Rencana Perjalanan {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_package_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                    @if (auth('admin')->user()?->can('lihat.galery.fasilitas') || auth('admin')->user()?->can('sampah.rencana'))
                    <a href="{{ route('admin_package_itinerary_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                    @endif
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4>Rencana Perjalanan</h4>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Nama</th>
                                                <th>Deskripsi</th>
                                                @if (auth('admin')->user()?->can('hapus.rencana'))
                                                    <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_itineraries as $item)
                                            <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                {{ $item->name }}
                                            </td>
                                            <td>
                                                {!! $item->description !!}
                                            </td>
                                            @if (auth('admin')->user()?->can('tambah.rencana'))
                                            <td class="pt_10 pb_10">
                                                <a href="{{ route('package_itineraries_delete', $item->id) }}" class="btn btn-danger" onClick="return confirm('Rencana ini akan dipindahkan ke sampah. Apakah anda yakin?');"><i class="fas fa-trash"></i></a>
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

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4>Tambah Rencana Perjalanan</h4>
                                <form action="{{ route('package_itineraries_submit', $package->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Nama *</label>
                                        <input type="text" name="name" value="{{ old('name') }}" class ="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi *</label>
                                        <textarea name="description" class="form-control editor">{{ old('description') }}</textarea>
                                    </div>
                                    @if (auth('admin')->user()?->can('tambah.rencana'))
                                        <div class="mb-3">
                                            <label class="form-label"></label>
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>
    </section>
    </div>
@endsection
