<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="layout.css">
</head>

<body>
    <?php
    //Đọc file JSON, CSDL, EXCEL, .txt
    $arraytinh = array(
        'hn' => 'Hà Nội',
        'hcm' => 'Hồ Chí Minh',
        'ct' => 'Cần Thơ',
        'dn' => 'Đồng Nai',
        'ht' => 'Hà Tĩnh',
        'vl' => 'Vĩnh Long',
        'dt' => 'Đồng Tháp'
    );
    ?>
    <div class="container bg-customer">
        <h3 class="text-center">ĐĂNG NHẬP THÀNH VIÊN</h3>
        <form action="xuly.php" method="post">
            <div class="mb-3">
                <label for="tendangnhap" class="form-label">Tên đăng nhập:</label>
                <input name="data[tendangnhap]" type="text" class="form-control" id="tendangnhap">
            </div>
            <div class="mb-3">
                <label for="matkhau" class="form-label">Mật khẩu:</label>
                <input name="data[matkhau]" type="password" required class="form-control" id="matkhau">
            </div>
            <div class="mb-3">
                <input name="GUI" type="submit" value="Đăng Nhập" class="btn btn-success">
                <input name="HUY" type="reset" value="Quên mật khẩu" class="btn btn-danger">
            </div>
        </form>
    </div>
</body>

</html>