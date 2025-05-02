@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Blog Post</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_post_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_post_edit_submit',$post->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Foto</label>
                                        <div><img src="{{ asset('uploads/'.$post->photo) }}" class="w_200"></div>
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
                                    <div class="mb-3">
                                        <label class="form-label">Judul *</label>
                                        <input type="text" class="form-control" name="title" value="{{ $post->title }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Slug *</label>
                                        <input type="text" class="form-control" name="slug" value="{{ $post->slug }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi *</label>
                                        <textarea name="description" class="form-control editor" cols="30" rows="10">{{ $post->description }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Deskripsi singkat *</label>
                                        <textarea name="short_description" class="form-control h_100" cols="30" rows="10">{{ $post->short_description }}</textarea>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">kategori*</label>
                                        <select name="blog_category_id" class="form-select">
                                            @foreach ($categories as $category)
                                                <option value="{{ $category->id }}" @if($category->id == $post->blog_category_id) selected @endif>{{ $category->name }}</option>
                                            @endforeach
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
