<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/x-icon" href="/resources/img/faviconlogo.png">
    <title>WAYUPARTY | Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <script src="/resources/js/jquery.input-stepper.js"></script>  
   <link rel="stylesheet" href="/resources/css/style.css">
   
   <style>
   body { background-color: #f2f3f7; padding-top: 0px; box-sizing: border-box; }
.cart_widget { background-color: #fff; padding: 15px; border: 1px solid rgba(203,213,224,var(--border-opacity))!important; border-radius: 6px; min-height: 200px;
 font-size: 14px;
}
   </style>
</head>
<body>
<nav class="navbar navbar-dark bg-dark">
                <a href="/home" id="homeLinkIcon" style="color: #be9c52;" class="fa fa-home fa-2x"></a>
                <a class="navbar-brand" href="#" style="padding-left: 21px; text-align: center;">
                    <img id="Image1" src="/resources/img/logo.png" style="height:50px;width:200px;">
                </a>
                <a id="user" class="nav-link" href="/login"><span class="fa fa-user fa-2x" style="color: #be9c52;"></span></a>
</nav>
<div id="wrapper" class="wrapper bg-ash mt-3">
        <div class="dashboard-page-one">
	          <div class="dashboard-content-one">
  <div class="row">
    <div class="col-sm-12 col-md-12">
    <div class="cart_widget">
      <h4>Orders</h4>
      <div class="clearfix row cart_widget_inner">
            <div class="col-sm-12 col-md-10">
                <div class="row">
                    <div class="col-sm-12 col-md-8 cart_margn_top">
                            <p>Text that should appear next to the image, is placed inside a container with</p>
                            <p class="small text-muted">Seller Name</p>
                            <p class="text-muted"><i class="fa fa-rupee"></i> 750</p>
                    </div>
                </div>
            </div>
    </div>


    <div class="clearfix row cart_widget_inner">
      <div class="col-sm-12 col-md-10">
          <div class="row">
              <div class="col-sm-12 col-md-8 cart_margn_top">
                      <p>Text that should appear next to the image, is placed inside a container with</p>
                      <p class="small text-muted">Seller Name</p>
                      <p class="text-muted"><i class="fa fa-rupee"></i> 750</p>
              </div>
          </div>
      </div>
</div>
    </div>
  </div>
  </div>
  
   <div class="card ui-tab-card">
                    <div class="card-body">
                        <div class="custom-tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tab4" role="tab" aria-selected="true">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tab5" role="tab" aria-selected="false">Profile</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tab6" role="tab" aria-selected="false">Settings</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab4" role="tabpanel">
                                    <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries,but alsowhen an unknown printer took a galley of type 
                                    and scrambled it to make a type specimen book. It has survived not only five centuries, but 
                                    alsowhen an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries, but also</p>
                                </div>
                                <div class="tab-pane fade" id="tab5" role="tabpanel">
                                    <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries,but alsowhen an unknown printer took a galley of type 
                                    and scrambled it to make a type specimen book. It has survived not only five centuries, but 
                                    alsowhen an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries, but also</p>
                                </div>
                                <div class="tab-pane fade" id="tab6" role="tabpanel">
                                    <p>When an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries,but alsowhen an unknown printer took a galley of type 
                                    and scrambled it to make a type specimen book. It has survived not only five centuries, but 
                                    alsowhen an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                    It has survived not only five centuries, but also</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
  
  
</div>
</div>
</div>
<footer class="footer" style="background-color: #343a40;">
            <div class="container">
                WAYUPARTY © 2019. copyrights all rights reserved. Developed by Acculytixs Pvt Ltd.
            </div>
 </footer>
 
 <script type="text/javascript">
		window.onload = function () {
			var orderUUID = '${orderUUID}';
			var appUrl = '${appUrl}';
			alert(appUrl);
			
		 };
 </script> 
 
</body>
</html>
