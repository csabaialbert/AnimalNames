<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Connection extends Model
{
    protected $fillable = ['animalid', 'novelid'];
    public function animal()
    {
        return $this->hasOne(Animal::class, 'id' , 'animalid');
    }

    public function novel()
    {
        return $this->hasOne(Novel::class,'id' , 'novelid');
    }
}
