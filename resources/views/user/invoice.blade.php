@extends('front.layout.master')

@section('main_content')
@php
   $setting = App\Models\Setting::where('id', 1)->first();
@endphp

<div class="page-top" style="background-image: url({{ asset('uploads/'.$setting->banner) }})">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Invoice: {{ $invoice_no }}</h2>
                <div class="breadcrumb-container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Beranda</a></li>
                        <li class="breadcrumb-item"><a href="{{ route('user_booking') }}">Pemesanan</a></li>
                        <li class="breadcrumb-item active">Faktur: {{ $invoice_no }}</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="page-content user-panel pt_70 pb_70">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-12 mb-4">
                <div class="card">
                    @include('user.sidebar')
                </div>
            </div>

            <div class="col-lg-9 col-md-12">
                <div class="invoice-container" id="print_invoice">
                    {{-- Header --}}
                    <div class="invoice-top mb-4">
                        <div class="row">
                            <div class="col-md-6">
                                <img src="{{ asset('uploads/' . $setting->logo) }}" alt="{{ env('APP_NAME') }}" class="h-60">
                            </div>
                            <div class="col-md-6 text-end invoice-top-right">
                                <h4 class="text-uppercase mb-1">Faktur</h4>
                                <h5 class="text-muted mb-0">Nomor Pesanan: {{ $invoice_no }}</h5>
                                <h5 class="text-muted">Tanggal Pemesanan: {{ $booking->created_at->format('Y-m-d') }}</h5>
                            </div>
                        </div>
                    </div>

                    <div class="invoice-middle mb-4">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mb-2">Faktur Untuk:</h4>
                                <p class="mb_0"><strong>{{ Auth::user()->name }}</strong></p>
                                <p class="mb_0">{{ Auth::user()->email }}</p>
                                <p class="mb_0">{{ Auth::user()->phone }}</p>
                                <p class="mb_0">{{ Auth::user()->address }}</p>
                                <p class="mb_0">{{ Auth::user()->city }}, {{ Auth::user()->state }}, {{ Auth::user()->country }}, {{ Auth::user()->zip }}</p>
                            </div>
                            <div class="col-md-6 text-end">
                                <h4 class="mb-2">Faktur Dari:</h4>
                                <p class="mb_0"><strong>{{ env('APP_NAME') }}</strong></p>
                                <p class="mb_0">{{ $admin_data->name }}</p>
                                <p class="mb_0">{{ $admin_data->email }}</p>
                                <p class="mb_0">Status Pembayaran: <strong>{{ $booking->payment_status }}</strong></p>
                            </div>
                        </div>
                    </div>

                    <div class="invoice-item mb-4">
                        <div class="table-responsive">
                            <table class="table table-bordered invoice-item-table">
                                <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Paket</th>
                                        <th>Tanggal Mulai</th>
                                        <th>Tanggal Berakhir</th>
                                        <th>Harga</th>
                                        <th>Jumlah Orang</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>{{ $booking->package->name }}</td>
                                        <td>{{ $booking->tour->tour_start_date }}</td>
                                        <td>{{ $booking->tour->tour_end_date }}</td>
                                        <td>Rp. {{ number_format($booking->package->price, 0, ',', '.') }}</td>
                                        <td>{{ $booking->total_person }}</td>
                                        <td>Rp. {{ number_format($booking->paid_amount, 0, ',', '.') }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="invoice-bottom">
                        <div class="table-responsive">
                            <table class="table table-bordered table-border-0">
                                <tr>
                                    <td class="w-70 invoice-bottom-payment">
                                        <h4>Metode Pembayaran :</h4>
                                        <p>
                                            @switch($booking->payment_method)
                                                @case('Midtrans') Non-tunai @break
                                                @case('Cash') Cash @break
                                                @case('Stripe') Stripe @break
                                                @case('PayPal') Paypal @break
                                                @default -
                                            @endswitch
                                        </p>
                                    </td>
                                    <td class="w-30 text-end invoice-bottom-total-box">
                                        <p class="mb_0"><b>Total: Rp. {{ number_format($booking->paid_amount, 0, ',', '.') }}</b></p>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="print-button mt_25">
                    <a onclick="printInvoice()" href="javascript:;" class="btn btn-primary">
                        <i class="fas fa-print me-1"></i> Cetak Faktur
                    </a>
                </div>

                <script>
                    function printInvoice() {
                        let originalContent = document.body.innerHTML;
                        let printContent = document.getElementById('print_invoice').innerHTML;
                        document.body.innerHTML = printContent;
                        window.print();
                        setTimeout(() => {
                            document.body.innerHTML = originalContent;
                            location.reload();
                        }, 500);
                    }
                </script>
            </div>
        </div>
    </div>
</div>
@endsection
