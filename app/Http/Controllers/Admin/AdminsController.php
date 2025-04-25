<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;

class AdminsController extends Controller
{
    public function admins(){

        $admins = Admin::get();
        return view('admin.admin.index',compact('admins'));

    }

    public function admin_create()
    {
        return view('admin.admin.create');
    }

    public function admin_create_submit(Request $request)
    {
        $request->validate([
            'name' =>'required',
            'email' =>'required|email|unique:admins,email',
            'password' => 'required',
            'photo' =>'required|image|mimes:jpeg,png,jpg,gif,svg',
        ]);

        $finale_name = 'admin_'.time().'.'.$request->photo->extension();
        $request->photo->move(public_path('uploads/'), $finale_name);

        $obj = new Admin();
        $obj->name = $request->name;
        $obj->email = $request->email;
        $obj->password = bcrypt($request->password);
        $obj->photo = $finale_name;
        $obj->save();

        return redirect()->route('admin_admins')->with('success', 'Admin berhasil ditambahkan');
    }

    public function admin_edit($id)
    {
        $admin = Admin::where('id', $id)->first();
        return view('admin.admin.edit', compact('admin'));
    }

    public function admin_edit_submit(Request $request, $id){

        $admin = Admin::where('id', $id)->first();

        $request->validate([
            'name' =>'required',
            'email' =>'required|email|unique:admins,email,'.$id,
        ]);

        if($request->hasFile('photo')){
            $request->validate([
                'photo' =>'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ]);

            unlink(public_path('uploads/').$admin->photo);

            $final_name = 'admin_'.time().'.'.$request->photo->extension();
            $request->photo->move(public_path('uploads/'), $final_name);
            $admin->photo = $final_name;
        }

        if($request->password!= 'null'){
            $admin->password = bcrypt($request->password);
        }

        $admin->name = $request->name;
        $admin->email = $request->email;
        $admin->update();

        return redirect()->route('admin_admins')->with('success', 'Admin berhasil di perbarui');
    }

    public function admin_delete($id)
    {

        $admin = Admin::where('id', $id)->first();
        unlink(public_path('uploads/').$admin->photo);
        $admin->delete();

        return redirect()->route('admin_admins')->with('success', 'Admin berhasil di hapus');
    }
}
