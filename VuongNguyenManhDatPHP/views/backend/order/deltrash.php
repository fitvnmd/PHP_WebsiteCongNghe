<?php

use App\Models\Order;

$order = new Order(); //tạo đối tượng
$id = $_REQUEST['id'];
$row = $order->order_row($id);

$data = array(
    'updated_at' => date('Y-m-d H:i:s'),
    'updated_by' => $_SESSION['userid'],
    'status' => 0
);
$order->order_update($data, $id);
header("location: index.php?option=order");
