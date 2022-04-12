<?php

class UserModel extends Model
{
    public function __construct() {
        parent::__construct();
        $this->table = "user";
        $this->fields= [
            'email',
            'password'
        ];
        $this->pk = 'user_id';
    }
}