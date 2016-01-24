<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | General Form Elements</title>
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="shortcut icon" href="/dist/img/favicon.png">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
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
          <!-- Content Wrapper. Contains page content -->
          <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
              <h1>
                Upload Energy Consumption Data
                <small>Preview</small>
              </h1>
              <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li><a href="#">Upload Data</a></li>
              </ol>
            </section>

            <!-- Main content -->
            <section class="content">
              <div class="row">
                <!-- left column -->
                <div class="col-md-6">
                  <!-- general form elements -->
                  <div class="box box-primary" id="idUploadDataBox">
                    <div class="box-header with-border">
                      <h3 class="box-title">Upload</h3>
                    </div><!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" id="idUploadForm">
                      <div class="box-body">
                        <!-- select -->

                        <div class="form-group">
                          <label for="exampleInputFile">File input</label>
                          <input type="file" id="exampleInputFile">
                        </div>
                        
                      </div><!-- /.box-body -->

                      <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <span id="idErrorMessage" style="color: red;margin-left: 10px;"></span>
                        <span id="idSuccessMessage" style="color: green;margin-left: 10px;"></span>
                      </div>
                    </form>
                  </div><!-- /.box -->



                </div><!--/.col (left) -->
               <div class="col-md-6">
								<!-- PRODUCT LIST -->
								<div class="box box-primary" id="idRecentDataBox">
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
													<img src="dist/img/Text_File_Icon.png" alt="Product Image">
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
													<img src="dist/img/Text_File_Icon.png" alt="Product Image">
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
													<img src="dist/img/Text_File_Icon.png" alt="Product Image">
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
													<img src="dist/img/Text_File_Icon.png" alt="Product Image">
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
                <!-- right column -->
               
            </div><!-- /.box -->
            </section>
          </div><!--/.col (right) -->
       
     
   
		<%@ include file="../../resources/includes/footer.jsp"%>
   

    </div><!-- ./wrapper -->

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
    <script src="dist/js/pages/uploadData.js"></script>
  </body>
  </html>
