<?php require_once('condb.php');
$query_typeprd = "SELECT * FROM tbl_type ORDER BY type_id ASC";
$typeprd =mysqli_query($con, $query_typeprd) or die ("Error in query: $query_typeprd " . mysqli_error());
// echo($query_typeprd);
// exit();
$row_typeprd = mysqli_fetch_assoc($typeprd);
$totalRows_typeprd = mysqli_num_rows($typeprd);
?>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <nav class="navbar navbar-expand-lg navbar-info bg-light">
        <a class="btn btn-Light" href="index.php" role="button">หน้าหลัก</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
    
            &nbsp;
            <li class="nav-item">
              <a class="btn btn-Light" href="logout.php" role="button" onclick="return confirm('คุณต้องการออกจากระบบหรือไม่ ?')">ออกจากระบบ</a>
            </li>
            
                                  
          </ul>     
        </div>
      </nav>
    </div>
  </div>
</div>