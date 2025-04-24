@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Item Beranda</h1>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_home_page_item_update', $home_items->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <h3>Bagian Destinasi</h3>
                                    <div class="mb-3">
                                        <label class="form-label">Destinasi Heading *</label>
                                        <input type="text" class="form-control" name="destination_heading"
                                            value="{{ $home_items->destination_heading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Destinasi Sub Heading *</label>
                                        <input type="text" class="form-control" name="destination_subheading"
                                            value="{{ $home_items->destination_subheading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Destinasi Status</label>
                                        <select name="destination_status" class="form-select">
                                            <option value="Show" @if ($home_items->destination_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($home_items->destination_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    <br>

                                    <h3>Bagian Fitur</h3>
                                    <div class="mb-3">
                                        <label class="form-label">Status Fitur</label>
                                        <select name="featured_status" class="form-select">
                                            <option value="Show" @if ($home_items->featured_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($home_items->featured_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    <br>

                                    <h3>Bagian Paket</h3>
                                    <div class="mb-3">
                                        <label class="form-label">Paket Heading *</label>
                                        <input type="text" class="form-control" name="package_heading"
                                            value="{{ $home_items->package_heading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Paket Sub Heading *</label>
                                        <input type="text" class="form-control" name="package_subheading"
                                            value="{{ $home_items->package_subheading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Paket Status</label>
                                        <select name="package_status" class="form-select">
                                            <option value="Show" @if ($home_items->package_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($home_items->package_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    <br>

                                    <h3>Bagian Testimonial</h3>
                                    <div class="row">
                                        <div class="col md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Gambar Testimonial Lama</label>
                                                <div><img src="{{ asset('uploads/'.$home_items->testimonial_background) }}" class="w_200"></div>
                                            </div>
                                        </div>
                                        <div class="col md-6">
                                            <div class="mb-3">
                                                <div><label class="form-label">Ganti Gambar Testimonial *</label></div>
                                                <div><div class="upload-wrapper">
                                                    <div class="mini-drop-zone">
                                                      <input type="file" name="testimonial_background" name="fileInput1" class="file-input" accept="image/*">
                                                      <div class="drop-content">
                                                        <span class="drop-title"> <i class="upload-icon">📷</i> Pilih Foto</span>
                                                      </div>
                                                    </div>
                                                    <div class="preview-container" id="previewContainer1"></div>
                                                </div></div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Testimoni Heading *</label>
                                        <input type="text" class="form-control" name="testimonial_heading"
                                            value="{{ $home_items->testimonial_heading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Testimoni Sub Heading *</label>
                                        <input type="text" class="form-control" name="testimonial_subheading"
                                            value="{{ $home_items->testimonial_subheading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Testimoni Status</label>
                                        <select name="testimonial_status" class="form-select">
                                            <option value="Show" @if ($home_items->testimonial_status == 'Show') selected @endif>Tampilan
                                            </option>
                                            <option value="Hide" @if ($home_items->testimonial_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    <br>

                                    <h3>Bagian Blog</h3>
                                    <div class="mb-3">
                                        <label class="form-label">Blog Heading *</label>
                                        <input type="text" class="form-control" name="blog_heading"
                                            value="{{ $home_items->blog_heading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Blog Sub Heading *</label>
                                        <input type="text" class="form-control" name="blog_subheading"
                                            value="{{ $home_items->blog_subheading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Blog Status</label>
                                        <select name="blog_status" class="form-select">
                                            <option value="Show" @if ($home_items->blog_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($home_items->blog_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    <br>

                                    <h3>Bagian Sponsor</h3>
                                    <div class="mb-3">
                                        <label class="form-label">Blog Heading *</label>
                                        <input type="text" class="form-control" name="sponsor_heading" value="{{ $home_items->sponsor_heading }}">
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Sponsor Status</label>
                                        <select name="sponsor_status" class="form-select">
                                            <option value="Show" @if ($home_items->sponsor_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($home_items->sponsor_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>

                                    @if (auth('admin')->user()?->can('edit.beranda'))
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">perbarui</button>
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
