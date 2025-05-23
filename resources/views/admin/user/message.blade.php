@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
        <div class="main-content">
            <section class="section">
                <div class="section-header justify-content-between">
                    <h1>Obrolan</h1>
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
                                                    <th>Nama Pengguna</th>
                                                    <th>Foto Pengguna</th>
                                                    <th>Email Pengguna</th>
                                                    <th>No Telepon Pengguna</th>
                                                    @if (auth('admin')->user()?->can('buka.message.penggguna'))
                                                    <th>Aksi</th>
                                                    @endif
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($messages as $item)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        @if ($item->user->photo)
                                                        <img src="{{ asset('uploads/'.$item->user->photo) }}" class="w_100">
                                                        @else
                                                        <img src="{{ asset('uploads/default.png') }}" class="w_100">
                                                        @endif
                                                    </td>
                                                    <td>
                                                        {{ $item->user->name }}
                                                    </td>
                                                    <td>
                                                        {{ $item->user->email }}
                                                    </td>
                                                    <td>
                                                        {{ $item->user->phone }}
                                                    </td>
                                                    @if (auth('admin')->user()?->can('buka.message.penggguna'))
                                                        <td class="pt_10 pb_10">
                                                            <a href="{{ route('admin_message_detail', $item->id) }}" class="btn btn-primary">Buka Obrolan</a>
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
