<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Laporan Pemesanan</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 40px;
            font-size: 13px;
            color: #333;
        }
        h2 {
            text-align: center;
            margin-bottom: 5px;
        }
        p {
            text-align: center;
            margin-top: 0;
            margin-bottom: 20px;
            font-size: 13px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 13px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 8px 6px;
            text-align: left;
        }
        thead th {
            background-color: #f0f0f0;
        }
        .text-right {
            text-align: right;
        }
        .text-center {
            text-align: center;
        }
        .total-row {
            font-weight: bold;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h2>Laporan Booking</h2>
    @if($start && $end)
        <p>Periode: {{ \Carbon\Carbon::parse($start)->format('d M Y') }} - {{ \Carbon\Carbon::parse($end)->format('d M Y') }}</p>
    @else
        <p>Periode: Hari ini ({{ \Carbon\Carbon::today()->format('d M Y') }})</p>
    @endif

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>No Faktur</th>
                <th>Nama Pengguna</th>
                <th>Tanggal Pemesanan</th>
                <th>Jumlah Orang</th>
                <th>Total Bayar</th>
                <th>Metode & Status</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($bookings as $key => $b)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $b->invoice_no }}</td>
                    <td>{{ $b->user->name }}</td>
                    <td>{{ $b->created_at->format('d M Y') }}</td>
                    <td class="text-center">{{ $b->total_person }}</td>
                    <td class="text-right">Rp. {{ number_format($b->paid_amount, 0, ',', '.') }}</td>
                    <td>
                        <strong>
                            @switch($b->payment_method)
                                @case('Midtrans') Non-tunai @break
                                @case('Cash') Cash @break
                                @case('Stripe') Stripe @break
                                @case('PayPal') PayPal @break
                                @default -
                            @endswitch
                        </strong>
                        <br>
                        <span>
                            @switch($b->payment_status)
                                @case('Completed')
                                    <i class="fas fa-check-circle text-success"></i> Tuntas
                                    @break

                                @case('Pending')
                                    <i class="fas fa-hourglass-half text-warning"></i> Tertunda
                                    @break

                                @case('Cancel')
                                    <i class="fas fa-times-circle text-danger"></i> Dibatalkan
                                    @break

                                @case('Expired')
                                    <i class="fas fa-clock text-secondary"></i> Kadaluarsa
                                    @break

                                @case('Denied')
                                    <i class="fas fa-ban text-danger"></i> Ditolak
                                    @break

                                @default
                                    -
                            @endswitch
                        </span>
                    </td>
                </tr>
            @endforeach
            <tr class="total-row">
                <td colspan="5" class="text-right">Total Pemasukan:</td>
                <td colspan="2" class="text-right">Rp. {{ number_format($total, 0, ',', '.') }}</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
