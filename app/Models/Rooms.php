<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rooms extends Model
{
    /*use HasFactory;*/
    public $timestamps = false;

    public function roomform() {
        return $this->belongsTo(SuiteFormModel::class);
    }
}
