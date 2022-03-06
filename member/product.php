<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product List</title>
<?php include('../boot4.php');?>
</head>
<body>
<?php
  include('banner.php');
  include('navbar2.php');
  ?>
  <div class="container">
    <div class="row">
      <div class="col-md-12" style="margin-top: 10px">
        <div class="row">
<table width="600" border="1" align="center" bordercolor="#666666">
  <tr>
    <td width="91" align="center" bgcolor="#CCCCCC"><strong>ภาพ</strong></td>
    <td width="200" align="center" bgcolor="#CCCCCC"><strong>รายการ</strong></td>
    <td width="44" align="center" bgcolor="#CCCCCC"><strong>ราคา</strong></td>
    <td width="100" align="center" bgcolor="#CCCCCC"><strong>รายละเอียด</strong></td>
  </tr>
  
  
  <?php
  //connect db
  include("../condb.php");
  $sql = "SELECT * FROM tbl_product order by p_id ASC";  //เรียกข้อมูลมาแสดงทั้งหมด
  $result = mysqli_query($con, $sql);

  //echo $sql;
  //exit;
  while($row = mysqli_fetch_array($result))
  {
  	echo "<tr>";
	echo "<td align='center'><img src='../p_img/".$row['p_img'] ." ' width='80'></td>";
	echo "<td align='left'>" . $row["p_name"] . "</td>";
    echo "<td align='center'>" .number_format($row["p_price"],2). "</td>";
    echo "<td align='center'><a href='product_detail.php?p_id=$row[p_id]'>คลิก</a></td>";
	echo "</tr>";
  }
  ?>
</table>