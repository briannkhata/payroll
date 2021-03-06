<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title><?=$page_title;?></title>
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
									<span class="caption-subject font-green-sharp bold uppercase">
									<?=$page_title;?></span>
									
								</div>
								<div class="actions btn-set"></div>
							</div>
							<hr>
							<div class="portlet-body">
							<div class="tab-pane" id="tab_lon">	
										
									<div class="portlet-body">


				<form role="form" action="<?php echo base_url();?>staff/taxband_add"  method="POST">
					<div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Month</label>
						    <select name="month[]" class="form-control see"  multiple="">
							   <?php $rza = $this->db->get('month')->result_array();?>
							   <?php foreach($rza as $yo):?>
									<option value="<?=$yo['month'];?>"><?=$yo['month'];?></option>
								<?php endforeach;?>
							</select>
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Year</label>
						    <select name="year" class="form-control see">
							   <?php $raa = $this->db->get('year')->result_array();?>
							   <?php foreach($raa as $yo):?>
									<option value="<?=$yo['year'];?>"><?=$yo['year'];?></option>
								<?php endforeach;?>
							</select>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
						  <label for="exampleInputEmail1"></label>
							<div class="radio-list">
								<?php $pp = $this->db->get('tax_config')->result_array();
								if(count($pp) > 0){?>
								<label class="radio-inline">
								<input type="checkbox" name="mantain"> MAINTAIN CURRENT </label>
								<?php }?>
								<label class="radio-inline">
								<input type="checkbox" name="current"> YES CURRENT </label>
							</div>
						</div>
					</div>


				  <div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band Top 1</label>
						    <input type="hidden" name="tax_config_id" value="">
						    <input type="text" name="band1_top" class="form-control">
						</div>
					</div>
					
					<div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band rate 1</label>
							<input type="text" name="band1_rate" class="form-control">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
						   <label for="exampleInputEmail1">Band Top 2</label>
						    <input type="text" name="band2_top" class="form-control">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band rate 2</label>
							<input type="text" name="band2_rate" class="form-control">
						</div>
					</div>
					
					 <div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band Top 3</label>
						    <input type="text" name="band3_top" class="form-control">
						</div>
					 </div>
					 
					 <div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band rate 3</label>
							<input type="text" name="band3_rate" class="form-control">
						</div>
					</div>
					
					 <div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band Top 4</label>
						    <input type="text" name="band4_top" class="form-control">
						</div>
					 </div>
					 
					 <div class="col-md-6">
						<div class="form-group">
						  <label for="exampleInputEmail1">Band rate 4</label>
							<input type="text" name="band4_rate" class="form-control">
						</div>
					</div>
					 
				

										
					<div class="modal-footer" style="border-top: none;">
						<button type="button" data-dismiss="modal" class="btn btn-default">Cancel</button>
						<button type="submit"  class="btn blue zanda"><i class="fa fa-plus"></i>Add</button>
					</div>
            </form>
	    </div>
													
									</div>
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
<script type="text/javascript">
   var save_method; //for save method string
    var table;
	function add_tax()
    {
      save_method = 'add';
      $('#formtax')[0].reset(); // reset form on modals
      $('#taxband').modal('show'); // show bootstrap modal
    }
	
	function edit_taxband(id)
    {
      save_method = 'update';
      $('#formtax')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('staff/taxband_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="tax_config_id"]').val(data.tax_config_id);
            $('[name="band1_top"]').val(data.band1_top);
			$('[name="band2_top"]').val(data.band2_top);
			$('[name="band3_top"]').val(data.band3_top);
			$('[name="band4_top"]').val(data.band4_top);
			$('[name="band1_rate"]').val(data.band1_rate);
			$('[name="band2_rate"]').val(data.band2_rate);
			$('[name="band3_rate"]').val(data.band3_rate);
			$('[name="band4_rate"]').val(data.band4_rate);
			$('#month').val(data.month);
			$('#year').val(data.year);
            
			$('#taxband').modal('show');
			$('.modal-title').text('Edit tax band'); // Set title to Bootstrap modal title
			$('.zanda').text('Save changes');
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }
	
	
	function save()
    {
      var url;
      if(save_method == 'add')
      {
          url = "<?php echo site_url('staff/taxband_add')?>";
      }
      else
      {
        url = "<?php echo site_url('staff/taxband_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formtax').serialize(),
            dataType: "JSON",
            success: function(data)
            {
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }

	function delete_taxband(id)
    {
      if(confirm('Are you sure you want to delete the selected TAX BAND?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('staff/taxband_delete')?>/"+id,
            type: "POST",
            dataType: "JSON",
            success: function(data)
            {
               
               location.reload();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error deleting data');
            }
        });
 
      }
    }
 
  </script>
  	
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


	<script>
   $('#s1').select2();
   $('#s2').select2();
   $('#s3').select2();
   $('#s4').select2();
   $('#s5').select2();
   $('#s6').select2();
   $('#s7').select2();
   $('#ss').select2();
   $('.see').select2();
   $('.dt').datepicker({
      autoclose: true
    });
	$('#mahop').dataTable();
	$('#mm').dataTable();
	$('#mmm').dataTable();
	$('#mmmm').dataTable();
	$('#mmmmm').dataTable();
	$('#mmmmmm').dataTable();
	$('#mmmmmmm').dataTable();
	$('#m0').dataTable();
</script>
	
	