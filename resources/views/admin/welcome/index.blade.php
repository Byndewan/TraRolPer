@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Item Welcom</h1>
            </div>
            <div class="section-body">
                <div class="row"></div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_welcome_item_update', $welcome_items->id) }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-4">
                                                <label class="form-label">Foto Sebelumnya</label>
                                                <div><img src="{{ asset('uploads/' . $welcome_items->photo) }}"
                                                        class="w_300">
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Ganti Foto</label>
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
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Video Sebelumnya</label>
                                                <div>
                                                    <iframe class="iframe1"
                                                        src="https://www.youtube.com/embed/{{ $welcome_items->video }}"
                                                        title="YouTube video player" frameborder="0"
                                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                                        referrerpolicy="strict-origin-when-cross-origin"
                                                        allowfullscreen>
                                                    </iframe>
                                                </div>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Video ( Youtube ID )</label>
                                                <input type="text" class="form-control" name="video"
                                                    value="{{ $welcome_items->video }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Heading *</label>
                                        <input type="text" class="form-control" name="heading"
                                            value="{{ $welcome_items->heading }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi *</label>
                                        <textarea name="description" class="form-control editor" cols="30" rows="10">{{ $welcome_items->description }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Teks Tombol *</label>
                                        <input type="text" class="form-control" name="button_text"
                                            value="{{ $welcome_items->button_text }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Link Tombol *</label>
                                        <input type="text" class="form-control" name="button_link"
                                            value="{{ $welcome_items->button_link }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Status</label>
                                        <select name="status" class="form-select">
                                            <option value="Show" @if ($welcome_items->status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($welcome_items->status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    @if (auth('admin')->user()?->can('edit.welcome'))
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
