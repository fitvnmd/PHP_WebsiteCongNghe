<?php

namespace App\Models;

use App\Library\Database;
use Illuminate\Support\Arr;

class Slider extends Database
{
    private $table = null;
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->TableName('slider'); //vnmd_slider
    }
    //Lấy danh sách slider
    public function slider_list($args = array())
    {
        $strwhere = '';
        if (array_key_exists('status', $args)) {
            if ($args['status'] == 'index') {
                $strwhere .= "status!='0'";
            } else
             if ($args['status'] == 'trash') {
                $strwhere .= "status='0'";
            } else {
                $strwhere .= " status='" . $args['status'] . "'";
            }
        }
        if (array_key_exists('position', $args)) {
            if ($strwhere == '') {
                $strwhere .= " position='" . $args['position'] . "'";
            } else {
                $strwhere .= " AND position='" . $args['position'] . "'";
            }
        }
        //Kiểm tra biến strwhere
        if ($strwhere != '') {
            $strwhere = "WHERE " . $strwhere;
        }
        $strorder = ' created_at DESC';
        if (array_key_exists('order', $args)) {

            $strorder = $args['order']['field'] . " " . $args['order']['orderby'];
        }
        $sql = " SELECT * FROM $this->table   $strwhere   ORDER BY $strorder";
        // echo $sql;
        return $this->QueryAll($sql);
    }
    //Lấy ra 1 mẫu tin - sau này có sửa lại
    public function slider_row($id)
    {
        $sql = " SELECT * FROM $this->table WHERE id ='$id'";
        return $this->QueryOne($sql);
    }
    //Insert 1 mẫu tin
    public function  slider_insert($data)
    {
        $strf = '';
        $strv = '';
        foreach ($data as $key => $value) {
            $strf .= $key . ", ";
            $strv .= "'$value', ";
        }
        $strf = rtrim(rtrim($strf), ',');
        $strv = rtrim(rtrim($strv), ',');
        $sql = "INSERT INTO $this->table($strf) VALUES($strv)";

        $this->SetQuery($sql);
    }
    //Update mẫu tin 
    public function slider_update($data, $id)
    {
        $strset = '';
        foreach ($data as $f => $v) {
            $strset .= $f . "='$v', ";
        }
        $strset = rtrim(rtrim($strset), ',');
        $sql = "UPDATE $this->table SET $strset WHERE id='$id'";
        $this->SetQuery($sql);
    }
    public function slider_delete($id)
    {

        $sql = "DELETE FROM  $this->table WHERE id='$id'";
        $this->SetQuery($sql);
    }
}
