<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Novel extends Model
{
    protected $fillable = ['pyear', 'title', 'publisher'];
    public function connection()
    {
        return $this->belongsTo(Connection::class, 'id');
    }
}
