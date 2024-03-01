<?php

use App\Library\Myclass;
use App\Models\Contact;

$contact = new Contact();


if (isset($_POST['THEM'])) {
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['slug'] = Myclass::str_slug($data['name']);
    $data['created_at'] = date('Y-m-d H:i:s');
    $data['created_by'] = 1; //Xử lý sau khi đăng nhập
    $contact->contact_insert($data);
    header("location: index.php?option=contact");
}
if (isset($_POST['CAPNHAT'])) {
    $id = $_POST['id'];
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['slug'] = Myclass::str_slug($data['name']);
    $data['updated_at'] = date('Y-m-d H:i:s');
    $data['updated_by'] = 1; //Xử lý sau khi đăng nhập
    $contact->contact_update($data, $id);
    header("location: index.php?option=contact");
}
