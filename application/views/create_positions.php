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
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="<?=base_url();?>assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<script src="<?=base_url();?>assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<link href="<?=base_url();?>assets/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/global/css/components-md.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/global/plugins/select2/select2.css"/>
<link href="<?=base_url();?>assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/admin/layout4/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="<?=base_url();?>assets/admin/layout4/css/themes/light.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/admin/layout4/css/custom.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/global/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
<link href="<?=base_url();?>assets/global/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<?=base_url();?>assets/print.css" type="text/css" media="print" /> 
<link href="<?=base_url();?>assets/fonts.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<body class="page-md page-header-fixed page-sidebar-closed-hide-logo ">
<div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
	<?php include'includes/header_top.php';?>
</div>
<div class="clearfix">
</div>
<div class="page-container">
<?php include 'includes/left_nav.php';?>
	<div class="page-content-wrapper">
		<div class="page-content">
			<div class="page-head">
				<?php //include 'includes/topbar.php';?>
				<!-- END PAGE TOOLBAR -->
			</div>
			<div class="row">
				<div class="col-md-12">
							<div class="portlet light">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-diamond"></i>
									<span class="caption-subject font-green-sharp bold uppercase">
									<?=$page_title;?></span>
									
								</div>
								<div class="actions btn-set"></div>
								
							</div>
							<hr>															
									<div class="portlet-body">
										<form action="<?=base_url();?>admin/create_positions/save" method="post" class="form-horizontal" enctype="multipart/form-data">
											<div class="form-body">
												
												<div class="row">
													
													<!--/span-->
													<div class="col-md-6">
														<div class="form-group">
															<label class="control-label col-md-3">Position</label>
															<div class="col-md-9">
																<input type="text" name="job" class="form-control" placeholder="" required="required">
															</div>
														</div>
													</div>
												
											</div>
											<div class="form-actions">
												<div class="row">
													<div class="col-md-6">
														<div class="row">
															<div class="col-md-offset-3 col-md-9">
																<button type="submit" class="btn green"><i class="fa fa-plus"></i> 
																Save Position</button>
															</div>
														</div>
													</div>
													
												</div>
											</div>
										</form>
										<br/> 
										<h3> Available Positions </h3>
										<table class="table table-striped table-bordered table-hover" id="mmm">
												<thead>
													<tr>
														<th>#</th>
														<th>Position</th>
														<th>Description</th>
														<th></th>
													</tr>
													</thead>
													<tbody>
													<?php  $count=1;
														$job   =   $this->db->select('*')
														  ->from('jobs')
														  ->order_by('job_id','desc')
														  ->where('status','1')
														  ->get()->result_array();
													  ?>
													<?php  foreach($job as $row):?>
													<tr class="odd gradeX">
													 <td><?=$count++;?></td>
													 <td><?php echo $row['job'];?></td>
													 <td></td>
													 <td align="center">			
														<style>
														<?php $id =  $row['job_id'];?>
													#target<?=$id;?> {
														  background:white;
														  width:300px;
														  height:90px;
														  padding:5px;
														  display:none;
														}

														.Hide<?=$id;?>
														{
														  display:none;
														}			
														</style>
													     <button class="Show<?=$id;?> btn btn-success btn-xs black">Edit </button>
														<div id="target<?=$id;?>">
															<form action="<?=base_url();?>admin/create_positions/update/<?=$id;?>" method="post">
															  <input type="text" name="job" class="form-control" value="<?php echo $row['job'];?>"> <br/>
															  <button type="submit" class="btn btn-success btn-xs black">Save</button>
															  <button class="Hide<?=$id;?> btn btn-warning btn-xs black">Close</button>  <br/>
															</form>
														</div>
														
															<script>

															$('.Show<?=$id;?>').click(function() {
																$('#target<?=$id;?>').show(500);
																$('.Show<?=$id;?>').hide(0);
																$('.Hide<?=$id;?>').show(0);
															});
															$('.Hide<?=$id;?>').click(function() {
																$('#target<?=$id;?>').hide(500);
																$('.Show<?=$id;?>').show(0);
																$('.Hide<?=$id;?>').hide(0);
															});
															$('.toggle').click(function() {
																$('#target<?=$id;?>').toggle('slow');
															});
															</script>
															
															&nbsp; &nbsp; 
														<a href="<?=base_url();?>admin/create_positions/delete/<?=$id;?>" class="btn btn-danger btn-xs black"  title="CLICK TO DELETE"><i class="fa fa-trash-o"></i> delete</a>				
													</td>
													</tr>
													<?php endforeach;?>
												</tbody>
										</table>				
															
										<!-- END FORM-->
											
											</div>
										</div>
									</div>
							<!-- END PAGE CONTENT-->
						</div>
					</div>
	<!-- END CONTENT -->
		</div>		
	</div>
</div>
<?php include 'includes/footer.php';?>
<script src="<?=base_url();?>assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script src="<?=base_url();?>assets/global/plugins/plupload/js/plupload.full.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/scripts/datatable.js"></script>
<script src="<?=base_url();?>assets/admin/pages/scripts/ecommerce-products-edit.js"></script>
<script type="text/javascript" src="<?=base_url();?>assets/global/plugins/select2/select2.min.js"></script>
<script src="<?=base_url();?>assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-modal/js/bootstrap-modalmanager.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/plugins/bootstrap-modal/js/bootstrap-modal.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/layout.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/layout4/scripts/demo.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/admin/pages/scripts/ui-extended-modals.js"></script>
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   Demo.init(); // init demo features 
    Index.init(); // init index page
 Tasks.initDashboardWidget(); // init tash dashboard widget  
});
</script>
	
</body>
</html>

	
	
	
