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
        <h3 class="text-center">ĐĂNG KÝ THÀNH VIÊN</h3>
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
                <label for="hoten" class="form-label">Họ tên:</label>
                <input name="data[hoten]" type="text" class="form-control" required id="hoten" placeholder="VD: Nguyễn Văn A">
            </div>
            <div class="mb-3">
                <label class="form-label">Giới tính:</label>
                Nam <input type="radio" name="gioitinh" value="Nam" checked>
                Nữ <input type="radio" name="gioitinh" value="Nam">
            </div>
            <div class="mb-3">
                <label for="emailn" class="form-label">Email:</label>
                <input name="data[email]" required type="email" class="form-control" id="email" placeholder="VD: abc@gmail.com">
            </div>
            <div class="mb-3">
                <label for="dienthoai" class="form-label">Điện thoại:</label>
                <input name="data[dienthoai]" required type="text" class="form-control" id="dienthoai" placeholder="VD: 0979797979">
            </div>
            <div class="mb-3">
                <label for="quequan" class="form-label">Quê quán:</label>
                <select name="data[quequan" id="quequan" required class="form-control">
                    <?php foreach ($arraytinh as $matinh => $tentinh) : ?>
                        <option value="<?php echo $matinh; ?>"><?php echo $tentinh; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="mb-3">
                <label for="sothich" class="form-label">Sở thích:</label>
                Thể thao <input name="sothich[]" type="checkbox" value="Thể Thao" />
                Thể thao <input name="sothich[]" type="checkbox" value="Du lịch" />
            </div>
            <div class="mb-3">
                <label for="gioithieu" class="form-label">Giới thiệu bản thân:</label>
                <textarea name="data[gioithieu]" id="gioithieu" class="form-control"></textarea>
            </div>

            <div class="mb-3">
                <input name="GUI" type="submit" value="Đăng ký" class="btn btn-success">
                <input name="HUY" type="reset" value="Huỷ" class="btn btn-danger">
            </div>
        </form>
    </div>
</body>

</html>