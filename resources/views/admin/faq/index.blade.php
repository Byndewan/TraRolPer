@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Pertanyaan</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('tambah.pertanyaan'))
                            <a href="{{ route('admin_faq_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Pertanyaan</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.pertanyaan'))
                            <a href="{{ route('admin_faq_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Pertanyaan</th>
                                                    @if (auth('admin')->user()?->can('edit.pertanyaan') || auth('admin')->user()?->can('hapus.pertanyaan'))
                                                        <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($faqs as $faq)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $faq->question }}</td>

                                                    @if (auth('admin')->user()?->can('edit.pertanyaan') || auth('admin')->user()?->can('hapus.pertanyaan'))
                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.pertanyaan'))
                                                            <a href="{{ route('admin_faq_edit', $faq->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if (auth('admin')->user()?->can('hapus.pertanyaan'))
                                                            <a href="{{ route('admin_faq_delete', $faq->id) }}" class="btn btn-danger" onClick="return confirm('Pertanyaan ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
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
