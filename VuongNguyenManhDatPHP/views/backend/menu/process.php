

<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');

use App\Models\Menu;
use App\Models\Category;
use App\Models\Post;
use App\Models\Topic;

$menu = new Menu();
$category = new Category();
$post = new Post();
$topic = new Topic();

//Category
if (isset($_POST['ThemCategory'])) {
    if (isset($_POST['nameCategory'])) {
        $listid = $_POST['nameCategory'];
        foreach ($listid as $id) {
            $row_category = $category->category_row($id);
            $data = array(
                'name' => $row_category['name'],
                'link' => 'index.php?option=product&cat=' . $row_category['slug'],
                'type' => 'category',
                'tableid' => $id,
                'orders' => 1,
                'position' => $_POST['position'],
                'parentid' => 0,
                'status' => 2,
                'created_at' => date('Y-m-d H:i:s'),
                'created_by' => $_SESSION['userid']
            );
            $menu->menu_insert($data);
        }
        header("location:index.php?option=menu");
    } else {
        header("location:index.php?option=menu");
    }
}

//Topic
if (isset($_POST['ThemTopic'])) {
    if (isset($_POST['nameTopic'])) {
        $listid = $_POST['nameTopic'];
        foreach ($listid as $id) {
            $row_topic = $topic->topic_row($id);
            $data = array(
                'name' => $row_topic['name'],
                'link' => 'index.php?option=post&cat=' . $row_topic['slug'],
                'type' => 'topic',
                'tableid' => $id,
                'orders' => 1,
                'position' => $_POST['position'],
                'parentid' => 0,
                'status' => 2,
                'created_at' => date('Y-m-d H:i:s'),
                'created_by' => $_SESSION['userid']
            );
            $menu->menu_insert($data);
        }
        header("location:index.php?option=menu");
    } else {
        header("location:index.php?option=menu");
    }
}

//Page
if (isset($_POST['ThemPage'])) {
    if (isset($_POST['namePage'])) {
        $listid = $_POST['namePage'];
        foreach ($listid as $id) {
            $row_page = $post->post_row($id);
            $data = array(
                'name' => $row_page['title'],
                'link' => 'index.php?option=post&cat=' . $row_page['slug'],
                'type' => 'page',
                'tableid' => $id,
                'orders' => 1,
                'position' => $_POST['position'],
                'parentid' => 0,
                'status' => 2,
                'created_at' => date('Y-m-d H:i:s'),
                'created_by' => $_SESSION['userid']
            );
            $menu->menu_insert($data);
        }
        header("location:index.php?option=menu");
    } else {
        header("location:index.php?option=menu");
    }
}

//Custom
if (isset($_POST['ThemCustom'])) {
    if (strlen($_POST['name']) > 0 && strlen($_POST['link']) > 0) {

        $data = array(
            'name' => $_POST['name'],
            'link' => $_POST['link'],
            'type' => 'custom',
            'orders' => 1,
            'position' => $_POST['position'],
            'parentid' => 0,
            'status' => 2,
            'created_at' => date('Y-m-d H:i:s'),
            'created_by' => $_SESSION['userid']
        );
        $menu->menu_insert($data);
        header("location:index.php?option=menu");
    } else {
        header("location:index.php?option=menu");
    }
}



if (isset($_POST['CAPNHAT'])) {

    $id = $_POST['id'];
    $data = $_POST['data'];
    //Lấy những thông tin hệ thống

    $data['updated_at'] = date('Y-m-d H:i:s');
    $data['updated_by'] = $_SESSION['userid'];
    $menu->menu_update($data, $id);
    header("location:index.php?option=menu");
}
