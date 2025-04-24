@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Foto {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_package_index') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                        Kembali</a>
                    @if (auth('admin')->user()?->can('sampah.gsleryFoto.paket'))
                        <a href="{{ route('admin_package_photo_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i>
                            Sampah ( {{ $trashCount }} )</a>
                    @endif
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Foto</th>
                                                @if (auth('admin')->user()?->can('hapus.galeryFoto.paket'))
                                                <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_photos as $package_photo)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/' . $package_photo->photo) }}"
                                                            class="w_150">
                                                    </td>
                                                    @if (auth('admin')->user()?->can('hapus.galeryFoto.paket'))
                                                        <td class="pt_10 pb_10">
                                                            <a href="{{ route('package_photos_delete', $package_photo->id) }}"
                                                                class="btn btn-danger"
                                                                onClick="return confirm('Foto akan dipindahkan ke sampah. Apakah anda yakin?');"><i
                                                                    class="fas fa-trash"></i></a>
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
                                <form action="{{ route('package_photos_submit', $package->id) }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Foto *</label>
                                        <div>
                                            <div class="upload-wrapper">
                                                <div class="mini-drop-zone">
                                                    <input type="file" name="photo" name="fileInput1"
                                                        class="file-input" accept="image/*">
                                                    <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih
                                                            Foto</span>
                                                    </div>
                                                </div>
                                                <div class="preview-container" id="previewContainer1"></div>
                                            </div>
                                        </div>
                                    </div>
                                    @if (auth('admin')->user()?->can('tambah.galeryFoto.paket'))
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
