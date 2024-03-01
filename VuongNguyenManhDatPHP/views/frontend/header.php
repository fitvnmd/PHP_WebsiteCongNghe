<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/bootstrap.min.css">
    <link rel="stylesheet" href="public/css/all.min.css">
    <link rel="stylesheet" href="public/css/layoutsite.css">
    <title>Document</title>
    <script src="public/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="lLFsanly"></script>
    <section class="topbar border-bottom border-success">
        <div class="container">
            <div class="row">
                <div class="col-md-6">Chào mừng bạn đến với</div>
                <div class="col-md-6 text-end">
                    <a class="id" href="index.php?option=customer&cat=login">Đăng nhập</a>
                    <a class="id" href="index.php?option=customer&cat=register">Đăng ký</a>
                </div>
            </div>
        </div>
    </section>
    <!--section topbar-->

    <section class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="public/images/logo2.png" class="img-fluid" alt="logo">
                </div>
                <div class="col-md-6">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Bạn muốn tìm gì..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <span class="input-group-text" id="basic-addon2">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </span>
                    </div>
                </div>
                <div class="col-md-3 text-end">
                    <p><i class="fa-solid fa-phone"></i>
                        Hỗ Trợ: <a class="contract" href="#">1900.79.79.79</a><br>
                        Email: <a class="contract" href="#"> revostrore@sapo.vn</a>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!--section header-->
    <?php require_once('views/frontend/mod_mainmenu.php'); ?>

    <!--section mainmenu-->