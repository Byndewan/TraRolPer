@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Tambah Destinasi</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_destination_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_destination_create_submit') }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Foto *</label>
                                        <div><div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="featured_photo" name="fileInput1" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer1"></div>
                                                </div></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Nama Destinasi *</label>
                                                <input type="text" class="form-control" name="name"
                                                    value="{{ old('name') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Slug *</label>
                                                <input type="text" class="form-control" name="slug"
                                                    value="{{ old('slug') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi *</label>
                                        <textarea name="description" class="form-control editor" cols="30" rows="10">{{ old('description') }}</textarea>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Negara</label>
                                                <input type="text" class="form-control" name="country"
                                                    value="{{ old('country') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Bahasa</label>
                                                <input type="text" class="form-control" name="language"
                                                    value="{{ old('language') }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Mata Uang</label>
                                                <input type="text" class="form-control" name="currency"
                                                    value="{{ old('currency') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Area</label>
                                                <input type="text" class="form-control" name="area"
                                                    value="{{ old('area') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Zona Waktu</label>
                                                <input type="text" class="form-control" name="timezone"
                                                    value="{{ old('timezone') }}">
                                            </div>
                                        </div>
                                    </div>

                                    {{-- <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Code Negara</label>
                                                <input type="text" class="form-control" placeholder="misalnya: TH, ID" name="country_code"
                                                    value="{{ old('country_code') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Munculkan di Map?</label>
                                                <select name="is_visible_on_map" class="form-select">
                                                    <option value="1">Iya</option>
                                                    <option value="0">Tidak</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div> --}}

                                    <div class="mb-3">
                                        <label class="form-label">Persyaratan VISA</label>
                                        <textarea name="visa_requirement" class="form-control editor" cols="30" rows="10">{{ old('visa_requirement') }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Aktivitas</label>
                                        <textarea name="activity" class="form-control editor" cols="30" rows="10">{{ old('activity') }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Waktu Terbaik untuk Berkunjung</label>
                                        <textarea name="best_time" class="form-control editor" cols="30" rows="10">{{ old('best_time') }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Kesehatan & Keselamatan</label>
                                        <textarea name="health_safety" class="form-control editor" cols="30" rows="10">{{ old('health_safety') }}</textarea>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Map ( Kode Iframe )</label>
                                        <textarea name="map" class="form-control h_200" cols="30" rows="10">{{ old('map') }}</textarea>
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
