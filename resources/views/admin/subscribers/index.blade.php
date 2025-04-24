@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Pengikut</h1>
                    <div class="ml-auto">
                        @if (auth('admin')->user()?->can('kirimEmail.pengikut'))
                        <a href="{{ route('admin_subscriber_send_email') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Kirim Email</a>
                        @endif
                        @if (auth('admin')->user()?->can('sampah.pengikut'))
                        <a href="{{ route('admin_subscriber_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
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
                                                    <th>Email</th>
                                                    @if (auth('admin')->user()?->can('hapus.pengikut'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($subscribers as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>{{ $item->email }}</td>
                                                    @if (auth('admin')->user()?->can('hapus.pengikut'))
                                                    <td class="pt_10 pb_10">
                                                        <a href="{{ route('admin_subscriber_delete', $item->id) }}" class="btn btn-danger" onClick="return confirm('Pengikut akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
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
