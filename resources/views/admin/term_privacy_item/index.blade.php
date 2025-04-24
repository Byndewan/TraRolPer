@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Ketentuan Penggunaan & Kebijakan Privasi</h1>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_term_privacy_item_update', $term_privacy_item->id) }}"
                                    method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Ketentuan Penggunaan *</label>
                                        <textarea name="terms" class="form-control editor" cols="30" rows="10">{{ $term_privacy_item->terms }}</textarea>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Kebijakan Privasi *</label>
                                        <textarea name="privacy" class="form-control editor" cols="30" rows="10">{{ $term_privacy_item->privacy }}</textarea>
                                    </div>

                                    @if (auth('admin')->user()?->can(' edit.privacy.policy'))
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Perbarui</button>
                                    </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
</div>
@endsection
