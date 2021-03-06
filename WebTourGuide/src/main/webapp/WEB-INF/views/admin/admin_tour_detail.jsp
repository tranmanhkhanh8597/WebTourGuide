<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Data Tables</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="admin/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="admin/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="admin/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="admin/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="admin/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the admin/css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="admin/css/_all-skins.min.css">
  
  <!-- page script -->
<script src="admin/js/ckeditor/ckeditor.js" ></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
	
  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<%int i=1;%>
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <jsp:include page="include/Header.jsp"></jsp:include>
    

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Quản lý Tour
      </h1>
      <ol class="breadcrumb">
        <li><a href="admin"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="admin_tour">Quản lý Tour</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
          	<div class="box-header with-border">
          		<h3 class="box-title">Cập nhật Tour</h3>
          	</div>
            <!-- /.box-header -->
            <form action="updatetour" method="get">
            	<input type="hidden" name="_id" value="${tour._id}">
            <div class="box-body" >           
              <div class="col-sm-6">
              	<div class="form-group">
              		<label>Tên </label>
              		<input type="text" class="form-control" id="" name="name" value="${tour.name}">
              	</div>
              	<div class="form-group">
              		<label>rating</label>
              		<input type="text" class="form-control" id="" name="rating" value="${tour.rating}">
              	</div>
              	<div class="form-group">
              		<label>price</label>
              		<input type="text" class="form-control" id="" name="price" value="${tour.price}">
              	</div>
              	<div class="form-group">
              		<label>time</label>
              		<input type="text" class="form-control" id="" name="time" value="${tour.time}">
              	</div>
              	<div class="form-group">
              		<label>introduce</label>
              		<input type="text" class="form-control" id="" name="introduce" value="${tour.introduce}">
              	</div>
              	<div class="form-group">
              		<label>journeys</label>
              		<input type="text" class="form-control" id="" name="journeys" value="${tour.journeys}">
              	</div>
              	<div class="form-group">
              		<label>transportation</label>
              		<input type="text" class="form-control" id="" name="transportation" value="${tour.transportation}">
              	</div>
              	<div class="form-group">
              		<label>tourduration</label>
              		<input type="text" class="form-control" id="" name="tour_duration" value="${tour.tour_duration}">
              	</div>
          	  </div>
          	  <div class="col-sm-6">
              	<div class="form-group">
              		<label>includes</label>
              		<input type="text" class="form-control" id="" name="includes" value="${tour.includes}">
              	</div>
              	<div class="form-group">
              		<label>retrictions</label>
              		<input type="text" class="form-control" id="" name="retrictions" value="${tour.retrictions}">
              	</div>
              	<div class="form-group">
              		<label>image</label>
              		<input type="text" class="form-control" id="" name="image" value="${tour.image}">
              	</div>
              	<div class="form-group">
              		<label>status</label>
              		<input type="text" class="form-control" id="" name="status" value="${tour.status}">
              	</div>
              	<div class="form-group">
              		<label>location</label>
              		<input type="text" class="form-control" id="" name="location" value="${tour.location}">
              	</div>
              	<div class="form-group">
              		<label>guiderName</label>
              		<input type="text" class="form-control" id="" name="guiderName" value="${tour.guiderName}">
              	</div>
              	<div class="form-group">
              		<label>title</label>
              		<input type="text" class="form-control" id="" name="title" value="${tour.title}">
              	</div>
              	<div class="form-group">
              		<label>limit_person</label>
              		<input type="text" class="form-control" id="" name="limit_person" value="${tour.limit_person}">
              	</div>
              	<div class="form-group">
              		<label>details</label>
              		<input type="text" class="form-control" id="" name="details" value="${tour.details}">
              	</div>
          	  </div>
          	  <div class="box-footer">
            	<button type="submit" id="" class="btn btn-info pull-right">Lưu lại</button>
            </div>
            </div>
            </form>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <!--Modal-->
  <div class="row">

 </div>

  <!-- Control Sidebar -->
 <jsp:include page="include/footer.jsp"></jsp:include>
 
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="admin/js/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="admin/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="admin/js/jquery.dataTables.min.js"></script>
<script src="admin/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="admin/js/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="admin/js/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="admin/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="admin/js/demo.js"></script>


<script type="text/javascript" language="javascript">
//    CKEDITOR.replace('noiDung');
</script>
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })

</script>
</body>
</html>
