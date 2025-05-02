@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')





    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Informasi Pemesanan</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_tour_index') }}" class="btn btn-primary"><i class="fas fa-arrow-left"></i> Kembali</a>
                    <a href="{{ route('admin_booking_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah (
                        {{ $trashCount }} )</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="example1">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>
                                                    No Faktur
                                                </th>
                                                <th>
                                                    Info Pengguna
                                                </th>
                                                <th style="width: 1%; white-space: nowrap;" class="text-center">
                                                    Jumlah Orang
                                                </th>
                                                <th style="width: 1%; white-space: nowrap;" class="text-center">
                                                    Total Bayar
                                                </th>
                                                <th style="width: 1%; white-space: nowrap;" class="text-center">
                                                    Metode Pembayaran
                                                </th>
                                                <th style="width: 1%; white-space: nowrap;" class="text-center">
                                                    Status Pembayaran
                                                </th>
                                                <th style="width: 1%; white-space: nowrap;" class="text-center">
                                                    Aksi
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($all_data as $data)
                                                @php
                                                    $waMessagePen =
                                                        'Halo ' .
                                                        $data->user->name .
                                                        ', pesanan tour Anda dengan invoice: ' .
                                                        $data->invoice_no .
                                                        ' telah kami setujui. Terima kasih!';
                                                    $waMessage =
                                                    'Halo ' .
                                                    $data->user->name .
                                                    ', pesanan tour Anda dengan invoice: ' .
                                                    $data->invoice_no .
                                                    ' telah kami Konfirmasi, Silahkan cek website nya kembali Terima kasih!';
                                                    $waLinkPen =
                                                        'https://wa.me/' .
                                                        $data->user->phone .
                                                        '?text=' .
                                                        urlencode($waMessagePen);
                                                    $waLink =
                                                    'https://wa.me/' .
                                                    $data->user->phone .
                                                    '?text=' .
                                                    urlencode($waMessage);
                                                @endphp


                                                <tr>
                                                    <td style="width: 1%; white-space: nowrap;"
                                                        class="pt_10 pb_10 text-center">
                                                        {{ $loop->iteration }}
                                                    </td>
                                                    <td>
                                                        {{ $data->invoice_no }}
                                                    </td>
                                                    <td style="max-width: 250px; font-size: 0.85rem;">
                                                        <div class="mb-1 d-flex">
                                                            <strong class="me-1">Nama:</strong>
                                                            <span class="text-truncate">{{ $data->user->name }}</span>
                                                        </div>
                                                        <div class="mb-1 d-flex">
                                                            <strong class="me-1">Email:</strong>
                                                            <a href="mailto:{{ $data->user->email }}"
                                                                class="text-truncate text-decoration-none">
                                                                {{ $data->user->email }}
                                                            </a>
                                                        </div>
                                                        <div class="d-flex">
                                                            <strong class="me-1">Telpon:</strong>
                                                            <a href="https://wa.me/{{ $data->user->phone }}?text={{ urlencode($waMessage) }}"
                                                                class="text-truncate text-decoration-none">
                                                                +62 {{ $data->user->phone }}
                                                            </a>
                                                        </div>
                                                    </td>



                                                    <td style="width: 1%; white-space: nowrap;"
                                                        class="pt_10 pb_10 text-center">
                                                        {{ $data->total_person }}
                                                    </td>
                                                    <td style="width: 1%; white-space: nowrap;"
                                                        class="pt_10 pb_10 text-center">
                                                        {{ $data->paid_amount }}
                                                    </td>
                                                    <td style="width: 1%; white-space: nowrap;"
                                                        class="pt_10 pb_10 text-start">
                                                        @if ($data->payment_method == 'Midtrans')
                                                            <p class="mt-3"> Non-tunai </p>
                                                        @elseif ($data->payment_method == 'Cash')
                                                            <p class="mt-3"> Cash </p>
                                                        @elseif ($data->payment_method == 'Stripe')
                                                            <p class="mt-3"> Stripe </p>
                                                        @elseif ($data->payment_method == 'PayPal')
                                                            <p class="mt-3"> Paypal </p>
                                                        @endif
                                                    </td>
                                                    <td style="width: 1%; white-space: nowrap;"
                                                        class="pt_10 pb_10 text-center">
                                                        @if ($data->payment_status == 'Completed')
                                                            <span class="badge badge-success">Tuntas</span>
                                                        @elseif ($data->payment_status == 'Pending')
                                                            <span class="badge badge-danger mb-3">Tertunda</span><br>
                                                            <form id="approveForm-{{ $data->id }}" action="{{ route('admin_tour_booking_approve', $data->id) }}" method="GET" style="display: inline;">
                                                                @csrf
                                                                <button type="button" class="btn btn-warning" onclick="submitAndWa({{ $data->id }}, '{{ $waLinkPen }}')">Setujui & Kirim WA</button>
                                                            </form>
                                                        @elseif ($data->payment_status == 'Cancel')
                                                            <span class="badge badge-warning">Dibatalkan</span>
                                                        @elseif ($data->payment_status == 'Expired')
                                                            <span class="badge badge-secondary">Kadaluarsa</span>
                                                        @elseif ($data->payment_status == 'Denied')
                                                            <span class="badge badge-danger">Ditolak</span>
                                                        @endif
                                                    </td>
                                                    <td class="pt_10 pb_10">
                                                        <div class="dropdown">
                                                            <button class="btn btn-primary btn-sm dropdown-toggle"
                                                                type="button" data-bs-toggle="dropdown"
                                                                aria-expanded="false">
                                                                Aksi
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li>
                                                                    <a class="dropdown-item text-danger"
                                                                        href="{{ route('admin_tour_booking_delete', $data->id) }}"
                                                                        onclick="return confirm('Pemesanan ini akan dipindahkan ke sampah, apakah Anda yakin?');">
                                                                        <i class="fas fa-trash me-1"></i> Hapus
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a class="dropdown-item text-success" target="_blank"
                                                                        href="https://wa.me/{{ $data->user->phone }}?text={{ urlencode($waMessage) }}"
                                                                        class="text-truncate text-decoration-none">
                                                                    <i class="fab
                                                                        fa-whatsapp me-1"></i> WhatsApp
                                                                    </a>
                                                                </li>
                                                                <li>
                                                                    <a href="{{ route('admin_tour_invoice', $data->invoice_no) }}"
                                                                        class="text-decoration-none dropdown-item text-info"
                                                                        target="_blank"><i
                                                                            class="fas fa-file-invoice-dollar"></i> Lihat
                                                                        Faktur</a>
                                                                </li>
                                                            </ul>
                                                        </div>
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

<script>
    function submitAndWa(id, waLinkPen) {
        if (confirm('Setujui pesanan dan kirim WhatsApp ke user?')) {
            window.open(waLinkPen, '_blank');

            setTimeout(() => {
                document.getElementById(`approveForm-${id}`).submit();
            }, 250);
        }
    }
</script>
@endsection
