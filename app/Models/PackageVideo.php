<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class PackageVideo extends Model
{
    use HasFactory, SoftDeletes;

    public function package()
    {
        return $this->belongsTo(Package::class);
    }
}
