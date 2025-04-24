@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>Laporan Pemesanan</h1>
            </div>

            <form action="{{ route('admin_booking_filter') }}" method="GET" class="mb-4">
                <div class="row">
                    <div class="col-md-4">
                        <label>Dari Tanggal</label>
                        <input type="date" name="start_date" class="form-control" value="{{ request('start_date') }}">
                    </div>
                    <div class="col-md-4">
                        <label>Sampai Tanggal</label>
                        <input type="date" name="end_date" class="form-control" value="{{ request('end_date') }}">
                    </div>
                    <div class="col-md-4 d-flex align-items-end mb-1">
                        <button type="submit" class="btn btn-primary" style="margin-right: 10px">Filter</button>
                        <a href="{{ route('admin.laporan.pemesanan') }}" class="btn btn-danger">Reset Tanggal</a>
                    </div>
                </div>
            </form>

            @if(count($bookings))
            <div class="d-flex justify-content-between align-items-center">
                <div class="alert alert-success">
                    Total Pemasukan: <strong>Rp {{ number_format($bookings->sum('paid_amount'), 0, ',', '.') }}</strong>
                </div>
                <div class="align-items-center">

                    @if (auth('admin')->user()?->can('simpanpdf.laporan'))
                        <a href="{{ route('admin.bookings.export.pdf', request()->only(['start_date', 'end_date'])) }}" class="btn btn-danger mb-3">
                            <i class="fas fa-file-pdf"></i> Simpan Ke PDF
                        </a>
                    @endif

                    @if (auth('admin')->user()?->can('simpanexcel.laporan'))
                    <a href="{{ route('admin.bookings.export.excel', request()->only(['start_date', 'end_date'])) }}" class="btn btn-success mb-3">
                        <i class="fas fa-file-excel"></i> Simpan Ke Excel
                    </a>
                    @endif

                </div>
            </div>
            @endif


            <div class="section-body mb-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="example1">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>No Faktur</th>
                                                <th>Info Pengguna</th>
                                                <th>Jumlah Orang</th>
                                                <th>Total Bayar</th>
                                                <th>Metode Pembayaran</th>
                                                <th>Status Pembayaran</th>
                                                <th>Faktur</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($bookings as $data)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $data->invoice_no }}</td>
                                                <td>
                                                    <strong>Nama : </strong>{{ $data->user->name }}<br>
                                                    <strong>Email : </strong>{{ $data->user->email }}<br>
                                                    <strong>Telpon : </strong>{{ $data->user->phone }}
                                                </td>
                                                <td>{{ $data->total_person }}</td>
                                                <td>{{ $data->paid_amount }}</td>
                                                <td>
                                                    @if ($data->payment_method == 'Midtrans')
                                                    <p> Non-tunai </p>
                                                    @elseif ($data->payment_method == 'Cash')
                                                    <p> Cash </p>
                                                    @elseif ($data->payment_method == 'Stripe')
                                                    <p> Stripe </p>
                                                    @elseif ($data->payment_method == 'PayPal')
                                                    <p> Paypal </p>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($data->payment_status == 'Completed')
                                                        <span class="badge badge-success">Tuntas</span>
                                                    @elseif ($data->payment_status == 'Pending')
                                                        <span class="badge badge-danger mb-3">Tertunda</span><br>
                                                    @elseif ($data->payment_status == 'Cancel')
                                                        <span class="badge badge-warning">Dibatalkan</span>
                                                    @elseif ($data->payment_status == 'Expired')
                                                        <span class="badge badge-secondary">Kadaluarsa</span>
                                                    @elseif ($data->payment_status == 'Denied')
                                                        <span class="badge badge-danger">Ditolak</span>
                                                    @endif
                                                </td>

                                                <td>
                                                    <a href="{{ route('admin_tour_invoice',$data->invoice_no) }}" class="badge badge-primary text-decoration-none" target="_blank">Lihat Faktur</a>
                                                </td>
                                                
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
