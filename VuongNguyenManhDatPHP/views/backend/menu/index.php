<!-- Chưa làm đc -->
<?php

use App\Models\Menu;
use App\Models\Category;
use App\Models\Post;
use App\Models\Topic;

$menu = new Menu(); //Tạo đối tượng
$category = new Category(); // tạo đối tượng
$post = new Post(); // tạo đối tượng
$topic = new Topic(); // tạo đối tượng

$list_menu = $menu->menu_list();
$list_category = $category->category_list(['status' => 'index']);
$list_page = $post->post_list(['status' => 'index']);
$list_topic = $topic->topic_list(['status' => 'index']);

?>

<?php require_once('../views/backend/header.php') ?>

<!-- Content Wrapper. Contains page content -->
<form name="form" action="index.php?option=menu&cat=process" method="post">
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Quản lý Menu</h1>
                    </div>
                    <div class="col-md-6 text-right">
                        <a href="index.php?option=menu&cat=trash" class="btn btn-sm btn-danger">
                            <i class="fas fa-trash"></i>Thùng rác
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Default box -->
        <section class="content m-2">
            <div class="row">
                <div class="col-md-3">
                    <div class="accordion" id="accordionExample">
                        <div class="card">
                            <div class="card">
                                <div class="card-header" id="vitr">
                                    <select name="position" class="form-control">
                                        <option value="mainmenu">Main menu</option>
                                        <option value="footermenu">Footer menu</option>
                                    </select>
                                </div>


                            </div>
                            <div class="card-header" id="headingCategory">
                                <span>Loại sản phẩm</span>
                                <span class="float-right btn btn-sm btn-info" data-toggle="collapse" data-target="#collapseCategory" aria-expanded="true" aria-controls="collapseCategory">
                                    <i class="fas fa-plus"></i>
                                </span>

                            </div>

                            <div id="collapseCategory" class="collapse p-2 m-2" aria-labelledby="headingCategory" data-parent="#accordionExample">
                                <?php foreach ($list_category as $category) : ?>
                                    <fieldset class="form-group">
                                        <input name="nameCategory[]" value="<?php echo $category['id']; ?>" id="category<?php echo $category['id']; ?>" type="checkbox">
                                        <label for="category<?php echo $category['id']; ?>"><?php echo $category['name']; ?></label>
                                    </fieldset>
                                <?php endforeach; ?>
                                <fieldset class="form-group">
                                    <input type="submit" name="ThemCategory" value="Thêm" class="btn btn-success form-control">
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingTopic">
                                <span>Chủ đề bài viết</span>
                                <span class="float-right btn btn-sm btn-info" data-toggle="collapse" data-target="#collapseTopic" aria-expanded="true" aria-controls="collapseTopic">
                                    <i class="fas fa-plus"></i>
                                </span>

                            </div>

                            <div id="collapseTopic" class="collapse p-2 m-2" aria-labelledby="headingTopic" data-parent="#accordionExample">
                                <?php foreach ($list_topic as $topic) : ?>
                                    <fieldset class="form-group">
                                        <input name="nameTopic[]" value="<?php echo $topic['id']; ?>" id="topic<?php echo $topic['id']; ?>" type="checkbox">
                                        <label for="topic<?php echo $topic['id']; ?>"><?php echo $topic['name']; ?></label>
                                    </fieldset>
                                <?php endforeach; ?>
                                <fieldset class="form-group">
                                    <input type="submit" name="ThemTopic" value="Thêm" class="btn btn-success form-control">
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingPage">
                                <span>Trang đơn</span>
                                <span class="float-right btn btn-sm btn-info" data-toggle="collapse" data-target="#collapsePage" aria-expanded="true" aria-controls="collapsePage">
                                    <i class="fas fa-plus"></i>
                                </span>

                            </div>

                            <div id="collapsePage" class="collapse p-2 m-2" aria-labelledby="headingPage" data-parent="#accordionExample">
                                <?php foreach ($list_page as $page) : ?>
                                    <fieldset class="form-group">
                                        <input name="namePage[]" value="<?php echo $page['id']; ?>" id="Page<?php echo $page['id']; ?>" type="checkbox">
                                        <label for="Page<?php echo $page['id']; ?>"><?php echo $page['title']; ?></label>
                                    </fieldset>
                                <?php endforeach; ?>

                                <fieldset class="form-group">
                                    <input type="submit" name="ThemPage" value="Thêm" class="btn btn-success form-control">
                                </fieldset>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="headingCustom">
                                <span>Tùy chỉnh</span>
                                <span class="float-right btn btn-sm btn-info" data-toggle="collapse" data-target="#collapseCustom" aria-expanded="true" aria-controls="collapseCustom">
                                    <i class="fas fa-plus"></i>
                                </span>

                            </div>

                            <div id="collapseCustom" class="collapse p-2 m-2" aria-labelledby="headingCustom" data-parent="#accordionExample">
                                <fieldset class="form-group">
                                    <label>Tên menu</label>
                                    <input name="name" class="form-control" id="checkid" type="text">
                                </fieldset>
                                <fieldset class="form-group">
                                    <label>Liên kết</label>
                                    <input name="link" class="form-control" type="text">
                                </fieldset>
                                <fieldset class="form-group">
                                    <input type="submit" name="ThemCustom" value="Thêm" class="btn btn-success form-control">
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <table class="table table-bordered" id="myTable">
                        <!-- lấy id -->
                        <thead>
                            <tr>
                                <th class="text-center" style="width:20px">#</th>
                                <th>Tên danh mục</th>
                                <th>link</th>

                                <th class="text-center">Chức năng</th>
                                <th class="text-center" style="width:20px">Id</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($list_menu as $row) : ?>
                                <tr>
                                    <td class="text-center">
                                        <input name="checkid" type="checkbox">
                                    </td>
                                    <td><?php echo $row['name']; ?></td>
                                    <td><?php echo $row['link']; ?></td>

                                    <td class="text-center">
                                        <?php if ($row['status'] == 1) : ?>
                                            <a href="index.php?option=menu&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-success">
                                                <i class="fas fa-toggle-on"></i>
                                            </a>
                                        <?php else : ?>
                                            <a href="index.php?option=menu&cat=status&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger">
                                                <i class="fas fa-toggle-off"></i>
                                            </a>
                                        <?php endif; ?>
                                        <a href="index.php?option=menu&cat=update&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-info">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href="index.php?option=menu&cat=deltrash&id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </td>
                                    <td class="text-center"><?php echo $row['id']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- /.content-wrapper -->
</form>
<?php require_once('../views/backend/footer.php') ?>