<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Connection extends Model
{
    protected $fillable = ['animalid', 'novelid'];
    public function animal()
    {
        return $this->belongsTo(Animal::class, 'animalid');
    }

    public function novel()
    {
        return $this->hasOne(Novel::class, 'novelid');
    }
}
