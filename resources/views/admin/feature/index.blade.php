@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Fitur</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.fitur'))
                        <a href="{{ route('admin_feature_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>Tambah Fitur</a>
                        @endif
                        @if (auth('admin')->user()?->can('hapus.fitur'))
                        <a href="{{ route('admin_feature_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Ikon</th>
                                                    <th>Nama Ikon</th>
                                                    <th>Heading</th>
                                                    @if (auth('admin')->user()?->can('edit.fitur') || auth('admin')->user()?->can('hapus.fitur'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($features as $feature)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td><i class="{{ $feature->icon }} fz_30"></i></td>
                                                    <td>{{ $feature->icon }}</td>
                                                    <td>{{ $feature->heading }}</td>
                                                    @if (auth('admin')->user()?->can('edit.fitur') || auth('admin')->user()?->can('hapus.fitur'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.fitur'))
                                                        <a href="{{ route('admin_feature_edit', $feature->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.fitur'))
                                                        <a href="{{ route('admin_feature_delete', $feature->id) }}" class="btn btn-danger" onClick="return confirm('Feature will be move to trash. Are you sure?');"><i class="fas fa-trash"></i></a>
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
