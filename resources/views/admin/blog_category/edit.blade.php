@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Kategori Blog</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_blog_category_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_blog_category_edit_submit',$blog_category->id) }}" method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Nama Kategori *</label>
                                        <input type="text" class="form-control" name="name"
                                            value="{{ $blog_category->name }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Slug *</label>
                                        <input type="text" class="form-control" name="slug"
                                            value="{{ $blog_category->slug }}">
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
