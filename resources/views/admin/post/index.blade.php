@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Blog Post</h1>
                    <div class="ml-auto">

                        @if (auth('admin')->user()?->can('tambah.blogPost'))
                            <a href="{{ route('admin_post_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Blog Post</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.blogPost'))
                            <a href="{{ route('admin_blog_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Foto</th>
                                                    <th>Judul</th>
                                                    <th>kategori</th>
                                                    @if (auth('admin')->user()?->can('edit.blogPost') || auth('admin')->user()?->can('hapus.blogPost'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($posts as $post)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/'.$post->photo) }}" alt="{{ $post->name }}" class="w_150">
                                                    </td>
                                                    <td>{{ $post->title }}</td>
                                                    <td>
                                                        {{ $post->blog_category->name }}
                                                    </td>

                                                    @if (auth('admin')->user()?->can('edit.blogPost') || auth('admin')->user()?->can('hapus.blogPost'))
                                                        <td class="pt_10 pb_10">

                                                            @if (auth('admin')->user()?->can('edit.blogPost'))
                                                                <a href="{{ route('admin_post_edit', $post->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                            @endif

                                                            @if (auth('admin')->user()?->can('hapus.blogPost'))
                                                                <a href="{{ route('admin_post_delete', $post->id) }}" class="btn btn-danger" onClick="return confirm('Blog will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
                                                            @endif
                                                            
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
                    </div>
                </div>
            </section>
        </div>
@endsection
