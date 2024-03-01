<?php
if (isset($_REQUEST['cat'])) {
    $cat = $_REQUEST['cat'];
    if ($cat == 'login') {
        require_once('views/frontend/customer-login.php');
    } elseif ($cat == 'logout') {
        unset($_SESSION['user_customer']);
        unset($_SESSION['fullname_customer']);
        header("location:index.php");
    } elseif ($cat == 'register') {
        require_once('views/frontend/customer-register.php');
    } else {
        header("location:index.php");
    }
}
