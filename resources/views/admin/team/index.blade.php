@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Anggota Tim</h1>
                <div class="ml-auto">
                    @if (auth('admin')->user()?->can('tambah.anggota'))
                        <a href="{{ route('admin_team_member_create') }}" class="btn btn-primary"><i class="fas fa-plus"></i>
                            Tambah Anggota Tim</a>
                    @endif
                    @if (auth('admin')->user()?->can('sampah.anggota'))
                        <a href="{{ route('admin_team_member_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i>
                            Sampah ( {{ $trashCount }} )</a>
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
                                                <th>Foto</th>
                                                <th>Nama</th>
                                                <th>Jabatan</th>
                                                @if (auth('admin')->user()?->can('edit.anggota') || auth('admin')->user()?->can('hapus.anggota'))
                                                    <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($team_members as $team_member)
                                                <tr>
                                                    <td>{{ $loop->iteration }}</td>
                                                    <td>
                                                        <img src="{{ asset('uploads/' . $team_member->photo) }}"
                                                            alt="{{ $team_member->name }}" class="w_100">
                                                    </td>
                                                    <td>{{ $team_member->name }}</td>
                                                    <td>{{ $team_member->designation }}</td>
                                                    @if (auth('admin')->user()?->can('edit.anggota') || auth('admin')->user()?->can('hapus.anggota'))
                                                        <td class="pt_10 pb_10">
                                                            @if (auth('admin')->user()?->can('edit.anggota'))
                                                                <a href="{{ route('admin_team_member_edit', $team_member->id) }}"
                                                                    class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                                            @endif
                                                            @if (auth('admin')->user()?->can('hapus.anggota'))
                                                                <a href="{{ route('admin_team_member_delete', $team_member->id) }}"
                                                                    class="btn btn-danger"
                                                                    onClick="return confirm('Anggota Tim ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i
                                                                        class="fas fa-trash"></i></a>
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
