@extends('admin.layout.master')

@section('main_content')
    @include('admin.layout.nav')
    @include('admin.layout.sidebar')
    <div class="main-content">
        <section class="section">
            <div class="section-header justify-content-between">
                <h1>Sampah Bagian Video Paket {{ $package->name }}</h1>
                <div class="ml-auto">
                    <a href="{{ route('package_videos', $package->id) }}" class="btn btn-primary"><i class="fas fa-arrow-circle-left"></i> Kembali</a>
                </div>
            </div>
            <div class="section-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>SL</th>
                                                <th>Video</th>
                                                <th>Aksi</th>
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
                                            <td class="pt_10 pb_10">
                                                <a href="{{ route('admin_package_video_trash_restore', $package_video->id) }}" class="btn btn-primary"><i class="fas fa-arrows-alt-v"></i> Pulihkan</a>

                                                <a href="{{ route('admin_package_video_trash_delete', $package_video->id) }}" class="btn btn-danger" onClick="return confirm('Video Paket ini akan dihapus secara permanen. Apakah anda yakin?');"><i class="fas fa-trash"></i> Hapus Permanen</a>
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
    </div>
    </div>
    </section>
    </div>
@endsection
