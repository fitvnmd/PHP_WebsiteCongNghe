<?php

namespace App\Models;

use App\Library\Database;

class Orderdetail extends Database
{
    private $table = null;
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->TableName('orderdetail'); //vnmd_orderdetail
    }
    //Lấy danh sách theo loại parentid
    public function orderdetail_parentid($parentid = 0)
    {
        $sql = "SELECT * FROM $this->table WHERE parentid = '$parentid' AND status = '1' ORDER BY orders ASC";
        return $this->QueryAll($sql);
    }
    //Lấy danh sách orderdetail
    public function orderdetail_list($args = array())
    {
        $strwhere = '';
        if (array_key_exists('status', $args)) {
            if ($args['status'] == 'index') {
                $strwhere .= "status !='0'";
            } else {
                $strwhere .= "status = '" . $args['status'] . "'";
            }
        }
        //Kiểm tra biến strwhere
        if ($strwhere != '') {
            $strwhere = "WHERE " . $strwhere;
        }
        $sql = "SELECT * FROM $this->table $strwhere ORDER BY created_at DESC";
        return $this->QueryAll($sql);
    }
    //Lấy ra 1 mẫu tin - sau này có sửa lại
    public function orderdetail_row($id)
    {
        if (is_numeric($id)) {
            $sql = "SELECT * FROM $this->table WHERE id = '$id'";
        } else {
            $sql = "SELECT * FROM $this->table WHERE slug = '$id' AND status = '1'";
        }

        return $this->QueryOne($sql);
    }
    //Insert 1 mẫu tin
    public function orderdetail_insert($data)
    {
        $strf = '';
        $strv = '';
        foreach ($data as $f => $v) {
            $strf .= $f . ", ";
            $strv .= "'$v', ";
        }
        $strf = rtrim(rtrim($strf), ',');
        $strv = rtrim(rtrim($strv), ',');

        $sql = "INSERT INTO $this->table($strf) VALUES($strv)";
        //echo $sql;
        $this->SetQuery($sql);
    }
    //Update Mẫu tin
    public function orderdetail_update($data, $id)
    {
        $strset = '';
        foreach ($data as $f => $v) {
            $strset .= $f . "='$v', ";
        }
        $strset = rtrim(rtrim($strset), ',');
        $sql = "UPDATE $this->table SET $strset WHERE id = '$id'";
        $this->SetQuery($sql);
    }
    public function orderdetail_delete($id)
    {
        $sql = "DELETE FROM $this->table WHERE id = '$id'";
        $this->SetQuery($sql);
    }
}
