<?php
$slug = $_REQUEST['id']; // slug của sản phẩm
use App\Models\Category;
use App\Models\Product;

$product = new Product();
$category = new Category();

$row_product = $product->product_rowslug($slug); //Trả về 1 mẫu tin
$catid = $row_product['catid'];
$title = $row_product["name"];
//$row_cat = $category->category_row($slug);

$catlistid = array();
$catlistid[] = $row_product['catid'];
$listcat1 = $category->category_parentid($catid);
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
$list_product_other = $product->product_list_listcatid($catlistid, 8, $row_product['id']);

?>
<?php require_once('views/frontend/header.php'); ?>
<!-- -->
<section class="maincontent">
    <div class="container">
        <div class="row product-home my-3">
            <div class="col-md-6 col-lg-6">
                <img src="public/images/products/<?php echo $row_product['img']; ?>" class="card-img-top" alt="<?php echo $row_product['img']; ?>">
            </div>
            <div class="col-md-6 col-lg-6">
                <h1><?php echo $row_product['name']; ?></h1>
                <h5>
                    <p>Giá: <?php echo number_format($row_product['price']); ?></p>
                </h5>
                <div class="input-group mb-3">
                    <input type="number" name="qty" value="1" min="1" style="width:50px" aria-describedby="basic-addon2">
                    <buton class="input-group-text" type="submit" id="basic-addon2">Thêm vào giỏ hàng</buton>
                </div>
                <p>
                <div class="fb-like" data-href="index.php?option=product&id=<?php echo $slug; ?>" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true"></div>
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <h3>Chi tiết sản phẩm:</h3>
                <p><?php echo $row_product['detail']; ?></p>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="fb-comments" data-href="index.php?option=product&id=<?php echo $slug; ?>" data-width="100%" data-numposts="5"></div>
            </div>
        </div>
        <h3>SẢN PHẨM CÙNG DANH MỤC</h3>
        <div class="row">
            <div class="row my-3">
                <?php foreach ($list_product_other as $item) : ?>
                    <div class="col-md-3">
                        <div class="card" style="width: 100%;">
                            <a href="index.php?option=product&id=<?php echo $item['slug']; ?>">
                                <img src="public/images/products/<?php echo $item['img']; ?>" class="card-img-top" alt="<?php echo $item['img']; ?>">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <a href="index.php?option=product&id=<?php echo $item['slug']; ?>">
                                        <?php echo $item['name']; ?>
                                    </a>
                                </h5>
                                <p>Giá: <?php echo number_format($item['price']); ?></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>


        <!--end products 1-->


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