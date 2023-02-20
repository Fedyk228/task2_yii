<?php

namespace app\models;

use yii\db\ActiveRecord;



class Comments extends ActiveRecord
{
    static public function tableName()
    {
        return 'comments';
    }
}



