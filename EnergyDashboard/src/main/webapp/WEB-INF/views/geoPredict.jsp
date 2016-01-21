<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>EnergyDE | Geo</title>

<!-- Bootstrap 3.3.5 -->
<link rel="shortcut icon" href="/dist/img/favicon.png">
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
<link rel="stylesheet" href="plugins/select2/select2.min.css">
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
					Geographical View <small>Visualise and Predict usage for
						selected areas</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Geo</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Info boxes -->
				<div class="row">

					<div class="box box-warning">
						<div class="box-header with-border">
							<h3 class="box-title">Select Region</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<form role="form">

								<!-- select -->
								<div class="form-group">

									<select class="form-control">
										<option>Kaiserslautern</option>
										<option>Berlin</option>
										<option>Munich</option>
										<option>Stuttgart</option>
										<!--                        <option>option 5</option>-->
									</select>
								</div>

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Show</button>
									<button type="submit" class="btn btn-success">Predict</button>
								</div>

							</form>
						</div>
						<!-- /.box-body -->
					</div>
				</div>

				<div class="row">
					<div class="col-md-6">
						<!-- MAP & BOX PANE -->
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">Available Regions</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<!--                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body no-padding">
								<div class="row">
									<div class="col-md-12 col-sm-12">
										<div class="pad">
											<!-- Map will be created here -->
											<div id="world-map-markers" style="height: 325px;"></div>
										</div>
									</div>
									<!-- /.col -->

								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
						<div class="row"></div>
						<!-- /.row -->

					</div>
					<!-- /.col -->
					<div class="col-md-6">
						<div class="box">
							<div class="box-header with-border">
								<h3 class="box-title">Region Wise Consumption</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>

									<!--                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col-md-12">
										<p class="text-center">
											<strong>Sales: 1 Jan, 2014 - 30 Jul, 2014</strong>
										</p>
										<div class="chart">
											<!-- Sales Chart Canvas -->
											<canvas id="salesChart" style="height: 180px;"></canvas>
										</div>
										<!-- /.chart-responsive -->
									</div>
									<!-- /.col -->

								</div>
								<!-- /.row -->
							</div>
							<!-- ./box-body -->
							<div class="box-footer">
								<div class="row">
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<!--                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>-->
											<h5 class="description-header">210.43 KWH</h5>
											<span class="description-text">TOTAL USAGE</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<!--                        <span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>-->
											<h5 class="description-header">€1090.90</h5>
											<span class="description-text">TOTAL COST</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block border-right">
											<!--                        <span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>-->
											<h5 class="description-header">€13.53</h5>
											<span class="description-text">AMOUNT SAVED</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-xs-6">
										<div class="description-block">
											<!--                        <span class="description-percentage text-red"><i class="fa fa-caret-down"></i> 18%</span>-->
											<h5 class="description-header">20.34 KWH</h5>
											<span class="description-text">EXTRA USAGE</span>
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


					<div class="col-md-4" style="visibility: hidden;">

						<div class="box box-default">
							<div class="box-header with-border">
								<h3 class="box-title">Browser Usage</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
									<button class="btn btn-box-tool" data-widget="remove">
										<i class="fa fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<div class="row">
									<div class="col-md-8">
										<div class="chart-responsive">
											<canvas id="pieChart" height="150"></canvas>
										</div>
										<!-- ./chart-responsive -->
									</div>
									<!-- /.col -->
									<div class="col-md-4">
										<ul class="chart-legend clearfix">
											<li><i class="fa fa-circle-o text-red"></i> Chrome</li>
											<li><i class="fa fa-circle-o text-green"></i> IE</li>
											<li><i class="fa fa-circle-o text-yellow"></i> FireFox</li>
											<li><i class="fa fa-circle-o text-aqua"></i> Safari</li>
											<li><i class="fa fa-circle-o text-light-blue"></i> Opera</li>
											<li><i class="fa fa-circle-o text-gray"></i> Navigator</li>
										</ul>
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- /.box-body -->
							<div class="box-footer no-padding">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="#">United States of America <span
											class="pull-right text-red"><i
												class="fa fa-angle-down"></i> 12%</span></a></li>
									<li><a href="#">India <span
											class="pull-right text-green"><i
												class="fa fa-angle-up"></i> 4%</span></a></li>
									<li><a href="#">China <span
											class="pull-right text-yellow"><i
												class="fa fa-angle-left"></i> 0%</span></a></li>
								</ul>
							</div>
							<!-- /.footer -->
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



		<%@ include file="../../resources/includes/footer.jsp"%>




		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

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
	<script src="dist/js/pages/dashboard5.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
</body>
</html>
