<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <style>
    ion-icon {
    color: red;
    }
    </style>
    <title>status</title>
  </head>
  <body>
  <?php
  include('navbar2.php');
  ?>
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <br>
          <div class="alert alert-danger" role="alert">
          </div>
        </div>
        <br><br>
        <div class="col-2 col-sm-2">
          <button class="btn btn-secondary" style="width: 100%;" disabled> *รอชำระ <br> เงิน </button>
        </div>
        <div class="col-1 col-sm-1" style="margin-top: 15px;">
          <ion-icon name="arrow-forward-outline" size="large"></ion-icon>
        </div>
        <div class="col-2 col-sm-2">
          <button class="btn btn-secondary" style="width: 100%;" disabled> *ชำระ  <br> เงินแล้ว </button>
        </div>
        <div class="col-1 col-sm-1" style="margin-top: 15px;">
          <ion-icon name="arrow-forward-outline" size="large"></ion-icon>
        </div>
        <div class="col-2 col-sm-2">
          <button class="btn btn-success" style="width: 100%;"> *รอ<br>ส่งของ </button>
        </div>
        <div class="col-1 col-sm-1" style="margin-top: 15px;">
          <ion-icon name="arrow-forward-outline" size="large"></ion-icon>
        </div>
        <div class="col-3 col-sm-3">
          <button class="btn btn-secondary" style="width: 100%;" disabled> *ตรวจสอบ <br> เลข EMS </button>
        </div>
      </div>
    </div>
    
    </div>
    <footer style="margin-top: 100px;">
    </footer>
    
    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->
  </body>
</html>