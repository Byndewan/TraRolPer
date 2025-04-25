<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Http\Request;
use App\Models\Admin;

class RoleController extends Controller
{
    public function index()
    {
        $roles = Role::with('permissions')->get();
        return view('admin.roles.index', compact('roles'));
    }

    public function create()
    {
        $permissions = Permission::all();

        $groupedPermissions = $permissions->groupBy(function($permission) {
            return explode('.', $permission->name)[1] ?? 'lainnya';
        });

        return view('admin.roles.create', compact('groupedPermissions'));
    }

    public function store(Request $request)
    {
        $role = Role::create([
            'name' => $request->name,
            'guard_name' => 'admin',
        ]);



        $role->syncPermissions($request->permissions);
        return redirect()->route('roles.index')->with('success', 'Role berhasil ditambahkan!');
    }

    public function edit(Role $role)
    {
        $permissions = Permission::all();

        $groupedPermissions = $permissions->groupBy(function ($item) {
            return explode('.', $item->name)[1] ?? 'lainnya';
        });

        $rolePermissions = $role->permissions->pluck('name')->toArray();

        return view('admin.roles.edit', compact('role', 'groupedPermissions', 'rolePermissions'));
    }


    public function update(Request $request, Role $role)
    {
        $role->update(['name' => $request->name]);
        $role->syncPermissions($request->permissions);
        return redirect()->route('roles.index')->with('success', 'Role berhasil diupdate!');
    }

    public function destroy(Role $role)
    {
        $role->delete();
        return redirect()->route('roles.index')->with('success', 'Role dihapus!');
    }

    public function assignRoleForm() {
        $roles = Role::where('name', '!=', 'super_admin')->get();

        $admins = Admin::with('roles')->get()->filter(function ($admin) {
            return $admin->roles->isEmpty() || !$admin->roles->contains('name', 'super_admin');
        });

        if ($admins->isEmpty()) {
            return back()->with('error', 'Semua admin sudah memiliki role atau merupakan super_admin.');
        }

        $adminShows = Admin::all();

        return view('admin.roles.assign', compact('admins', 'roles','adminShows'));
    }

    public function assignRoleSubmit(Request $request) {
        $request->validate([
            'admin_id' => 'required|exists:admins,id',
            'role' => 'required'
        ]);

        $admin = Admin::with('roles')->findOrFail($request->admin_id);

        if ($admin->roles->isNotEmpty()) {
            return back()->with('error', 'Admin ini sudah memiliki role. Hapus dulu role sebelumnya.');
        }

        $admin->assignRole($request->role);

        return redirect()->back()->with('success', 'Role berhasil diberikan ke user!');
    }


    public function removeRole(Admin $admin, $roleName)
    {
        if ($roleName === 'super_admin') {
            return back()->with('error', 'Role super admin tidak bisa dihapus.');
        }

        $role = Role::where('name', $roleName)->firstOrFail();
        $admin->removeRole($role);

        return redirect()->back()->with('success', 'Role berhasil dihapus dari user.');
    }

}
