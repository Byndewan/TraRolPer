@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Pertanyaan</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_faq_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_faq_edit_submit',$faq->id) }}" method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Pertanyaan *</label>
                                        <input type="text" class="form-control" name="question"
                                            value="{{ $faq->question }}">
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label">Jawaban *</label>
                                        <textarea name="answer" class="form-control h_100" cols="30" rows="10">{{ $faq->answer }}</textarea>
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
