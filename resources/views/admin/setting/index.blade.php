@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Pengaturan Website</h1>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_setting_update', $setting->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Logo *</label>
                                                <div><img src="{{ asset('uploads/'.$setting->logo) }}" class="w_200"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Ganti Logo *</label>
                                                <div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="logo" name="fileInput1" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer1"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Foto Favicon *</label>
                                                <div><img src="{{ asset('uploads/'.$setting->favicon) }}" class="w_50"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Ganti Favicon *</label>
                                                <div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="favicon" name="fileInput2" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer2"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Foto Banner *</label>
                                                <div><img src="{{ asset('uploads/'.$setting->banner) }}" class="w_150"></div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Ganti Banner *</label>
                                                <div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="banner" name="fileInput3" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer3"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Telepon Bilah Atas *</label>
                                                <input type="text" name="top_bar_phone" class="form-control" value="{{ $setting->top_bar_phone }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Email Bilah Atas *</label>
                                                <input type="text" name="top_bar_email" class="form-control" value="{{ $setting->top_bar_email }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Alamat Footer *</label>
                                        <input type="text" name="footer_address" class="form-control" value="{{ $setting->footer_address }}">
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Telepon Footer *</label>
                                                <input type="text" name="footer_phone" class="form-control" value="{{ $setting->footer_phone }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Email Footer *</label>
                                                <input type="text" name="footer_email" class="form-control" value="{{ $setting->footer_email }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Facebook *</label>
                                        <input type="text" name="facebook" class="form-control" value="{{ $setting->facebook }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Twitter *</label>
                                        <input type="text" name="twitter" class="form-control" value="{{ $setting->twitter }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Youtube *</label>
                                        <input type="text" name="youtube" class="form-control" value="{{ $setting->youtube }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Linkedin *</label>
                                        <input type="text" name="linkedin" class="form-control" value="{{ $setting->linkedin }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Instagram *</label>
                                        <input type="text" name="instagram" class="form-control" value="{{ $setting->instagram }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Hak Cipta *</label>
                                        <input type="text" name="copyright" class="form-control" value="{{ $setting->copyright }}">
                                    </div>
                                    @if (auth('admin')->user()?->can('edit.pengaturan'))
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Perbarui</button>
                                    </div>
                                    @endif
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
