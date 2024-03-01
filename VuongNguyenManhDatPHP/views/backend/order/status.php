<?php

use App\Models\Order;

$order = new Order(); // Tạo đối tượng

$id = $_REQUEST["id"];
$row = $order->order_row($id);
$status_new = ($row['status'] == 1) ? 2 : 1;
$data = array(
    'updated_at' => date('Y-m-d H:i:s'),
    'updated_by' => $_SESSION['userid'],
    'status' => $status_new
);
$order->order_update($data, $id);
header("location: index.php?option=order");

