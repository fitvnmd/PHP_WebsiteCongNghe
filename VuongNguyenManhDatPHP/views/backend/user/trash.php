<?php



use App\Models\User;

$user = new User(); // tạo đối tượng
$list = $user->user_list(['status' => '0']);

?>




<?php require_once('../views/backend/header.php'); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper py-2">
    <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-sm-6">
                        <strong class="text-danger">THÙNG RÁC</strong>
                    </div>
                    <div class="col-sm-6 text-right">

                        <a href="index.php?option=user" class="btn btn-sm btn-info">
                            <i class="fas fa-arrow-alt-circle-left"></i>Quay về danh sách
                        </a>


                    </div>
                </div>

            </div>
            <div class="card-body">
                <table class="table table-bordered" id="myTable">
                    <thead>
                        <tr>
                        <tr>
                            <th class="text-center" style="width:20px">#</th>
                            <th class="text-center" style="width:20px">Hình</th>
                            <th>Họ và tên</th>
                            <th>Tên đăng nhập</th>
                            <th class="text-center">Email</th>
                            <th class="text-center">Giới tính</th>
                            <th class="text-center">Số điện thoại</th>
                            <th class="text-center">Chức năng</th>
                            <th class="text-center" style="width:20px">ID</th>
                        </tr>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($list as $row) : ?>
                            <tr>
                                <td class="text-center">
                                    <input name="checkid" type="checkbox" />
                                </td>
                                <td>
                                    <img src="../public/images/users/<?php echo $row['img']; ?>" class="img-fluid" alt="<?php echo $row['img']; ?>">
                                </td>
                                <td><?php echo $row['fullname']; ?></td>
                                <td><?php echo $row['username']; ?></td>
                                <td><?php echo $row['email']; ?></td>
                                <td><?php echo $row['gender']; ?></td>
                                <td><?php echo $row['phone']; ?></td>
                                <td class="text-center">
                                    <?php if ($row['status'] == 1) : ?>
                                        <a href="index.php?option=user&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-success">
                                            <i class="fas fa-toggle-on"></i>
                                        </a>
                                    <?php else : ?>
                                        <a href="index.php?option=user&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger">
                                            <i class="fas fa-toggle-off"></i>
                                        </a>
                                    <?php endif; ?>
                                    <a href="index.php?option=user&cat=update&id=<?php echo $row['id']; ?>"" class=" btn btn-sm btn-info">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="index.php?option=user&cat=deltrash&id=<?php echo $row['id']; ?>"" class=" btn btn-sm btn-danger">
                                        <i class="fas fa-trash"></i>
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

<?php require_once('../views/backend/footer.php'); ?>