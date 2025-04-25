@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Tambah Admin</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_admins') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_admin_create_submit') }}" method="post"
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
                                    <div class="mb-3">
                                        <label class="form-label">Nama *</label>
                                        <input type="text" class="form-control" name="name"
                                            value="{{ old('name') }}">
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Email *</label>
                                                <input type="text" class="form-control" name="email"
                                                    value="{{ old('email') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Kata Sandi *</label>
                                                <input type="password" class="form-control" name="password">
                                            </div>
                                        </div>
                                    </div>



                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Buat</button>
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
