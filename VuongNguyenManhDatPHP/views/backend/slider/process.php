<?php

use App\Library\Myclass;
use App\Models\Slider;

$slider = new Slider();


if (isset($_POST['THEM'])) {
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['created_at'] = date('Y-m-d H:i:s');
    $data['created_by'] = $_SESSION['userid']; //Xử lý sau khi đăng nhập
    //Xử lý hình
    $target_dir = "../public/images/sliders/";
    $target_file = $target_dir . basename($_FILES["img"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    if (in_array($imageFileType, ['png', 'jpg', 'bmp', 'gif'])) {
        $data['img'] = $_FILES["img"]["name"];
        move_uploaded_file($_FILES["img"]["tmp_name"], $target_file);
        $slider->slider_insert($data);
    }
    //
    header("location: index.php?option=slider");
}
if (isset($_POST['CAPNHAT'])) {
    $id = $_POST['id'];
    $row = $slider->slider_row($id);
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống
    $data['updated_at'] = date('Y-m-d H:i:s');
    $data['updated_by'] = $_SESSION['userid']; //Xử lý sau khi đăng nhập
    //
    $target_dir = "../public/images/sliders/";
    $target_file = $target_dir . basename($_FILES["img"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    if (in_array($imageFileType, ['png', 'jpg', 'bmp', 'gif'])) {
        //Lấy hình cũ
        $pathdel = $target_dir . $row['img']; //
        if (file_exists($pathdel)) {
            unlink($pathdel);
        }
        $data['img'] = $_FILES["img"]["name"];
        move_uploaded_file($_FILES["img"]["tmp_name"], $target_file);
    }
    //
    $slider->slider_update($data, $id);
    header("location: index.php?option=slider");
}
