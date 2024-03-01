<?php

use App\Models\Category;
use App\Models\Product;
use App\Library\Phantrang;

$category = new Category();
$slug = $_REQUEST['cat'];
$row_cat = $category->category_row($slug);

$catlistid = array();
$catlistid[] = $row_cat['id'];
$listcat1 = $category->category_parentid($row_cat['id']);
if (count($listcat1)) {
    foreach ($listcat1 as $cat1) {
        $catlistid[] = $cat1['id'];
        $listcat2 = $category->category_parentid($cat1['id']);
        if (count($listcat2)) {
            foreach ($listcat2 as $cat2) {
                $catlistid[] = $cat2['id'];
            }
        }
    }
}
$product = new Product();
//Xử lý phân trang
$limit = 12;
$page = Phantrang::pageCurrent();
$offset = Phantrang::pageOffset($page, $limit);
$total = $product->product_category_count($catlistid);
$listproduct = $product->product_category($catlistid, $offset, $limit);

?>
<?php require_once('views/frontend/header.php'); ?>
<!-- -->
<section class="maincontent">
    <div class="container">

        <!-- end slider -->

        <!-- end nav introduction -->

        <!--end banners -->
        <div class="row product-home my-3">

            <div class="col-md-12">
                <div class="sanphammoi">
                    <h3><?php echo $row_cat['name']; ?></h3>
                    <div class="row">
                        <?php foreach ($listproduct as $pro) : ?>
                            <div class="col-md-3">
                                <div class="card" style="width: 100%;">
                                    <a href="index.php?option=product&id=<?php echo $pro['slug']; ?>">
                                        <img src="public/images/products/<?php echo $pro['img']; ?>" class="card-img-top" alt="<?php echo $pro['img']; ?>">
                                    </a>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <a href="index.php?option=product&id=<?php echo $pro['slug']; ?>">
                                                <?php echo $pro['name']; ?>
                                            </a>
                                        </h5>
                                        <p>Giá: <?php echo number_format($pro['price']); ?></p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <div>
                        <?php echo Phantrang::pageLink($total, $page, $limit, 'index.php?option=product&cat=' . $slug); ?>
                    </div>
                </div>
            </div>
        </div>


        <!--end products 1-->


        <!--end row products 2-->

        <!-- sale -->
        <div class="row ">
            <div class="col-md-6">
                <div class="title row">
                    <div class="col-md-4 title1 text-danger">
                        <h3>NỔI BẬT</h3>
                    </div>
                    <div class="col-md-2">
                        <h6>Công nghệ</h6>
                    </div>
                    <div class="col-md-2">
                        <h6>Thời trang</h6>
                    </div>
                    <div class="col-md-3">
                        <a href="#">
                            <h6>Xem thêm</h6>
                        </a>
                    </div>
                </div>
                <div class="row table table-bordered">
                    <div class="col-md-6">
                        <div class="card" style="width: 100%;">
                            <img src="public/images/products/iphone-01.png" class="card-img-top" alt="...">
                            <div class="card-body text-center">
                                <h5 class="card-title">Iphone 13 Promax</h5>
                                <p>33.990.000đ</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="item1 row my-3">
                            <div class="product-img col-md-6" style="width: 40%;">
                                <img src="public/images/products/samsung-01.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">Samsung S22 Ultra</h5>
                                <p>33.990.000đ</p>
                            </div>
                        </div>
                        <div class="item2 row my-3">
                            <div class="product-img col-md-6" style="width:40%;">
                                <img src="public/images/products/airpod-01.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">AirPods Pro</h5>
                                <p>5.190.000đ</p>
                            </div>
                        </div>
                        <div class="item3 row my-3">
                            <div class="product-img col-md-6" style="width: 40%;">
                                <img src="public/images/products/mac-02.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">Macbook Pro 14inch</h5>
                                <p>49.990.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="title row">
                    <div class="col-md-4 title1">
                        <h3>KHUYẾN MÃI</h3>
                    </div>
                    <div class="col-md-2">
                        <h6>Công nghệ</h6>
                    </div>
                    <div class="col-md-2">
                        <h6>Thời trang</h6>
                    </div>
                    <div class="col-md-3">
                        <a href="#">
                            <h6>Xem thêm</h6>
                        </a>
                    </div>
                </div>
                <div class="row table table-bordered">
                    <div class="col-md-6">
                        <div class="card" style="width: 100%;">
                            <img src="public/images/products/iphone-01.png" class="card-img-top" alt="...">
                            <div class="card-body text-center">
                                <h5 class="card-title">Iphone 13 Promax</h5>
                                <p>Gốc: 33.990.000đ <br> Sale: 31.990.000đ</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 ">
                        <div class="item1 row my-3">
                            <div class="product-img col-md-6" style="width: 40%;">
                                <img src="public/images/products/mac-02.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">Macbook Pro 14inch</h5>
                                <p>Sale: 45.990.000đ</p>
                            </div>
                        </div>
                        <div class="item2 row my-3">
                            <div class="product-img col-md-6" style="width:40%;">
                                <img src="public/images/products/airpod-01.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">AirPods Pro</h5>
                                <p>Sale: 5.190.000đ</p>
                            </div>
                        </div>
                        <div class="item3 row my-3">
                            <div class="product-img col-md-6" style="width: 40%;">
                                <img src="public/images/products/dirtycoins-03.png" class="card-img-top" alt="...">
                            </div>
                            <div class="product-name col-md-6">
                                <h5 class="card-title">Áo 03</h5>
                                <p>Sale: 199.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--end products 3-->

        <div class="row my-3">
            <div class="col-md-0">
                <img src="public/images/banners/long-banner.webp" class="d-block w-100" alt="...">
            </div>
        </div>
        <!--end long banner-->

        <div class="row my-5">
            <h5>BÀI VIẾT MỚI</h5>
            <div class="col-md-4">
                <img src="public/images/newspaper/10.png" class="d-block w-100" alt="..."><br>
                <a href="#">Tiết kiệm chi phí khi mua đồ trẻ em</a>
                <p>07/12/2016 28 bình luận</p>
            </div>
            <div class="col-md-4">
                <img src="public/images/newspaper/4.png" class="d-block w-100" alt="..."><br>
                <a href="#">Những Điều Cần Biết Khi Sắm Đồ Trẻ Em</a>
                <p>07/12/2016 28 bình luận</p>
            </div>
            <div class="col-md-4">
                <img src="public/images/newspaper/6.png" class="d-block w-100" alt="..."><br>
                <a href="#">Cách Chọn Mua Quần Áo Cho Trẻ</a>
                <p>07/12/2016 28 bình luận</p>
            </div>
        </div>
    </div>

</section>
<!--section maincontent-->

<?php
require_once('views/frontend/footer.php');
?>