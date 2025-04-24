@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Item Tentang</h1>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_about_item_update', $about_item->id) }}" method="post">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Status Fitur</label>
                                        <select name="featured_status" class="form-select">
                                            <option value="Show" @if ($about_item->featured_status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($about_item->featured_status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>

                                    @if (auth('admin')->user()?->can('edit.tentang'))
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Perbarui</button>
                                    </div>
                                    @endif
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
