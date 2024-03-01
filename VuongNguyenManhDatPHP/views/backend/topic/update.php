<?php

use App\Models\Topic;

$topic = new Topic();
$id = $_REQUEST['id'];
$row = $topic->topic_row($id);

$list = $topic->topic_list(['status' => 'index']);
$strparentid = '';
$strorders = '';
foreach ($list as $item) {
    if ($row['parentid'] == $item['id']) {
        $strparentid .= "<option selected value='" . $item['id'] . "'>" . $item['name'] . "</option>";
    } else {
        $strparentid .= "<option value='" . $item['id'] . "'>" . $item['name'] . "</option>";
    }
    if ($row['orders'] == $item['orders']) {
        $strorders .= "<option selected value='" . $item['orders'] . "'>Sau: " . $item['name'] . "</option>";
    } else {
        $strorders .= "<option value='" . $item['orders'] . "'>Sau: " . $item['name'] . "</option>";
    }
}
?>
<?php require_once('../views/backend/header.php') ?>

<!-- Content Wrapper. Contains page content -->
<form name="form1" action="index.php?option=topic&cat=process" method="post">
    <div class="content-wrapper py-2">

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6"><strong class="text-danger">
                                CẬP NHẬT LOẠI SẢN PHẨM</strong>
                        </div>
                        <div class="col-md-6 text-right">
                            <a href="index.php?option=topic" class="btn btn-sm btn-success">
                                <i class="fas fa-plus"> </i> QUAY VỀ DANH SÁCH
                            </a>
                            <button name="CAPNHAT" type="submit" class="btn btn-sm btn-success">
                                <i class="fas fa-plus"> </i>Lưu[Cập nhật]
                            </button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <input name="id" value="<?php echo $row['id']; ?>" type="hidden" />
                        <div class="col-md-9">
                            <div class="mb-3">
                                <label for="name">Tên chủ đề</label>
                                <input name="data[name]" value="<?php echo $row['name']; ?>" id="name" type="text" class="form-control" required placeholder="Nhập tên loại" />
                            </div>
                            <div class="mb-3">
                                <label for="metakey">Từ khoá SEO</label>
                                <textarea name="data[metakey]" id="metakey" class="form-control" required rows="4"><?php echo $row['metakey']; ?></textarea>

                            </div>
                            <div class="mb-3">
                                <label for="metadesc">Mô tả SEO</label>
                                <textarea name="data[metadesc]" id="metadesc" class="form-control" required rows="4"><?php echo $row['metadesc']; ?></textarea>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="mb-3">
                                <label for="parentid">Chủ đề cấp cha</label>
                                <select name="data[parentid]" id="parentid" class="form-control">
                                    <option value="0">Cấp cha</option>
                                    <?php echo $strparentid; ?>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="orders"> Sắp xếp</label>
                                <select name="data[orders]" id="orders" class="form-control">
                                    <?php echo $strorders; ?>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="status">Trạng thái</label>
                                <select name="data[status]" id="status" class="form-control">
                                    <option value="2" <?php echo ($row['status'] == 2) ? 'selected' : ''; ?>>Chưa xuất bản</option>
                                    <option value="1" <?php echo ($row['status'] == 1) ? 'selected' : ''; ?>>Xuất bản</option>
                                </select>
                            </div>
                        </div>

                    </div>
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
</form>
<!-- /.content-wrapper -->
<?php require_once('../views/backend/footer.php') ?>