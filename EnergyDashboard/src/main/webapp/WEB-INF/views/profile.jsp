<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLTE 2 | User Profile</title>
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
				<h1>User Profile</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Profile</a></li>

				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-md-3">

						<!-- Profile Image -->
						<div class="box box-primary">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle"
									src="dist/img/avatar04.png" alt="User profile picture">
								<p class="text-muted text-center">Energy Engineer</p>



								<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->


					</div>
					<!-- /.col -->
					<div class="col-md-9">
						<div class="nav-tabs-custom">
							<ul class="nav nav-tabs">

								<li class="active"><a href="#settings" data-toggle="tab">Information</a></li>
								<li><a href="#chngpass" data-toggle="tab">Change
										Password</a></li>
							</ul>
							<div class="tab-content">

								<div class="active tab-pane" id="settings">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="inputName" class="col-sm-2 control-label">Name</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputName"
													placeholder="Name">
											</div>
										</div>
										<div class="form-group">
											<label for="inputName" class="col-sm-2 control-label">Gender</label>
											<div class="col-sm-10">
												<select class="form-control">
													<option>Male</option>
													<option>Female</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="inputEmail" class="col-sm-2 control-label">Email</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputEmail"
													placeholder="Email">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-danger">Save
													Changes</button>
											</div>
										</div>
									</form>
								</div>
								<!-- /.tab-pane -->
								<div class="active tab-pane" id="chngpass">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="inputName" class="col-sm-2 control-label">Old
												Password</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputName"
													placeholder="Name">
											</div>
										</div>

										<div class="form-group">
											<label for="inputEmail" class="col-sm-2 control-label">New
												Password</label>
											<div class="col-sm-10">
												<input type="email" class="form-control" id="inputEmail"
													placeholder="Email">
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<button type="submit" class="btn btn-danger">Update
													Password</button>
											</div>
										</div>
									</form>
								</div>
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-content -->
						</div>
						<!-- /.nav-tabs-custom -->
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
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
</body>
</html>
