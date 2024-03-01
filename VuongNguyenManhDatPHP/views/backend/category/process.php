<?php

use App\Library\Myclass;
use App\Models\Category;

$category = new Category();


if (isset($_POST['THEM'])) {
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['slug'] = Myclass::str_slug($data['name']);
    $data['created_at'] = date('Y-m-d H:i:s');
    $data['created_by'] = $_SESSION['userid']; //Xử lý sau khi đăng nhập
    $category->category_insert($data);
    header("location: index.php?option=category");
}
if (isset($_POST['CAPNHAT'])) {
    $id = $_POST['id'];
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['slug'] = Myclass::str_slug($data['name']);
    $data['updated_at'] = date('Y-m-d H:i:s');
    $data['updated_by'] = $_SESSION['userid']; //Xử lý sau khi đăng nhập
    $category->category_update($data, $id);
    header("location: index.php?option=category");
}
