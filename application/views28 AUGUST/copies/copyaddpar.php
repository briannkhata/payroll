<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title><?=$system;?> | <?=$page_title;?></title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/select2/select2.css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="<?=base_url();?>assets/global/css/components-md.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="<?=base_url();?>assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-md page-header-fixed page-sidebar-closed-hide-logo ">
<!-- BEGIN HEADER -->
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->
		<div class="page-logo">
			<a href="#">
			<h1 class="text-primary">LabSoft</h1>
			</a>
			<div class="menu-toggler sidebar-toggler">
				<!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
			</div>
		</div>
		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>

		<div class="page-top">
			<div class="top-menu">
				<ul class="nav navbar-nav pull-right">
				
				<?php
                    $username   = $this->db->get_where('users' , array('user_id'=>$this->session->userdata('user_id')))->row()->username;
                   	$usertype   = $this->db->get_where('users' , array('user_id'=>$this->session->userdata('user_id')))->row()->usertype;
					$staff_id   = $this->db->get_where('users' , array('user_id'=>$this->session->userdata('user_id')))->row()->staff_id;
					$fname      = $this->db->get_where('staff' , array('staff_id'=>$staff_id))->row()->fname;
                    $lname      = $this->db->get_where('staff' , array('staff_id'=>$staff_id))->row()->lname;                        
                ?>
					<li class="dropdown dropdown-user dropdown-dark">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
						<span class="username username-hide-on-mobile">
						<?=$fname.'   '.$lname;?></span>
						<img alt="" class="img-circle" src="<?=base_url();?>assets/admin/layout4/img/avatar9.jpg"/>
						</a>
						<ul class="dropdown-menu dropdown-menu-default">
							<li>
								<a href="#">
								<i class="icon-user"></i> My Profile </a>
							</li>
							<li>
								<a href="<?=base_url();?>User/lock">
								<i class="icon-lock"></i> Lock Screen </a>
							</li>
							<li>
								<a href="<?=base_url();?>User/logout">
								<i class="icon-key"></i> Log Out </a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
			<!-- END TOP NAVIGATION MENU -->
		</div>
		<!-- END PAGE TOP -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
			<div class="page-sidebar-wrapper">
			<div class="page-sidebar md-shadow-z-2-i  navbar-collapse collapse">
				<?php include 'includes/nav.php';?>
			</div>
		</div>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="page-head">
				
					<h1 class="text-primary text-center"><?=$company;?></h1>
				
				<div class="page-toolbar">
					<!-- BEGIN THEME PANEL -->
					<div class="btn-group btn-theme-panel">
						<a href="javascript:;" class="btn dropdown-toggle" data-toggle="dropdown">
						<i class="icon-settings"></i>
						</a>
						<div class="dropdown-menu theme-panel pull-right dropdown-custom hold-on-click">
							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12">
									<h3>THEME</h3>
									<ul class="theme-colors">
										<li class="theme-color theme-color-default active" data-theme="default">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Dark Header</span>
										</li>
										<li class="theme-color theme-color-light" data-theme="light">
											<span class="theme-color-view"></span>
											<span class="theme-color-name">Light Header</span>
										</li>
									</ul>
								</div>
								<div class="col-md-8 col-sm-8 col-xs-12 seperator">
									<h3>LAYOUT</h3>
									<ul class="theme-settings">
										<li>
											 Theme Style
											<select class="layout-style-option form-control input-small input-sm">
												<option value="square" selected="selected">Square corners</option>
												<option value="rounded">Rounded corners</option>
											</select>
										</li>
										<li>
											 Layout
											<select class="layout-option form-control input-small input-sm">
												<option value="fluid" selected="selected">Fluid</option>
												<option value="boxed">Boxed</option>
											</select>
										</li>
										<li>
											 Header
											<select class="page-header-option form-control input-small input-sm">
												<option value="fixed" selected="selected">Fixed</option>
												<option value="default">Default</option>
											</select>
										</li>
										<li>
											 Top Dropdowns
											<select class="page-header-top-dropdown-style-option form-control input-small input-sm">
												<option value="light">Light</option>
												<option value="dark" selected="selected">Dark</option>
											</select>
										</li>
										<li>
											 Sidebar Mode
											<select class="sidebar-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
										<li>
											 Sidebar Menu
											<select class="sidebar-menu-option form-control input-small input-sm">
												<option value="accordion" selected="selected">Accordion</option>
												<option value="hover">Hover</option>
											</select>
										</li>
										<li>
											 Sidebar Position
											<select class="sidebar-pos-option form-control input-small input-sm">
												<option value="left" selected="selected">Left</option>
												<option value="right">Right</option>
											</select>
										</li>
										<li>
											 Footer
											<select class="page-footer-option form-control input-small input-sm">
												<option value="fixed">Fixed</option>
												<option value="default" selected="selected">Default</option>
											</select>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- END THEME PANEL -->
				</div>
				<!-- END PAGE TOOLBAR -->
			</div>
			<!-- END PAGE HEAD -->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
							<div class="portlet box blue ">
									<div class="portlet-title">
										<div class="caption">
											<i class="fa fa-gift"></i> <?=$page_title;?>
										</div>
									</div>
									
									<div class="portlet-body form">

										<!-- BEGIN FORM-->
									<?php if (count($fay) <= 0):?>
												<form action="<?=base_url();?>admin/add_params1" method="post" class="form-horizontal">
																		
															  <label class="control-label" style="width:7%; margin-left:3%;">Test Name</label>
																	<select class="form-control input-lg nyapapi1" name="test_id" style="width:33%; margin-left:3%; margin-top:1%;" id="test_id" required>
																		<option selected disabled>SELECT THE TEST</option>
																			<?php $pp=$this->db->get_where("requested_tests",array("client_id"=>$client_id,'done'=>0))->result_array();?>
																					<?php foreach($pp as $shity):?>
																					<?php $test_id0=$this->db->get_where("tests",array("test_id"=>$shity['test_id']))->row()->test_id;?>
																					<?php $test_name=$this->db->get_where("tests",array("test_id"=>$shity['test_id']))->row()->test_name;?>
																					<option value="<?=$test_id0;?>"><?=$test_name;?></option>
																			<?php endforeach;?>
																	</select>
																	
																		<input type="hidden" name="client_id" class="form-control" value="<?=$client_id;?>">
																		<input type="hidden" name="client_id0" class="form-control" value="<?=$client_id;?>">
																		<button type="submit" class="btn green-haze" style="width:15%; margin-left:3%; margin-top:1%; margin-bottom:1%;"> <i class="fa fa-plus"></i> add parameters</button>
													
												</form>
												<?php else:?>
										
													<form action="<?=base_url();?>admin/test_result_add" id="saveparams" method="post" class="form">
														<input type="hidden" name="test_id" class="form-control" value="<?=$test_id;?>">
														<input type="hidden" name="client_id00" class="form-control" value="<?=$client_id0;?>"><br>
																										
														<?php foreach($fay as $bea):?>
																<input type='hidden' value="<?=$bea['test_parameter_id'];?>" name='test_parameter_id'>
																<label class="control-label" style="width:7%; margin-left:3%;"><?=strtoupper($bea['test_parameter']);?> : </label>
																<input type='text' class='form-control' style="width:33%; margin-left:3%; margin-top:0%;" name='test_result[]'>
														<?php endforeach;?>
														
														<div id="dynamicInput">
														</div>
								
														<a href="#" class="comment">comment</a> |
														<a href="#" class="approved_by">approved by</a> |
														<a href="#" class="reported_by">reported by</a>
																									
														<button type="submit" class="btn green-haze"><i class="fa fa-save"></i> save</button>
										
														
												<?php endif;?>
													</form>
										<!-- END FORM-->
									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
	<div class="page-footer-inner">
		 2017 &copy; Designed and Developed by Focus IT
	</div>
	<div class="scroll-to-top">
		<i class="icon-arrow-up"></i>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="<?=base_url();?>assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="<?=base_url();?>assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="<?=base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/pages/scripts/form-samples.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {    
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
Demo.init(); // init demo features
   FormSamples.init();
});
</script>
	<script>
		function test_result_add()
		{
		  var url = "<?php echo site_url('admin/test_result_add')?>";
		  var url0 = "<?php echo site_url('admin/add_params')?>";
		
		   // ajax adding data to database
			  $.ajax({
				url : url,
				type: "POST",
				data: $('#saveparams').serialize(),
				dataType: "JSON",
				success: function(data)
				{
				   alert("DATA SAVED SUCCESSFULLY");
				   $('#saveparams')[0].reset();
				   location.href=url0;
				},
				error: function (jqXHR, textStatus, errorThrown)
				{
					alert('Error adding or updating data!');

				}
				/*complete: function(xhr,status) 
				{
					alert("DATA SAVED SUCCESSFULLY");
				   $('#saveparams')[0].reset();
				}*/
			});
		}
	</script>
	
	 <script type="text/javascript">
			var comment;
			var approved_by;
			var reported_by;           
           $('.comment').click(function(){
                    comment = "<label>Comment </label><input type='text' class='form-control' name='comment' required>"; 
                    $('#dynamicInput').append(comment);
            });
			
		   $('.approved_by').click(function(){
                    approved_by = "<div class='col-md-6'><div class='form-group'><label>Approved by: </label><input type='text' class='form-control' name='approved_by' required></div></div>"; 
                   	$('#dynamicInput').append(approved_by);
            });
			
			 $('.reported_by').click(function(){
                    reported_by = "<div class='col-md-6'><div class='form-group'><label>Reported by: </label><input type='text' class='form-control' name='reported_by' required></div></div>"; 
                  	$('#dynamicInput').append(reported_by);
            });

    </script>
	
	
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>