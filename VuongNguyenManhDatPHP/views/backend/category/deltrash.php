<?php

use App\Models\Category;

$category = new Category(); // Tạo đối tượng

$id = $_REQUEST["id"];
$row = $category->category_row($id);
$data = array(
    'updated_at' => date('Y-m-d H:i:s'),
    'updated_by' => $_SESSION['userid'],
    'status' => 0
);
$category->category_update($data, $id);
header("location: index.php?option=category");
