@extends('admin.layout.master')

@section('main_content')
@include('admin.layout.nav')
@include('admin.layout.sidebar')

<div class="main-content">
    <section class="section">
        <div class="section-header justify-content-between">
            <h1>Assign Role ke User</h1>
        </div>

        <div class="section-body">
            @if(session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif

            <form action="{{ route('assign.role.submit') }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label for="admin_id" class="form-label">Pilih Admin</label>
                    <select name="admin_id" class="form-select" required>
                        <option value="">-- Pilih Admin --</option>
                        @foreach($admins as $admin)
                            <option value="{{ $admin->id }}">{{ $admin->name }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label for="role" class="form-label">Pilih Role</label>
                    <select name="role" class="form-select" required>
                        <option value="">-- Pilih Role --</option>
                        @foreach($roles as $role)
                            @if($role->name !== 'super_admin')
                                <option value="{{ $role->name }}">{{ $role->name }}</option>
                            @endif
                        @endforeach
                    </select>
                </div>

                <button type="submit" class="btn btn-success">Assign Role</button>
            </form>


            <script>
                const admins = @json($admins);
                const allRoles = @json($roles);

                const adminSelect = document.getElementById('adminSelect');
                const roleSelect = document.getElementById('roleSelect');

                adminSelect.addEventListener('change', function () {
                    const selectedAdminId = this.value;
                    const selectedAdmin = admins.find(admin => admin.id == selectedAdminId);
                    const assignedRoles = selectedAdmin?.roles.map(r => r.name) ?? [];

                    // Kosongkan dulu opsi role
                    roleSelect.innerHTML = '<option value="">-- Pilih Role --</option>';

                    // Tampilkan hanya role yang belum dimiliki
                    allRoles.forEach(role => {
                        if (!assignedRoles.includes(role.name)) {
                            const opt = document.createElement('option');
                            opt.value = role.name;
                            opt.textContent = role.name;
                            roleSelect.appendChild(opt);
                        }
                    });
                });
            </script>


        </div>

        <hr class="my-5">

    <h4>Daftar User & Role yang Dimiliki</h4>
    <div class="table-responsive mt-3 mb-3">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Role</th>
                </tr>
            </thead>
            <tbody>
                @foreach($adminShows as $admin)
                    <tr>
                        <td>{{ $admin->name }}</td>
                        <td>{{ $admin->email }}</td>
                        <td>
                            @forelse($admin->roles as $role)
                                <form action="{{ route('user.removeRole', [$admin->id, $role->name]) }}" method="POST" style="display: inline-block;">
                                    @csrf
                                    @method('DELETE')
                                    <span class="badge bg-primary">
                                        {{ $role->name }}
                                        @if($role->name !== 'super_admin')
                                        <button type="submit" style="border: none; background: red; border-radius: 50%; color: white; margin-left: 5px; padding: 0 5px;" title="Hapus Role" onclick="return confirm('Yakin ingin menghapus role ini dari user?')">
                                            &times;
                                        </button>
                                        @endif
                                    </span>
                                </form>
                            @empty
                                <span class="text-muted">Belum ada role</span>
                            @endforelse
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    </section>
</div>
@endsection
