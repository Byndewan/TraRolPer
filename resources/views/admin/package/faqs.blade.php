@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Pertanyaan {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_package_index') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                        Kembali</a>
                    @if (auth('admin')->user()?->can('sampah.pertanyaan.paket'))
                        <a href="{{ route('admin_package_faq_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i>
                            Sampah ( {{ $trashCount }} )</a>
                    @endif
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Pertanyaan</th>
                                                @if (auth('admin')->user()?->can('hapus.pertanyaan.paket'))
                                                    <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_faqs as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->question }}</td>
                                                    @if (auth('admin')->user()?->can('hapus.pertanyaan.paket'))
                                                        <td class="pt_10 pb_10">
                                                            <a href="{{ route('package_faqs_delete', $item->id) }}"
                                                                class="btn btn-danger"
                                                                onClick="return confirm('Pertanyaan ini akan dipindahkan ke sampah. Apakah anda yakin?');"><i
                                                                    class="fas fa-trash"></i></a>
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

                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('package_faqs_submit', $package->id) }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Pertanyaan</label>
                                        <input type="text" name="question" class="form-control">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Jawaban</label>
                                        <textarea name="answer" class="form-control editor" cols="30" rows="10"></textarea>
                                    </div>
                                    @if (auth('admin')->user()?->can('hapus.pertanyaan.paket'))
                                        <div class="mb-3">
                                            <label class="form-label"></label>
                                            <button type="submit" class="btn btn-primary">Simpan</button>
                                        </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>
    </section>
    </div>
@endsection
