<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Animal extends Model
{
    protected $fillable = ['aname', 'species'];
    public function connection()
    {
        return $this->belongsTo(Connection::class, 'id');
    }

    
}
