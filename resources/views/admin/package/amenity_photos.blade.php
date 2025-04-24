@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Tambah Foto untuk "{{ $package_amenities->amenities_name }}"</h1>
                <div class="ml-auto">
                    <a href="{{ route('package_amenities',$package->id) }}" class="btn btn-primary"><i class="fas fa-plus"></i> Kembali</a>
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
                                                @if (auth('admin')->user()?->can('hapus.galery.fasilitas'))
                                                    <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_amenity_photos as $package_photo)
                                            <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                <img src="{{ asset('uploads/'.$package_photo->photo) }}" class="w_150">
                                            </td>
                                            @if (auth('admin')->user()?->can('hapus.galery.fasilitas'))
                                            <td class="pt_10 pb_10">
                                                <a href="{{ route('package_amenity_photos_delete', $package_amenities->id) }}" class="btn btn-danger" onClick="return confirm('Foto akan di hapus secara permanen!. Apakah anda yakin?');">
                                                    <i class="fas fa-trash"></i>
                                                </a>
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
                                <form action="{{ route('package_amenity_photos_submit', ['package_id' => $package->id, 'amenity_id' => $package_amenities->id]) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="package_id" value="{{ $package->id }}">

                                    <div class="mb-3">
                                        <label class="form-label">Foto *</label>
                                        <div><div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="photo" name="fileInput1" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer1"></div>
                                                </div></div>
                                    </div>
                                    @if (auth('admin')->user()?->can('tambah.galery.fasilitas'))
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
