@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Fasilitas {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_package_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                    @if (auth('admin')->user()?->can('sampah.fasilitas.paket'))
                        <a href="{{ route('admin_package_amenity_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                    @endif
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <h4>Termasuk</h4>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 1%; white-space: nowrap;">SL</th>
                                                <th>Nama</th>
                                                @if (auth('admin')->user()?->can('lihat.galery.fasilitas') || auth('admin')->user()?->can('hapus.fasilitas.paket'))
                                                <th style="width: 1%; white-space: nowrap;">Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_amenities_includes as $item)
                                            <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                {{ $item->amenities_name }}
                                            </td>
                                            @if (auth('admin')->user()?->can('lihat.galery.fasilitas') || auth('admin')->user()?->can('hapus.fasilitas.paket'))
                                            <td style="width: 1%; white-space: nowrap;" class="pt_10 pb_10 text-end">
                                                @if (auth('admin')->user()?->can('lihat.galery.fasilitas'))
                                                    <span class="btn btn-warning btn-sm mr-3" style="margin-right: 10px" title="Jumlah Foto"> {{ $item->photo->count() }} </span>
                                                    <a href="{{ route('package_amenity_photos', ['package_id' => $package->id, 'amenity_id' => $item->id]) }}" class="btn btn-primary" style="margin-right: 5px" title="Tambah Foto">
                                                    <i class="fas fa-images" title="Tambah Foto"></i>
                                                    </a>
                                                @endif
                                                @if (auth('admin')->user()?->can('hapus.fasilitas.paket'))
                                                    <a href="{{ route('package_amenities_delete', $item->id) }}" class="btn btn-danger" onClick="return confirm('Fasilitas ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
                                                @endif
                                            </td>
                                            @endif
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                                <h4>Tidak termasuk</h4>
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 1%; white-space: nowrap;">SL</th>
                                                <th>Nama</th>
                                                @if (auth('admin')->user()?->can('hapus.fasilitas.paket'))
                                                <th style="width: 1%; white-space: nowrap;">Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_amenities_excludes as $item)
                                            <tr>
                                            <td style="width: 1%; white-space: nowrap;">{{ $loop->iteration }}</td>
                                            <td>
                                                {{ $item->amenities_name }}
                                            </td>
                                            @if (auth('admin')->user()?->can('hapus.fasilitas.paket'))
                                                <td style="width: 1%; white-space: nowrap;" class="pt_10 pb_10 text-end">
                                                    <a href="{{ route('package_amenities_delete', $item->id) }}" class="btn btn-danger" onClick="return confirm('Fasilitas ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
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

                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('package_amenities_submit', $package->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Fasilitas *</label>
                                        <input type="text" name="amenities_name" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <select name="type" class="form-select">
                                            <option value="include">Termasuk</option>
                                            <option value="exclude">Tidak Termasuk</option>
                                        </select>
                                    </div>
                                    @if (auth('admin')->user()?->can('tambah.fasilitas.paket'))
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
