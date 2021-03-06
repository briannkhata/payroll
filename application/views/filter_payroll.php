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
<link href="<?=base_url();?>assets/fonts.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<?=base_url();?>assets/print.css" type="text/css" media="print" /> 

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
						<div class="portlet light" style="width: 1200px;">
							<div class="portlet-title">
								 	<?php $pic = $this->db->get('labo')->row()->logo; ?>   
     								<img alt="" width="auto" height="auto"  class="img-responsive" src="<?=base_url().'/assets/logos/'.$pic;?>">		
								</div>
								<div class="portlet-title" id="hedd">
									<div class="caption">
										<span class="caption-subject font-green-sharp bold uppercase" >
										<?=$page_title;?></span>
									</div>
								</div>
							<hr>
						<div class="portlet-body">
										
													<div class="table-toolbar">
															<div class="row">
															

																<div class="col-md-4">
																	<div class="btn-group pull-right">

																		<a href="<?php echo base_url();?>admin/payroll" class="btn btn-primary">BACK TO FILTER</a>
																		<button class="btn btn-sucess blue" onclick="window.print();">print <i class="fa fa-print"></i>
																		</button>
																		
																	</div>
																</div>
															</div>
														</div>
															
									<table class="table table-bordered table-striped table-condensed flip-content">
											<thead class="well">
											   <tr>
											   	<th>#</th>
												<th>STAFF</th>
												<th>SALARY</th>
												<th>PENSION <br> 10%</th>
												<th>NORMAL <br>OVERTIME</th>
												<th>PUBLIC <br>OVERTIME</th>
												<th>BONUS</th>
												<th>HEALTH CARE</th>
												<th>BROKER <br>1.62%</th>
												<th>G/LIFE<br> 6.59%</th>
												<th>TEA ALLOWANCE</th>
												<th>GROSS SALARY</th>
												<th>NET PAY</th>
											  </tr>
											</thead>
										
										<?php
										$count = 1;
										$sum = $sum1 = $sum2 = $sum3 = $sum4 = $sum5 = $sum6 = $sum7 = $sum8 = $sum9 = $sum10 = $sum11 = $sum12 = $sum13 = $sum14 = $sum15 = $sum16 = 0;
										foreach($payroll as $row):
										
										  

											$employee_id= $row['employee_id'];
											$month= $row['month'];
        									$year= $row['year'];

											$lona  =   $this->db->query("SELECT * FROM bonus WHERE employee_id='$employee_id' and month='$month' and year='$year'");
										    $row1 = $lona->row();
											   if (isset($row1)):
												$bonus	    =	$row1->amount;
											  else:
											  	$bonus	    = 0;
											endif;

											$ov  =   $this->db->query("SELECT * FROM overtime WHERE employee_id='$employee_id' and month='$month' and year='$year'");
										    $row0 = $ov->row();
											   if (isset($row0)):
												$normal_amount	    =	$row0->normal_amount;
												$public_amount	    =	$row0->public_amount;

											  else:
											  	$normal_amount	    =	0;
												$public_amount	    =	0;

											endif;

											$lonaa = $this->db->select('*')
											->from('health_scheme')
											->join('membership','membership.membership_id=health_scheme.membership_id')
											->where('employee_id',$employee_id)
											->get()->result_array();
											if(count($lonaa) > 0){
                                                foreach ($lonaa as $row99) {
                                                	$h_bill	    =	$row99['charge'];
                                                }
											}else{

												$h_bill	    =	0;
											}


											/*$lonaa  =   $this->db->query("SELECT * FROM health_scheme INNERJOIN membership ON health_scheme.membership_id=membership.membership_id WHERE employee_id='$employee_id'");
										    $row2 = $lonaa->row();
											   if (isset($row2)):
												$h_bill	    =	$row2->amount;
											  else:
											  	$h_bill	    = 0;
											endif;*/

											$sum += $row['bsalary'];
											$sum2 += $normal_amount;
											$sum3 += $public_amount;
											$sum4 += $row['tea_allowance'];
											$sum5 += $row['pension_company'];
											$sum9 += $row['broker'];
											$sum10 += $row['gla'];
											$sum13 += $row['gloss_salary'];
											$sum14 += $row['net_salary'];
											$sum15 += $bonus;
											$sum16 += $h_bill;


											?>

		<tbody>
			  <tr>
			  	<td><?=$count++;?></td>
			    <td><?=$row['name'];?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['bsalary'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['pension_company'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$normal_amount)),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$public_amount)),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$bonus)),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$h_bill)),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['broker'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['gla'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['tea_allowance'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['gloss_salary'])),2);?></td>
				<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$row['net_salary'])),2);?></td>
			</tr> 
			<?php endforeach;?>
		</tbody>
		        <tfoot class="well" style="font-style: bold;">
						 <tr>
							<td colspan="2"></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum5)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum2)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum3)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum15)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum16)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum9)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum10)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum4)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum13)),2);?></td>
							<td><?=number_format(sprintf('%0.2f', preg_replace("/[^0-9.]/", "",$sum14)),2);?></td>
						</tr>
					</tfoot>
						</table>
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
<script type="text/javascript">
$(document).ready(function(){
  $('.ik').hide();
	});
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
<script>

  function do_this(){

        var checkboxes = document.getElementsByName('employee_id[]');
        var button = document.getElementById('toggle');
		$('.ik').show();
        if(button.value == 'select'){
            for (var i in checkboxes){
                checkboxes[i].checked = 'FALSE';
            }
            button.value = 'deselect'
        }else{
            for (var i in checkboxes){
                checkboxes[i].checked = '';
            }
            button.value = 'select';
        }
    }


</script>
<script>
   $('#s1').select2();
   $('#s2').select2();
   $('#s3').select2();
   $('#s4').select2();
   $('#s5').select2();
   $('#s6').select2();
   $('#s7').select2();
   $('#ss').select2();
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
<script>
	
	 document.getElementById("photo").onchange = function () {
    var reader = new FileReader();
    reader.onload = function (e) {
        // get loaded data and render thumbnail.
        document.getElementById("image").src = e.target.result;
    };
    // read the image file as a data URL.
    reader.readAsDataURL(this.files[0]);
};
	
	
	</script>
<script type="text/javascript">
   var save_method; //for save method string
    var table;
	function add_leave()
    {
      save_method = 'add';
      $('#formleave')[0].reset(); // reset form on modals
      $('#leave').modal('show'); // show bootstrap modal
    }

	function add_scheme()
    {
      save_method = 'add';
      $('#formscheme')[0].reset(); // reset form on modals
      $('#scheme').modal('show'); // show bootstrap modal
    }
	
	function add_schemebill()
    {
      save_method = 'add';
      $('#formschemebill')[0].reset(); // reset form on modals
      $('#schemebill').modal('show'); // show bootstrap modal
    }

	function add_overtime()
    {
      save_method = 'add';
      $('#formovertime')[0].reset(); // reset form on modals
      $('#overtime').modal('show'); // show bootstrap modal
    }
	
	function add_bank()
    {
      save_method = 'add';
      $('#formbank')[0].reset(); // reset form on modals
      $('#bank').modal('show'); // show bootstrap modal
    }
	
    function edit_leave(id)
    {
      save_method = 'update';
      $('#formleave')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('admin/leave_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="extra_id"]').val(data.extra_id);
            $('[name="leave_days"]').val(data.leave_days);
            $('[name="days_used"]').val(data.days_used);
            $('[name="leave_grant"]').val(data.leave_grant);
			$('[name="month"]').val(data.month);
			$('[name="year"]').val(data.year);
			$('[name="days_remaining"]').val(data.days_remaining);
            $('#leave').modal('show'); // show bootstrap modal when complete loaded
            $('.modal-title').text('Edit Leave'); // Set title to Bootstrap modal title
			$('.zanda').text('Save changes');
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }
	function edit_scheme(id)
    {
      save_method = 'update';
      $('#formscheme')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('admin/scheme_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="health_scheme_id"]').val(data.health_scheme_id);
            $('[name="membership_number"]').val(data.membership_number);
            $('[name="membership_id"]').val(data.membership_id);
            $('[name="employee_id"]').val(data.employee_id);
			$('[name="scheme_id"]').val(data.scheme_id);
			$('[name="description"]').val(data.description);
			$('#scheme').modal('show');
			$('.modal-title').text('Edit Scheme'); // Set title to Bootstrap modal title
			$('.zanda').text('Save changes');
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }
	function edit_schemebill(id)
    {
      save_method = 'update';
      $('#formschemebill')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('admin/schemebill_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="scheme_bill_id"]').val(data.scheme_bill_id);
            $('[name="amount"]').val(data.amount);
            $('[name="employee_id"]').val(data.employee_id);
			$('#schemebill').modal('show');
			$('.modal-title').text('Edit Scheme bill'); // Set title to Bootstrap modal title
			$('.zanda').text('Save changes');
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }
	
	function edit_overtime(id)
    {
      save_method = 'update';
      $('#formovertime')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('admin/overtime_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="overtime_id"]').val(data.overtime_id);
            $('[name="public_hours"]').val(data.public_hours);
			$('[name="normal_hours"]').val(data.normal_hours);
            $('[name="employee_id"]').val(data.employee_id);
			$('#overtime').modal('show');
			$('.modal-title').text('Edit Overtime'); // Set title to Bootstrap modal title
			$('.zanda').text('Save changes');
        },
        error: function (jqXHR, textStatus, errorThrown)
        {
            alert('Error get data from ajax');
        }
    });
    }
	
	function edit_bank(id)
    {
      save_method = 'update';
      $('#formbank')[0].reset(); // reset form on modals
 
      //Ajax Load data from ajax
      $.ajax({
        url : "<?php echo site_url('admin/bank_edit/')?>/" + id,
        type: "GET",
        dataType: "JSON",
        success: function(data)
        {
			
			$('[name="bank_details_id"]').val(data.bank_details_id);
            $('[name="branch"]').val(data.branch);
			$('[name="account_type"]').val(data.account_type);
			$('[name="city"]').val(data.city);
			$('[name="account_number"]').val(data.account_number);
            $('[name="employee_id"]').val(data.employee_id);
			$('#overtime').modal('show');
			$('.modal-title').text('Edit bank'); // Set title to Bootstrap modal title
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
          url = "<?php echo site_url('admin/leave_add')?>";
      }
      else
      {
        url = "<?php echo site_url('admin/leave_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formleave').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $('#leave').modal('hide');
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }
	
	function save1()
    {
      var url;
      if(save_method == 'add')
      {
          url = "<?php echo site_url('admin/scheme_add')?>";
      }
      else
      {
        url = "<?php echo site_url('admin/scheme_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formscheme').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $('#scheme').modal('hide');
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }
 
 
    function save2()
    {
      var url;
      if(save_method == 'add')
      {
          url = "<?php echo site_url('admin/schemebill_add')?>";
      }
      else
      {
        url = "<?php echo site_url('admin/schemebill_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formschemebill').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $('#schemebill').modal('hide');
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }
	
	function save3()
    {
      var url;
      if(save_method == 'add')
      {
          url = "<?php echo site_url('admin/overtime_add')?>";
      }
      else
      {
        url = "<?php echo site_url('admin/overtime_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formovertime').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $('#overtime').modal('hide');
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }
	
	function save4()
    {
      var url;
      if(save_method == 'add')
      {
          url = "<?php echo site_url('admin/bank_add')?>";
      }
      else
      {
        url = "<?php echo site_url('admin/bank_update')?>";
      }
 
       // ajax adding data to database
          $.ajax({
            url : url,
            type: "POST",
            data: $('#formbank').serialize(),
            dataType: "JSON",
            success: function(data)
            {
               //if success close modal and reload ajax table
               $('#bank').modal('hide');
              location.reload();// for reload a page
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding or updating data!');
            }
        });
    }
 
    function delete_leave(id)
    {
      if(confirm('Are you sure you want to delete the selected LEAVE DETAILS?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('admin/leave_delete')?>/"+id,
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
	
	function delete_scheme(id)
    {
      if(confirm('Are you sure you want to delete the selected SCHEME?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('admin/scheme_delete')?>/"+id,
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
	
	function delete_schemebill(id)
    {
      if(confirm('Are you sure you want to delete the selected SCHEME BILL?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('admin/schemebill_delete')?>/"+id,
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
 
   	function delete_overtime(id)
    {
      if(confirm('Are you sure you want to delete the selected OVERTIME?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('admin/overtime_delete')?>/"+id,
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
	
	function delete_bank(id)
    {
      if(confirm('Are you sure you want to delete the selected BANK DETAILS?'))
      {
        // ajax delete data from database
          $.ajax({
            url : "<?php echo site_url('admin/bank_delete')?>/"+id,
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
	
</body>
</html>

 