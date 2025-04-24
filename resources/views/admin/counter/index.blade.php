@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Ubah Item Counter</h1>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_counter_item_update', $counter_items->id) }}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 1 Nomor *</label>
                                                <input type="text" class="form-control" name="item1_number"
                                                    value="{{ $counter_items->item1_number }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 1 Teks *</label>
                                                <input type="text" class="form-control" name="item1_text"
                                                    value="{{ $counter_items->item1_text }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 2 Nomor *</label>
                                                <input type="text" class="form-control" name="item2_number"
                                                    value="{{ $counter_items->item2_number }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 2 Teks *</label>
                                                <input type="text" class="form-control" name="item2_text"
                                                    value="{{ $counter_items->item2_text }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 3 Nomor *</label>
                                                <input type="text" class="form-control" name="item3_number"
                                                    value="{{ $counter_items->item3_number }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 3 Teks *</label>
                                                <input type="text" class="form-control" name="item3_text"
                                                    value="{{ $counter_items->item3_text }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 4 Nomor *</label>
                                                <input type="text" class="form-control" name="item4_number"
                                                    value="{{ $counter_items->item4_number }}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Item 4 Teks *</label>
                                                <input type="text" class="form-control" name="item4_text"
                                                    value="{{ $counter_items->item4_text }}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">Status</label>
                                        <select name="status" class="form-select">
                                            <option value="Show" @if ($counter_items->status == 'Show') selected @endif>Tampilkan
                                            </option>
                                            <option value="Hide" @if ($counter_items->status == 'Hide') selected @endif>Sembunyikan
                                            </option>
                                        </select>
                                    </div>
                                    @if (auth('admin')->user()?->can('edit.counter'))
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
