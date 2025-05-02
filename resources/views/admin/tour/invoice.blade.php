@extends('admin.layout.master')

@section('main_content')
@include('admin.layout.nav')
@include('admin.layout.sidebar')

<div class="main-content">
    <section class="section">
        <div class="section-body">
            <div class="invoice p-4 shadow-sm border rounded bg-white" id="print_area">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="text-uppercase">Faktur</h4>
                    <span class="text-muted">No Faktur: <strong>{{ $booking->invoice_no }}</strong></span>
                </div>

                <hr class="invoice-above-table">

                <div class="row mb-4">
                    <div class="col-md-6">
                        <h6>Untuk:</h6>
                        <p class="mb-1"><strong>{{ $booking->user->name }}</strong></p>
                        <p class="mb-1">{{ $booking->user->email }}</p>
                        <p class="mb-1">{{ $booking->user->phone }}</p>
                    </div>
                    <div class="col-md-6 text-md-end">
                        <h6>Disetujui oleh:</h6>
                        <p class="mb-1"><strong>{{ Auth::guard('admin')->user()->name }}</strong></p>
                        {{-- <p class="mb-1">{{ Auth::guard('admin')->user()->email }}</p> --}}
                        <p class="mb-1">Tanggal Pemesanan: {{ $booking->created_at->format('d M Y') }}</p>
                    </div>
                </div>

                <div class="table-responsive mb-4">
                    <table class="table table-bordered">
                        <tbody>
                            <tr>
                                <th class="w-25">Informasi Tur</th>
                                <td>
                                    Mulai: {{ $booking->tour->tour_start_date }} <br>
                                    Berakhir: {{ $booking->tour->tour_end_date }}
                                </td>
                            </tr>
                            <tr>
                                <th>Nama Paket</th>
                                <td>{{ $booking->package->name }}</td>
                            </tr>
                            <tr>
                                <th>Metode Pembayaran</th>
                                <td>
                                    @switch($booking->payment_method)
                                        @case('Midtrans') Non-tunai @break
                                        @case('Cash') Tunai @break
                                        @case('Stripe') Stripe @break
                                        @case('PayPal') PayPal @break
                                        @default -
                                    @endswitch
                                </td>
                            </tr>
                            <tr>
                                <th>Status Pembayaran</th>
                                <td>
                                    @switch($booking->payment_status)
                                        @case('Completed')
                                            <span class="badge badge-success">Tuntas</span>
                                            @break
                                        @case('Pending')
                                            <span class="badge badge-danger">Tertunda</span>
                                            @break
                                        @case('Cancel')
                                            <span class="badge badge-warning">Dibatalkan</span>
                                            @break
                                        @case('Expired')
                                            <span class="badge badge-secondary">Kadaluarsa</span>
                                            @break
                                        @case('Denied')
                                            <span class="badge badge-dark">Ditolak</span>
                                            @break
                                    @endswitch
                                </td>
                            </tr>
                            <tr>
                                <th>Jumlah Orang</th>
                                <td>{{ $booking->total_person }}</td>
                            </tr>
                            <tr>
                                <th>Total Bayar</th>
                                <td><strong>Rp. {{ number_format($booking->paid_amount, 0, ',', '.') }}</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="text-md-end">
                    <a href="javascript:window.print();" class="btn btn-primary print-invoice-button">
                        <i class="fas fa-print me-1"></i> Cetak Faktur
                    </a>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection
