<?php

use App\Models\Order;

$order = new Order(); //Tạo đối tượng
$list = $order->order_list(['status' => '0']);
?>

<?php require_once('../views/backend/header.php') ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper py-2">

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-md-6"><strong class="text-danger">
                            THÙNG RÁC DANH MỤC SẢN PHẨM</strong>
                    </div>
                    <div class="col-md-6 text-right">
                        <a href="index.php?option=order" class="btn btn-sm btn-info ">
                            <i class="fas fa-undo"></i> Quay về danh sách
                        </a>

                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-bordered" id="myTable">
                    <thead>
                        <tr>
                            <th class="text-center" style="width:20px">#</th>
                            <th>Mã đơn hàng</th>
                            <th>Họ tên khách hàng</th>
                            <th class="text-center">Trạng thái</th>
                            <th class="text-center">Chức năng</th>
                            <th class="text-center" style="width:20px">ID</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list as $row) : ?>
                            <tr>
                                <td class="text-center">
                                    <input name="checkid" type="checkbox" />
                                </td>
                                <td><?php echo $row['code']; ?></td>
                                <td><?php echo $row['deliveryname']; ?></td>
                                <td class="text-center">
                                    <?php if ($row['status'] == 1) : ?>
                                        <a href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-success">
                                            Mới đặt hàng
                                        </a>
                                    <?php else : ?>
                                        <a href="index.php?option=order&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger">
                                            Đang giao hàng
                                        </a>
                                    <?php endif; ?>
                                </td>
                                <td class="text-center">
                                    <a href="index.php?option=order&cat=retrash&id=<?php echo $row['id']; ?>"" class=" btn btn-sm btn-info">
                                        <i class="fas fa-trash-restore"></i>
                                    </a>
                                    <a href="index.php?option=order&cat=delete&id=<?php echo $row['id']; ?>"" class=" btn btn-sm btn-danger">
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </td>
                                <td class="text-center"><?php echo $row['id']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                Footer
            </div>
            <!-- /.card-footer-->
        </div>
        <!-- /.card -->

    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php require_once('../views/backend/footer.php') ?>