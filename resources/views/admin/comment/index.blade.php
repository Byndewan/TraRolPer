@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Komentar</h1>
                    {{-- <div class="ml-auto">
                        <a href="{{ route('admin_review_trash') }}" class="btn btn-danger mr_10"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                    </div> --}}
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
                                                    <th>Nama Pengguna</th>
                                                    <th>Komentar</th>
                                                    @if (auth('admin')->user()?->can('approve.commentBlog') || auth('admin')->user()?->can('hapus.commentBlog'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($comments as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->name }}</td>
                                                    <td>{{ $item->comment }}</td>
                                                    @if (auth('admin')->user()?->can('approve.commentBlog') || auth('admin')->user()?->can('hapus.commentBlog'))
                                                    <td class="pt_10 pb_10 d-flex">
                                                        @if (auth('admin')->user()?->can('approve.commentBlog'))
                                                            <a href="{{ route('comment.approve', $item->id) }}" class="btn btn-success mx-3" title="Setujui"><i class="fas fa-check"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.commentBlog'))
                                                            <a href="{{ route('comment.delete', $item->id) }}" title="Hapus" class="btn btn-danger" onClick="return confirm('Komentar akan di hapus secara permanen. Apa kamu yakin?');"><i class="fas fa-trash"></i></a>
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
