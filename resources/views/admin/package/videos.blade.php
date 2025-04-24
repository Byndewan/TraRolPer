@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Video {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('admin_package_index') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Kembali</a>
                    @if (auth('admin')->user()?->can('sampah.galeryVideo.paket'))
                        <a href="{{ route('admin_package_video_trash') }}" class="btn btn-danger"><i class="fas fa-trash"></i> Sampah ( {{ $trashCount }} )</a>
                    @endif
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Video</th>
                                                @if (auth('admin')->user()?->can('hapus.galeryVideo.paket'))
                                                    <th>Aksi</th>
                                                @endif
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($package_videos as $package_video)
                                            <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>
                                                <iframe class="iframe1"
                                                        src="https://www.youtube.com/embed/{{ $package_video->video }}"
                                                        title="YouTube video player" frameborder="0"
                                                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                                        referrerpolicy="strict-origin-when-cross-origin"
                                                        allowfullscreen>
                                                    </iframe>
                                            </td>
                                            @if (auth('admin')->user()?->can('hapus.galeryVideo.paket'))
                                            <td class="pt_10 pb_10">
                                                <a href="{{ route('package_videos_delete', $package_video->id) }}" class="btn btn-danger" onClick="return confirm('Video ini akan dipindahkan ke sampah. Apakah Anda yakin?');"><i class="fas fa-trash"></i></a>
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

                    <div class="col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('package_videos_submit', $package->id) }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="mb-3">
                                        <label class="form-label">Video</label>
                                        <input type="text" name="video" class="form-control">
                                    </div>
                                    @if (auth('admin')->user()?->can('sampah.galeryVideo.paket'))
                                    <div class="mb-3">
                                        <label class="form-label"></label>
                                        <button type="submit" class="btn btn-primary">Simpan</button>
                                    </div>
                                    @endif
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>
    </section>
    </div>
@endsection
