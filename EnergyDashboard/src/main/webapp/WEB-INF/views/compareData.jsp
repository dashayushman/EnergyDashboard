
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
          folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
              <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<%@ include file="../../resources/includes/header.jsp"%>
		<%@ include file="../../resources/includes/sideBar.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->
		


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Compare Your Consumption
					<!--                      <small>Version 1.0</small>-->
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Compare Data</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Info boxes -->
				<div class="row">
					<div class="col-md-6">
						<div class="box box-default">
							<div class="box-header with-border">
								<h3 class="box-title">Select Friends to Compare</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<button class="btn btn-box-tool" data-widget="remove">
										<i class="fa fa-remove"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Friends</label> <select class="form-control select2"
												style="width: 100%;">
												<option selected="selected">Baba</option>
												<option>Alice</option>
												<option>Cathy</option>
												<option>Diwakar</option>
												<option>Teej</option>
												<option>Tex</option>
												<option>Willy</option>
											</select>
										</div>
										<!-- /.form-group -->
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->

					</div>

					<div class="col-md-6">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Date picker</h3>
							</div>
							<div class="box-body">
								<!-- Date range -->
								<div class="form-group">
									<label>Date range:</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-calendar"></i>
										</div>
										<input type="text" class="form-control pull-right"
											id="reservation">
									</div>
									<!-- /.input group -->
								</div>
								<!-- /.form group -->



							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>


				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-md-12">
						<div class="box">
							<div class="box-header with-border">
								<h3 class="box-title">Power Consumption Comparison Result</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<div class="btn-group">
										<button class="btn btn-box-tool dropdown-toggle"
											data-toggle="dropdown">
											<i class="fa fa-wrench"></i>
										</button>
										<ul class="dropdown-menu" role="menu">
											<li><a href="#">Action</a></li>
											<li><a href="#">Another action</a></li>
											<li><a href="#">Something else here</a></li>
											<li class="divider"></li>
											<li><a href="#">Separated link</a></li>
										</ul>
									</div>
									<button class="btn btn-box-tool" data-widget="remove">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col-md-12">
										<p class="text-center">
											<strong>Data: 1 Jan, 2014 - 30 Jul, 2014</strong>
										</p>
										<div class="chart">
											<!-- Sales Chart Canvas -->
											<canvas id="salesChart" style="height: 180px;"></canvas>
										</div>
										<!-- /.chart-responsive -->
									</div>
								</div>
								<!-- /.row -->
							</div>
							<!-- ./box-body -->
							<div class="box-footer">
								<div class="row">
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<span class="description-percentage text-green"><i
												class="fa fa-caret-up"></i> 17%</span>
											<h5 class="description-header">352.43 KWH</h5>
											<span class="description-text">TOTAL Consumption</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<span class="description-percentage text-yellow"><i
												class="fa fa-caret-left"></i> 0%</span>
											<h5 class="description-header">103.90 KWH</h5>
											<span class="description-text">Friend's Consumption</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<span class="description-percentage text-green"><i
												class="fa fa-caret-up"></i> 20%</span>
											<h5 class="description-header">248.53 KWH</h5>
											<span class="description-text">TOTAL Difference</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block">
											<span class="description-percentage text-red"><i
												class="fa fa-caret-down"></i> 18%</span>
											<h5 class="description-header">You Lost!</h5>
											<span class="description-text">Compettition Outcome</span>
										</div>
										<!-- /.description-block -->
									</div>
								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-footer -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					<div class="col-md-12">
						<div class="row">


							<div class="col-md-6">
								<!-- USERS LIST -->
								<div class="box box-danger">
									<div class="box-header with-border">
										<h3 class="box-title">Latest Members</h3>
										<div class="box-tools pull-right">
											<span class="label label-danger">8 New Members</span>
											<button class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
											<button class="btn btn-box-tool" data-widget="remove">
												<i class="fa fa-times"></i>
											</button>
										</div>
									</div>
									<!-- /.box-header -->
									<div class="box-body no-padding">
										<ul class="users-list clearfix">
											<li><img src="dist/img/user1-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Alexander
													Pierce</a> <span class="users-list-date">Today</span></li>
											<li><img src="dist/img/user8-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Norman</a>
												<span class="users-list-date">Yesterday</span></li>
											<li><img src="dist/img/user7-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Jane</a>
												<span class="users-list-date">12 Jan</span></li>
											<li><img src="dist/img/user6-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">John</a>
												<span class="users-list-date">12 Jan</span></li>
											<li><img src="dist/img/user2-160x160.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Alexander</a>
												<span class="users-list-date">13 Jan</span></li>
											<li><img src="dist/img/user5-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Sarah</a>
												<span class="users-list-date">14 Jan</span></li>
											<li><img src="dist/img/user4-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Nora</a>
												<span class="users-list-date">15 Jan</span></li>
											<li><img src="dist/img/user3-128x128.jpg"
												alt="User Image"> <a class="users-list-name" href="#">Nadia</a>
												<span class="users-list-date">15 Jan</span></li>
										</ul>
										<!-- /.users-list -->
									</div>
									<!-- /.box-body -->
									<div class="box-footer text-center">
										<a href="javascript::" class="uppercase">View All Users</a>
									</div>
									<!-- /.box-footer -->
								</div>
								<!--/.box -->
							</div>
							<!-- /.col -->

							<div class="col-md-6">
								<!-- PRODUCT LIST -->
								<div class="box box-primary">
									<div class="box-header with-border">
										<h3 class="box-title">Recently Added Data</h3>
										<div class="box-tools pull-right">
											<button class="btn btn-box-tool" data-widget="collapse">
												<i class="fa fa-minus"></i>
											</button>
											<!--                                  <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
										</div>
									</div>
									<!-- /.box-header -->
									<div class="box-body">
										<ul class="products-list product-list-in-box">
											<li class="item">
												<div class="product-img">
													<img src="dist/img/default-50x50.gif" alt="Product Image">
												</div>
												<div class="product-info">
													<a href="javascript::;" class="product-title">Data File
														1<span class="label label-warning pull-right">3.2
															MB</span>
													</a> <span class="product-description"> Saturday, 16th
														Jan 09:15am </span>
												</div>
											</li>
											<!-- /.item -->
											<li class="item">
												<div class="product-img">
													<!--                                        <i class="fa fa-dashboard"></i>-->
													<img src="dist/img/default-50x50.gif" alt="Product Image">
												</div>
												<div class="product-info">
													<a href="javascript::;" class="product-title">Data File
														2 <span class="label label-info pull-right">2.64 MB</span>
													</a> <span class="product-description"> Sunday, 17th Jan
														9:15pm </span>
												</div>
											</li>
											<!-- /.item -->
											<li class="item">
												<div class="product-img">
													<img src="dist/img/default-50x50.gif" alt="Product Image">
												</div>
												<div class="product-info">
													<a href="javascript::;" class="product-title">Data File
														3<span class="label label-danger pull-right">2.15
															MB</span>
													</a> <span class="product-description"> Thursday, 14th
														Jan 11:15pm </span>
												</div>
											</li>
											<!-- /.item -->
											<li class="item">
												<div class="product-img">
													<img src="dist/img/default-50x50.gif" alt="Product Image">
												</div>
												<div class="product-info">
													<a href="javascript::;" class="product-title">Data File
														4 <span class="label label-success pull-right">1.8
															MB</span>
													</a> <span class="product-description"> Sunday, 10th Jan
														4:15pm </span>
												</div>
											</li>
											<!-- /.item -->
										</ul>
									</div>
									<!-- /.box-body -->
									<div class="box-footer text-center">
										<a href="javascript::;" class="uppercase">View All Files</a>
									</div>
									<!-- /.box-footer -->
								</div>
								<!-- /.box -->
							</div>
							<!-- /.col -->

						</div>
						<!-- /.row -->


					</div>
					<!-- /.col -->

				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		
		<%@ include file="../../resources/includes/footer.jsp"%>



		<!-- Control Sidebar -->



	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="plugins/chartjs/Chart.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard2.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
	<script src="plugins/daterangepicker/daterangepicker.js"></script>

	<script>
		$(function() {

			//Date range picker
			$('#reservation').daterangepicker();
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			});
			//Date range as a button
			$('#daterange-btn').daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#reportrange span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'));
					});

			// //iCheck for checkbox and radio inputs
			// $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
			//   checkboxClass: 'icheckbox_minimal-blue',
			//   radioClass: 'iradio_minimal-blue'
			// });
			// //Red color scheme for iCheck
			// $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
			//   checkboxClass: 'icheckbox_minimal-red',
			//   radioClass: 'iradio_minimal-red'
			// });
			// //Flat red color scheme for iCheck
			// $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
			//   checkboxClass: 'icheckbox_flat-green',
			//   radioClass: 'iradio_flat-green'
			// });

			//Colorpicker
			// $(".my-colorpicker1").colorpicker();
			// //color picker with addon
			// $(".my-colorpicker2").colorpicker();

			// //Timepicker
			// $(".timepicker").timepicker({
			//   showInputs: false
			// });
		});
	</script>
</body>

</html>
