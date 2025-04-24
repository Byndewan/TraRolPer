@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Sponsor</h1>
                <div class="ml-auto">
                    @if (auth('admin')->user()?->can('sampah.sponsor'))
                    <a href="{{ route('admin_sponsor_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                @if (auth('admin')->user()?->can('hapus.sponsor'))
                                                <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($sponsor_photos as $sponsor_photo)
                                            <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                <img src="{{ asset('uploads/'.$sponsor_photo->photo) }}" class="w_150">

                                            </td>
                                            @if (auth('admin')->user()?->can('sampah.sponsor'))
                                            <td class="pt_10 pb_10">
                                                <a href="{{ route('sponsor_delete', $sponsor_photo->id) }}" class="btn btn-danger" onClick="return confirm('Sponsor ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
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
                                <form action="{{ route('sponsor_submit') }}" method="post" enctype="multipart/form-data">
                                    @csrf
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
                                    @if (auth('admin')->user()?->can('tambah.sponsor'))
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
