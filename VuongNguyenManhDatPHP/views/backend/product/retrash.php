<?php

use App\Models\Product;

$product = new Product(); // Tạo đối tượng

$id = $_REQUEST["id"];
$row = $product->product_row($id);
$data = array(
    'updated_at' => date('Y-m-d H:i:s'),
    'updated_by' => $_SESSION['userid'],
    'status' => 2
);
$product->product_update($data, $id);
header("location: index.php?option=product&cat=trash");
