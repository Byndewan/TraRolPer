@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Kategori Blog</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.blogKategori'))
                        <a href="{{ route('admin_blog_category_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Kategori</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.blogKategori'))
                        <a href="{{ route('admin_blog_category_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                        @endif
                    </div>
                </div>
                <div class="section-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="example1">
                                            <thead>
                                                <tr>
                                                    <th>SL</th>
                                                    <th>Nama Kategori</th>
                                                    <th>Slug</th>
                                                    @if (auth('admin')->user()?->can('edit.blogKategori') || auth('admin')->user()?->can('hapus.blogKategori'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($blog_categories as $blog_category)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $blog_category->name }}</td>
                                                    <td>{{ $blog_category->slug }}</td>
                                                    @if (auth('admin')->user()?->can('edit.blogKategori') || auth('admin')->user()?->can('hapus.blogKategori'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.blogKategori'))
                                                        <a href="{{ route('admin_blog_category_edit', $blog_category->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.blogKategori'))
                                                        <a href="{{ route('admin_blog_category_delete', $blog_category->id) }}" class="btn btn-danger" onClick="return confirm('Category Blog will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
                                                        @endif
                                                    </td>
                                                </tr>
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
@endsection
