@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Pengguna</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_users') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_user_edit_submit',$user->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Foto Pengguna</label>
                                        <div>
                                            @if ($user->photo != '')
                                            <img src="{{ asset('uploads/'.$user->photo) }}" class="w_200">
                                            @else
                                            <img src="{{ asset('uploads/default.png') }}" alt="" class="w_200">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Ganti Foto *</label>
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
                                    <div class="mb-3">
                                        <label class="form-label">Nama *</label>
                                        <input type="text" class="form-control" name="name"
                                            value="{{ $user->name }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Email *</label>
                                        <input type="text" class="form-control" name="email"
                                            value="{{ $user->email }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Telpon *</label>
                                        <input type="text" class="form-control" name="phone"
                                            value="{{ $user->phone }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Negara *</label>
                                        <input type="text" class="form-control" name="country"
                                            value="{{ $user->country }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Alamat *</label>
                                        <input type="text" class="form-control" name="address"
                                            value="{{ $user->address }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Daerah *</label>
                                        <input type="text" class="form-control" name="state"
                                            value="{{ $user->state }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Kota *</label>
                                        <input type="text" class="form-control" name="city"
                                            value="{{ $user->city }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Kode Pos *</label>
                                        <input type="text" class="form-control" name="zip"
                                            value="{{ $user->zip }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Kata Sandi *</label>
                                        <input type="password" class="form-control" name="password">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Status *</label>
                                        <select name="status" class="form-select">
                                            <option value="1" @if($user->status == 1) selected @endif>Aktif</option>
                                            <option value="0" @if($user->status == 0) selected @endif>Tertunda</option>
                                        </select>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Perbarui</button>
                                    </div>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
    </div>
    </div>
    </section>
    </div>
@endsection
