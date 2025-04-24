@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Tur</h1>
                    <div class="ml-auto">

                        @if (auth('admin')->user()?->can('tambah.tur'))
                        <a href="{{ route('admin_tour_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Tambah Tur</a>
                        @endif

                        @if (auth('admin')->user()?->can('sampah.tur'))
                        <a href="{{ route('admin_tour_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                        @endif

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
                                                    <th>Info Paket</th>
                                                    <th>Mulai Tur</th>
                                                    <th>Berakhir Tur</th>
                                                    <th>Booking Berakhir</th>
                                                    <th>Total Kursi</th>
                                                    @if (auth('admin')->user()?->can('lihat.infoPemesanan'))
                                                    <th>Info Pemesanan</th>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.tur') || auth('admin')->user()?->can('hapus.tur'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($tours as $tour)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        {{ $tour->package->name }}<br>
                                                        <a href="{{ route('package', $tour->package->slug) }}" target="_blank">Lihat Selengkapnya</a>
                                                    </td>
                                                    <td>{{ $tour->tour_start_date }}</td>
                                                    <td>{{ $tour->tour_end_date }}</td>
                                                    <td>{{ $tour->booking_end_date }}</td>
                                                    <td>
                                                        @if ($tour->total_seat == -1)
                                                        Tidak Ada Batas
                                                        @else
                                                        {{ $tour->total_seat }}
                                                        @endif
                                                    </td>
                                                    @if (auth('admin')->user()?->can('lihat.infoPemesanan'))
                                                    <td>
                                                        <a href="{{ route('admin_tour_booking', [$tour->id, $tour->package->id] ) }}" class="btn btn-success btn-sm">Info Pemesanan</a>
                                                    </td>
                                                    @endif
                                                    @if (auth('admin')->user()?->can('edit.tur') || auth('admin')->user()?->can('hapus.tur'))

                                                    <td class="pt_10 pb_10">
                                                        @if (auth('admin')->user()?->can('edit.tur') )
                                                        <a href="{{ route('admin_tour_edit', $tour->id) }}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                        @endif
                                                        @if ( auth('admin')->user()?->can('hapus.tur'))
                                                        <a href="{{ route('admin_tour_delete', $tour->id) }}" class="btn btn-danger" onClick="return confirm('Tur akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
                                                        @endif
                                                    </td>
                                                    @endif
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
