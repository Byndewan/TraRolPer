@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Tambah Tur</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_tour_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('admin_tour_create_submit') }}" method="post"
                                    enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Pilih Paket *</label>
                                                <select name="package_id" class="form-select">
                                                    @foreach ($packages as $package)
                                                        <option value="{{ $package->id }}">{{ $package->name }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="mb-3">
                                                <label class="form-label">Total Kursi *</label>
                                                <input type="text" autocomplete="off" name="total_seat" class="form-control"
                                                    value="{{ old('total_seat') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Tanggal Mulai Tur *</label>
                                                <input type="text" autocomplete="off" id="datepicker1" autocomplete="off" name="tour_start_date"
                                                    class="form-control" value="{{ old('tour_start_date') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Tanggal Berakhir Tur *</label>
                                                <input type="text" autocomplete="off" id="datepicker2" name="tour_end_date"
                                                    class="form-control" value="{{ old('tour_end_date') }}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="mb-3">
                                                <label class="form-label">Tanggal berakhirnya Pemesanan *</label>
                                                <input type="text" autocomplete="off" id="datepicker3" name="booking_end_date"
                                                    class="form-control" value="{{ old('booking_end_date') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Buat</button>
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
