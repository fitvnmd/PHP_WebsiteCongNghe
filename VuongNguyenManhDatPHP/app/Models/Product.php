<?php

namespace App\Models;

use App\Library\Database;

class Product extends Database
{
    private $table = null;
    public function __construct()
    {
        parent::__construct();
        $this->table = $this->TableName('product'); //vnmd_product
    }
    //Hàm lấy ra sản phẩm theo loại và dưới dạng mẫu tin: SD trang chủ và trang chi tiết sản phẩm
    public function product_list_listcatid($listcatid, $limit = 8, $notid = null)
    {
        if ($notid == null) {
            $sql = "SELECT * FROM $this->table WHERE catid IN (" . implode(',', $listcatid) . ") AND status = '1' ORDER BY created_at DESC LIMIT $limit";
        } else {
            $sql = "SELECT * FROM $this->table WHERE catid IN (" . implode(',', $listcatid) . ") AND id!='$notid' AND status = '1' ORDER BY created_at DESC LIMIT $limit";
        }
        //echo $sql;
        return $this->QueryAll($sql);
    }
    //

    //Lấy sản phẩm theo catid
    public function product_home($listcatid, $limit = 8)
    {
        $sql = "SELECT * FROM $this->table WHERE catid IN (" . implode(',', $listcatid) . ") AND status = '1' ORDER BY created_at DESC LIMIT $limit";
        //echo $sql;
        return $this->QueryAll($sql);
    }
    public function product_category($listcatid, $offset = 0, $limit = 12)
    {
        $sql = "SELECT * FROM $this->table WHERE catid IN (" . implode(',', $listcatid) . ") AND status = '1' ORDER BY created_at DESC LIMIT $offset, $limit";
        //echo $sql;
        return $this->QueryAll($sql);
    }
    public function product_category_count($listcatid)
    {
        $sql = "SELECT * FROM $this->table WHERE catid IN (" . implode(',', $listcatid) . ") AND status = '1'";
        //echo $sql;
        return count($this->QueryAll($sql));
    }
    // product-detail
    public function product_rowslug($slug)
    {
        $sql = "SELECT * FROM $this->table WHERE slug='$slug' AND status ='1'";
        return $this->QueryOne($sql);
    }
    //Trang quản lý
    //Lấy danh sách product
    public function product_list($args = array())
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
    public function product_row($id)
    {
        $sql = "SELECT * FROM $this->table WHERE id='$id'";
        return $this->QueryOne($sql);
    }
    //Insert 1 mẫu tin
    public function product_insert($data)
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
    public function product_update($data, $id)
    {
        $strset = '';
        foreach ($data as $f => $v) {
            $strset .= $f . "='$v', ";
        }
        $strset = rtrim(rtrim($strset), ',');
        $sql = "UPDATE $this->table SET $strset WHERE id = '$id'";
        $this->SetQuery($sql);
    }
    public function product_delete($id)
    {
        $sql = "DELETE FROM $this->table WHERE id = '$id'";
        $this->SetQuery($sql);
    }
}
