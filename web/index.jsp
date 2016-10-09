<%-- 
    Document   : index
    Created on : Mar 17, 2016, 3:17:19 PM
    Author     : Emmanuel E
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html  manifest="moisv1.appcache">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>MOIS</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                  <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
                  <link href="css/jquery.dataTables.min.css" rel="stylesheet">
		<link href="css/bootstrap.css" rel="stylesheet">
                <link href="css/bootstrap-datepicker.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="css/select2.min.css">
                    <link rel="shortcut icon" href="logo.png">
                  
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
                
                <style>
input:focus {
    border-color: red;
}
</style>
                
	</head>
	<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </div>
        <div class="navbar-collapse collapse">
                       

            
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
              
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">My Profile</a></li>
                    </ul>
                </li>
          
                
                 <li><a title="Add Widget" id="adduserbutton" data-toggle="modal" href="#userdetails"><i class="glyphicon glyphicon-user"></i><span id="usernamelabel"> Add Username</span></a></li>
                 <li><a title="Add Widget" data-toggle="modal" style="display:none;" id="exportdataanchor2" href="#addWidgetModal"><i class="glyphicon glyphicon-cloud-upload"></i> Export Data</a></li>
                 <li>
                  <a  title="Help" data-toggle="modal" href="#help">
                            <i class="glyphicon glyphicon-question-sign"></i>
                            Help
                        </a></li>
                              <li><a href="#" style="display:none;" onclick="closeapp();"><i class="glyphicon glyphicon-lock"></i> Exit</a></li>
            </ul>
        </div>
        
    </div>
    <!-- /container -->
    
</div>
<!-- /Header -->
     <div class="well well-sm" >
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
   <strong>Note!</strong> Targets have been hidden from the screen. To show targets for each site, un check the button besides. <b>Show targets </b> <input type="checkbox" onclick="togglehidding();" checked id="hidetargets" />
  </div>
<!-- Main -->
<div class="container-fluid">
    <div class="row">
        
        <!-- /col-3 -->
        <div class="col-sm-12">

            
            
          <h5 style="text-align: center;color:blue;">Matching Order Indicators system version 2.0.0 </h5>

      
      
  

            <div class="row">
                <!-- center left-->
                <div class="col-md-12">
                    

                  

                    <div class="btn-group btn-group-justified">
                        <a href="#" id='refreshpage' class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-refresh"></i>
                            <br> Refresh
                        </a>
                        
                         
                            
                            <a  class="btn btn-primary col-sm-3" id="exportdataanchor1" style="display:none;" title="Add Widget" data-toggle="modal" href="#addWidgetModal">
                                <i class="glyphicon glyphicon-cloud-upload"></i>
                                <br/>Export Data 
                                <span id="unexportedno" style="color:yellow;">(0 site )</span>
                            </a>
                            
                        
                        <!--<a href="#" class="btn btn-primary col-sm-3">
                            <i class="glyphicon glyphicon-cog"></i>
                            <br> Settings
                        </a>-->
                       <a class="btn btn-primary col-sm-3" title="Excel report" data-toggle="modal" href="#excelreport">
                            <i class="glyphicon glyphicon-stats"></i>
                            <br> Excel Report
                        </a> 
                    </div>

                    <hr>


                   

                    <!--tabs-->
                    <div class="panel">
                        <ul class="nav nav-tabs " id="myTab">
                            <li class="active newdata"><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-plus"></i>New Data</a></li>
                            <!--<li class="active editdata" style='display:none;' ><a href="#dataentry" id="newdatabutton" data-toggle="tab">  <i class="glyphicon glyphicon-edit"></i> Edit Data</a></li>-->
                            <li><a href="#reports" style="display:none;" id="reportsbutton" data-toggle="tab"> <i class="glyphicon glyphicon-stats"></i> Report</a></li> 
                            <li><a href="#searchdata" data-toggle="tab"> <i class="glyphicon glyphicon-search"></i> View Data</a></li> 
                           <!-- <li><a href="#export" data-toggle="tab"> <i class="glyphicon glyphicon-cloud-upload"></i> Data Export</a></li>-->
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active well col-md-12" id="dataentry">
                                
                                
                              <!--Data entry code-->
                    <div class="panel panel-default">
                       
                        <div class="panel-body" style="width:100%;">
                            <form class="form form-vertical" action="#" method="post" id="weeklydataform">
                                <table class='table table-striped table-bordered'  style="margin-left:  px;" >
                                <tr><th>Data</th></tr>
                                <tr><td class="col-xs-12">
                                <div class="control-group">
                                    <label><font color="red"><b>*</b></font> Week Beginning </label>
                                    <div class="controls">
                                        <input type="text" onchange="checkids();" name ="startdate" id="startdate" data-date-end-date="0d" autocomplete="off" class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                        <input type="hidden"  name ="rowid" id="rowid"  />
                                    </div>
                                </div>
                                        </td></tr>
                                
                                <tr><td class="col-xs-12">
                                   <div class="control-group">
                                    <label><font color="red"><b>*</b></font> Week Ending </label>
                                    <div class="controls">
                                        <input type="text" onchange="checkids();settargets();" onblur="" name="enddate" id="enddate" data-date-end-date="0d" autocomplete="off"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div>
                                        
                                        
                                </td></tr>
                                
                                  <tr><td class="col-xs-12">
                                <div class="control-group " style="display:none;">
                                    <label>Facility Type:</label>
                                    <div class="controls">
                                        <select name="facilitytype" id="facilitytype" class="form-control">
                                            <option>Select Facility Type</option>
                                            <option value="County Refferal Hospital">County Referral Hospital</option>
                                            <option value="Dispenasary">Dispensary</option>
                                             <option value="Health Centre">Health Centre</option>
                                            <option value="Private Clinic">Private Clinic</option>                                            
                                            <option value="Private Hospital">Private Hospital</option>                                            
                                            <option value="Sub-County Refferal Hospital">Sub-County Referral Hospital</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                
                                
                              
                                
                                  <div class="control-group">
                                    <label> <font color="red"><b>*</b></font>  Facility Name:</label>
                                    <div class="controls">
                                        <select  onchange="showreports();settargets();checkids();"   name="facilityname" id="facilityname" class="form-control" >
                                            <option>Select Facility Name</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                
                                
                                <div class="control-group" style="display:none;">
                                    <label>County:</label>
                                    <div class="controls">
                                        <select  name="county" id="county" class="form-control">
                                            <option value="">Select County</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                            
                                        </select>
                                    </div>
                                </div>
                                
                                 <div style="display:none;" class="control-group">
                                    <label>Sub-County:</label>
                                    <div class="controls">
                                        <select  name="subcounty" id="subcounty" class="form-control">
                                             <option>Select Sub-county</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                                
                                          </td></tr>
                                        
                                    </table>
                                         <table class='table table-striped table-bordered' id="dynamicindicators"  > 
                                   
                                <!------INDICATORS----->
                                 <tr ><td class='col-xs-12' colspan='3'>
                                 <div class='control-group'>
                                    <label><font color='red'><b>*</b></font>Loading Data.... Please wait</label>
                                  </div></td>
                                 </tr>                                 
                                  <tr>
                                  <td class='col-xs-4'>
<!--                                 <div class='control-group'>
                                    <label>Total</label>
                                    <div class='controls'>
                                   <input onkeypress=' return numbers(event);' onblur='inpatient_uptake_perc();Testing_uptake_perc();' type='number' min ='0' max='5237'  name='inpatient_adm' id='inpatient_adm' class='form-control' >
                                    </div></div>-->
                                  </td>
                                  <td class='col-xs-4'>
<!--                                 <div class='control-group'>
                                    <label>Adult</label>
                                    <div class='controls'>
                                        <input onkeypress=' return numbers(event);' onblur='inpatient_uptake_perc();Testing_uptake_perc();' type='number' min ='0' max='5237'  name='inpatient_adm' id='inpatient_adm' class='form-control' >
                                    </div></div>-->
                                  </td>
                                  <td class='col-xs-4'>
<!--                                  <div class='control-group'>
                                  <label>Children</label>
                                  <div class='controls'>
                                  <input onkeypress=' return numbers(event);' onblur='inpatient_uptake_perc();Testing_uptake_perc();' type='number' min ='0' max='5237'  name='inpatient_adm' id='inpatient_adm' class='form-control' >
                                  </div>
                                   </div>-->
                                  </td>                                    
                                  </tr>
                                  
                                     </table>
                                <table class="table table-striped table-bordered">
                                       <tr><td colspan="3" class="col-xs-12">               
                                <div class="control-group col-xs-12">
                                        <div class="alert-info">Note: After saving/updating the indicators above, you will be redirected to the report section for you to input comments explaining under performance( below 90%) or over performance (above 100%).</div>
                                   <br/>
                                    <div class="controls">
                                        <button type="submit" id='savebutton' onclick="validateweeklydata();" style="margin-left: 0%;" class="btn-lg btn-success active">
                                            SAVE & OPEN REPORT
                                        </button>
                                     </div>
                                    <div class="controls">
                                        <button type="submit" id='updatebutton' onclick="updateweeklydata();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                            UPDATE
                                        </button>
                                    
                                        <button title="save current record as new and reserve the previous one you selected for editing" type="submit" id='savenewbutton' onclick="validateweeklydata();clearcommentsonly();" style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                            SAVE AS NEW
                                        </button>
                                    </div>
                                    
                                </div>
                                        </td></tr>
                                        
                                </table>
                            </form>
                        </div>
                        <!--/panel content-->
                    </div>
                    <!--/panel-->

                              
                              <!--Data entry code-->
                            
                            </div>
                            <div class="tab-pane well" id="reports">
                                
                                
                               <!--Dashboard code-->
                            
                               
                               
                               
                                                   <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>Dashboard</h4></div>
                        <div class="panel-body">
                            <form id="reportsform">
<table class='table table-striped table-bordered' id="reportstable" >
    
                            </table>
                            </form>
                        </div>
                        <!--/panel-body-->
                    </div>
                    <!--/panel-->

                               
                              
                              <!--Reports entry code-->
                            
                            
                            </div>
                            <div class="tab-pane well" id="export">
                                
                                
                               <!--- Data export---->
                            </div>
                            
                            <div class="tab-pane well" id="searchdata">
                                 <button id="btnDeleteRow" value="cancel">Delete selected Row</button>
                                <div id="searchtablediv">
                                  
                                </div>    
                               <!--- Data export---->
                            </div>
                            
                            
                            </div>
                        </div>

                    </div>
                    <!--/tabs-->

                </div>
                <!--/col-->
               
                <!--/col-span-6-->

            </div>
            <!--/row-->

           


            
        </div>
        <!--/col-span-9-->
    </div>

<!-- /Main -->

<footer class="text-center"> &copy; AphiaPlus USAID </footer>

<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" id="refr1" aria-hidden="true">×</button>
                <h4 class="modal-title">Data Export</h4>
            </div>
            <div class="modal-body">
                <form id="exportdataform">
                   
              <button class=" btn-lg btn-success" style="text-align: center;" id="exportbutton" onclick="importdata();"> Export Data</button>
              
              
              <button class=" btn-lg btn-info" style="display:none;text-align: center;"  id="exportmsg" > Exporting Data..</button>
              <p id="exportresponse"> </p>
              </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn" id="refr">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->

<div class="modal" id="userdetails">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" id="saveuserbtn" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">User Details</h4>
            </div>
            <div class="modal-body">
                <form action="#" id="userform" method="post">
                 <div class="control-group">
                                    <label><font color="red"><b>*</b></font>  User Email</label>
                                    <div class="controls">
                                        <input type="text" size="14" placeholder="eg MJohn@fhi360.org"   required name="username" id="username" class="form-control" >
                                    </div>
                                </div> 
                    
                     <div class="control-group" >
                                    <label>County Supporting:</label>
                                    <div class="controls">
                                        <select  name="usercounty" id="usercounty" style="width:100%;" class="form-control">
                                            <option value="">Select County</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <button onclick=" updateuser();"  type="submit" style="margin-left: 50%;" data-dismiss="modal" class="btn-lg btn-success active">
                                            SAVE
                                        </button>
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>



<div class="modal" id="excelreport">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button"  class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Generate Excel Report <span id="needsinternet"></span></h4>
            </div>
            <div class="modal-body">
                <form  id="excelreportsfom" method="post">
                                <div class="control-group">
                                    <label><font color="red"><b>*</b></font>Report Start Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="startdaterpt" id="startdaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                    
                  <div class="control-group">
                                    <label><font color="red"><b>*</b></font>Report End Date</label>
                                    <div class="controls">
                                       <input type="text"  name ="enddaterpt" id="enddaterpt"  class="form-control dates" readonly placeholder="e.g yyyy-mm-dd">
                                    </div>
                                </div> 
                    
                    <div class="control-group" >
                                    <label>County</label>
                                    <div class="controls">
                                        <select  name="rpt_county" id="rpt_county" style="width:100%;" class="form-control">
                                            <option value="">Select County (optional)</option>
                                             <option value="Baringo">Baringo</option>
                                             <option value="Kajiado">Kajiado</option>
                                             <option value="Laikipia">Laikipia</option>
                                             <option value="Nakuru">Nakuru</option>
                                             <option value="Narok">Narok</option>
                                            
                                           
                                        </select>
                                    </div>
                                </div>
                    
                   <!-- <div class="control-group" >
                                    <label>Facility </label>
                                    <div class="controls">
                                        <select  name="rpt_facility" id="rpt_facility" style="width:100%;" class="form-control">
                                            <option>Select Facility</option>
                                             
                                            
                                           
                                        </select>
                                    </div>
                                </div> -->
                    
                    
                                <div class="control-group">
                                    <label></label>
                                    <div class="controls">
                                        <button onclick=" getreport();" id="excelreportbtn"   style="margin-left: 30%;"  class="btn-lg btn-info active">
                                            Generate
                                        </button>
                                        
                                        <img src='images/ajax_loader.gif' alt='loading' style="display:none; margin-left:30% ;" class='loading'/>
                                        
                                    </div>
                                </div>   
                    
                </form>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
              
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>




<div class="modal" id="help">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Help</h4>
            </div>
            <div class="modal-body">
                <p>This  application is created for aiding users in collecting data for the Matching Order indicators which is done weekly. One is expected to enter data per facility.</p>
                <h3>Indicators</h3>
                <p>The specific indicators that one should enter data for are;</p>
                <ul>

<li> # HIV positive target </li>
<li> # HIV positive [cumulative] </li>
<li> # Number new on care [cumulative] </li>
<li> # Target new on ART</li>
<li> # Started on ART [cumulative] </li>
<li> # Viral load target [current on ART for Dec 2015] </li>
<li> # Viral load done [cumulative] </li>
<li> # Viral load done [cumulative] </li>
<li> # Viral load done [cumulative] </li>
<li> # IPT target [current on Care for Dec 2015] </li> 
<li> # IPT done [cumulative] </li>
<li> # Testing target [Target/IPD/OPD work load] </li>
<li> # Tests done [IPD/OPD/VCT] </li>
<li> # PMTCT HIV positive yield target</li>
<li> # PMTCT HIV positive yield [cumulative] </li>
<li> # EID target</li>
<li> # EID done [cumulative] </li>
<li> # viral load tests for mothers target</li>
<li> # viral load tests done for mothers [cumulative]</li>



                </ul>
             <h3>Loading Facilities</h3>
                 <p> The first time of installing/running the application,health facilities are downloaded and saved on the host device (mobile phone or computer browser). This requires internet connectivity. After the download, sites should appear on the facility drop down list.</p>
                 <h3>Data Export</h3>
                <p>Data is saved on your mobile device and should be shared to a server for analysis </p>
                <p>If there is Any un-exported that has  been saved offline, the user will be reminded to create an export by seeing yellow text showing number of sites whose data has not been exported .</p>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
               
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>




	<!-- script references -->
        <script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
		<script src="js/scripts.js"></script>
                <script src="js/bootstrap-datepicker.min.js"></script>
                <script src="js/select2.min.js"></script>
                 <script src="js/pouchdb-4.0.1.js"></script>
                 
                  <script type="text/javascript" src="js/jquery.fileDownload.js"></script>
                 <script type="text/javascript" src="js/datatables.min.js"></script>
<!--                   <script type="text/javascript" charset="utf-8" src="cordova-1.5.0.js"></script>  -->
                 <script>
                    
                 
    
    //var hostname="http://104.45.29.195";
  var hostname="http://localhost";

     // todayHighlight: true, daysOfWeekDisabled: "0,6",clearBtn: true, autoclose: true,format: "yyyy-mm-dd",
                 </script>

                 <script type="text/javascript">
  $(document).ready(function(){
      
          
                         $('.dates').datepicker({
                             todayHighlight: true, clearBtn: true, autoclose: true,format: "yyyy-mm-dd",
     });
      
  $('facilityname').select2();  
  $('#rowid').val("");  
  
  });   
                 </script>


<script>
   
  var user="aphiaplus";  
//load data from the cloud server 
   
              $.ajax({
                         url:hostname+':8080/aphiaplus_moi/showfacils',                            
                    type:'post',  
                    dataType: 'json',  
                    success: function(data) {
                        $('#exportbutton').show();
                        $("#exportresponse").html("");
                   if(data!=='aphiaplus_undefined'){
                 //alert(data[0].facility_name);    
                     for(var i=0;i<data.length;i++){
                         
                       // console.log(data[i].facility_name) 
                         //now add the facilities into a table
                         addfacilities(data[i].mflcode,data[i].county,data[i].subcounty,data[i].facility_name,data[i].longitude,data[i].latitude,data[i].sitetype);
                         updatefacilities(data[i].mflcode,data[i].county,data[i].subcounty,data[i].facility_name,data[i].longitude,data[i].latitude,data[i].sitetype);
                         
                     }
                       
                   }
        
                    },
                    error: function(XMLHttpRequest, textStatus, errorThrown) {
        //alert('offline');
	$('#exportbutton').hide();
       // alert("failed");
        $("#exportresponse").html("<b><font color='orange'>Connect to internet to export data </b><br/>");
    }
                        
                         });
   
    
    
      
    
    //PouchDB.debug.enable('*');
    //PouchDB.debug.disable();
    var userdb = new PouchDB('userdetails');
var remoteCouch = false;
var userdetails;

//receive the artist, song title and lyrics text
function adduser(username,county) {
   userdetails = {
        _id: 'aphiaplus', //this is static since we cant have two users using the same phone
	username:username,
        county:county,
        completed: false
  };
  userdb.put(userdetails, function callback(err, result) {
    if (!err) {
      console.log('facilities added succesfully');
    }
    
    setTimeout(delayedrefresh,1500);
  });
}	


  function updateuser(){
   //alert("save called");   
   var usern=$("#username").val();   
   var cnty=$("#usercounty").val();
   if(usern===''){alert("Enter Username");}
   else 
   {
       
    adduser(usern,cnty); 
   showuser('aphiaplus',usern,cnty);   
       
   }
   
  }  
    
   function showuser(aphiaplus,updateduser,updatedcounty){

//doc.username=username;
  
  // update user
 // return db.put(doc); //continue from here


	var counties=["Baringo","Kajiado","Laikipia","Nakuru","Narok"];
	userdb.get(aphiaplus).then(function (doc) {
            //
            if(updateduser!==''){
doc.username=updateduser;  
doc.county=updatedcounty;  
// update user
return userdb.put(doc); //continue from here
            }         
            if(doc.username!==''){
 $("#username").val(doc.username);
 $("#usernamelabel").html(" Hi "+doc.username);
 user=doc.username;
            }
            //alert(doc.county);  
   var cntselect="<option value=''>Select County Supporting</option>";
            for(var s=0;s<counties.length;s++){
             if(counties[s]===doc.county){
                 // console.log(counties[s]+"_"+doc.county+"_");
             
        cntselect+="<option selected value='"+counties[s]+"'>"+counties[s]+"</option>";
             } else {
                   cntselect+="<option  value='"+counties[s]+"'>"+counties[s]+"</option>";
               
                 
             }  
                
            }
 $("#usercounty").html(cntselect);
 
});
	}
     showuser('aphiaplus','','');
   function loaduser(){
   //alert("save called");   
   var user=$("#username").val();   
   var cnty=$("#usercounty").val();   
   adduser(user,cnty);   
  }  
      
    
//This is a document to save all facilities for offline use 
var db = new PouchDB('facilities');
var remoteCouch = false;
var receiveddata;

//add facility details here
function addfacilities(mflcode,county,subcounty,facility,longitude,latitude,sitetype) {
   receiveddata = {
        _id: mflcode,
	facility:facility,
        county:county,
	subcounty:subcounty,
        latitude:latitude,
        longitude:longitude,
        sitetype:sitetype,
        completed: false
  };
  db.put(receiveddata, function callback(err, result) {
    if (!err) {
      console.log('facilities added succesfully');
    }
  });
}	

function updatefacilities(mflcode,county,subcounty,facility,longitude,latitude,sitetype) {
 
 db.get(mflcode).then(function (doc) {
        
  //doc.age = 4;
 
   if(mflcode!=='null' && mflcode!=='' ){
    doc._id=mflcode;
    doc.facility=facility;
        doc.county=county;
	doc.subcounty=subcounty;
        doc.latitude=latitude;
        doc.longitude=longitude;
        doc.sitetype=sitetype;
   //alert('called');
  // put them back
  return db.put(doc);
   }
});
 
 
}


//a function to load facilities data from the 


function showfacils(){
    
    var cnt=0;
    
    var facilities="<option value=''>Select Facility</option>";
    
  db.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 
      cnt++;
	   //console.log(doc);
	   for(a=0;a<doc.total_rows;a++){
	   var dat={};
	   dat=doc.rows[a];
	      //console.log(dat.doc.title);
              //how to reference each column 
              
              //dat.doc._id
		  var num=parseInt(a)+1;
		 facilities+="<option value='"+dat.doc._id+"_"+dat.doc.facility+"'>"+dat.doc.facility+"</option>";
          	    } //end of for loop
	 
	  	  
			
           $("#facilityname").html(facilities); 	  
		 
			
			
	    $(document).ready(function() {
            //$('#lyricstable').DataTable();
              $('#facilityname').select2(); 
                                 } );
			
  }).catch(function (err){console.log(err)});
 
        
       // if(facilities==="<option value=''>Select Facility</option>"){
    
  //facilities="<option value=''>Please connect to internet to download facilities</option>";  
    
//}
        
}//



//showfacils
showfacils();

//========================SAVE TARGETS============================
//========================SAVE TARGETS============================

var targetsdb = new PouchDB('targets');
var remoteCouch = false;
var receivedtargets;



function addtargets(id,mflcode,year,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,new_art_target_child,new_art_target_adult,new_art_target_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,ipt_target_child,ipt_target_adult,ipt_target_total,testing_target_child,testing_target_adult,testing_target_total,pmtct_hiv_pos_target,eid_target,viral_load_mothers_target,timestamp,weeks) 
{
   receivedtargets = {
_id: id,	
mflcode:mflcode,
year:year,
hiv_pos_target_child:hiv_pos_target_child,
hiv_pos_target_adult:hiv_pos_target_adult,
hiv_pos_target_total:hiv_pos_target_total,
new_art_target_child:new_art_target_child,
new_art_target_adult:new_art_target_adult,
new_art_target_total:new_art_target_total,
viral_load_target_child:viral_load_target_child,
viral_load_target_adult:viral_load_target_adult,
viral_load_target_total:viral_load_target_total,
ipt_target_child:ipt_target_child,
ipt_target_adult:ipt_target_adult,
ipt_target_total:ipt_target_total,
testing_target_child:testing_target_child,
testing_target_adult:testing_target_adult,
testing_target_total:testing_target_total,
pmtct_hiv_pos_target:pmtct_hiv_pos_target,
eid_target:eid_target,
viral_load_mothers_target:viral_load_mothers_target,
timestamp:timestamp,
weeks:weeks,
completed: false
  };
  targetsdb.put(receivedtargets, function callback(err, result) {
    if (!err) {
      //console.log('targets added succesfully');
    }
  });
}

function updatetargets(id,mflcode,year,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,new_art_target_child,new_art_target_adult,new_art_target_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,ipt_target_child,ipt_target_adult,ipt_target_total,testing_target_child,testing_target_adult,testing_target_total,pmtct_hiv_pos_target,eid_target,viral_load_mothers_target,timestamp,weeks){
  //console.log(id);
   targetsdb.get(id).then(function (doc) {
        
  //doc.age = 4;
 
   if(mflcode!=='null' && mflcode!=='' ){
doc.mflcode=mflcode;
doc.year=year;
doc.hiv_pos_target_child=hiv_pos_target_child;
doc.hiv_pos_target_adult=hiv_pos_target_adult;
doc.hiv_pos_target_total=hiv_pos_target_total;
doc.new_art_target_child=new_art_target_child;
doc.new_art_target_adult=new_art_target_adult;
doc.new_art_target_total=new_art_target_total;
doc.viral_load_target_child=viral_load_target_child;
doc.viral_load_target_adult=viral_load_target_adult;
doc.viral_load_target_total=viral_load_target_total;
doc.ipt_target_child=ipt_target_child;
doc.ipt_target_adult=ipt_target_adult;
doc.ipt_target_total=ipt_target_total;
doc.testing_target_child=testing_target_child;
doc.testing_target_adult=testing_target_adult;
doc.testing_target_total=testing_target_total;
doc.pmtct_hiv_pos_target=pmtct_hiv_pos_target;
doc.eid_target=eid_target;
doc.viral_load_mothers_target=viral_load_mothers_target;
doc.timestamp=timestamp;
doc.weeks=weeks;
        
   //alert('called');
  // put them back
  return targetsdb.put(doc);
                                         }
});      
        
    
}




function gettargets(){
    
   
              $.ajax({
                    url:hostname+':8080/aphiaplus_moi/gettargets',                            
                    type:'post',  
                    dataType: 'json',  
                    success: function(data) {
                   
                 //alert(data[0].facility_name);    
                     for(var i=0;i<data.length;i++){
                         
                       // console.log(data[i].facility_name) 
                        
                        addtargets(data[i].id,data[i].mflcode,data[i].year,data[i].hiv_pos_target_child,data[i].hiv_pos_target_adult,data[i].hiv_pos_target_total,data[i].new_art_target_child,data[i].new_art_target_adult,data[i].new_art_target_total,data[i].viral_load_target_child,data[i].viral_load_target_adult,data[i].viral_load_target_total,data[i].ipt_target_child,data[i].ipt_target_adult,data[i].ipt_target_total,data[i].testing_target_child,data[i].testing_target_adult,data[i].testing_target_total,data[i].pmtct_hiv_pos_target,data[i].eid_target,data[i].viral_load_mothers_target,data[i].timestamp,data[i].weeks);
                        updatetargets(data[i].id,data[i].mflcode,data[i].year,data[i].hiv_pos_target_child,data[i].hiv_pos_target_adult,data[i].hiv_pos_target_total,data[i].new_art_target_child,data[i].new_art_target_adult,data[i].new_art_target_total,data[i].viral_load_target_child,data[i].viral_load_target_adult,data[i].viral_load_target_total,data[i].ipt_target_child,data[i].ipt_target_adult,data[i].ipt_target_total,data[i].testing_target_child,data[i].testing_target_adult,data[i].testing_target_total,data[i].pmtct_hiv_pos_target,data[i].eid_target,data[i].viral_load_mothers_target,data[i].timestamp,data[i].weeks);
                        
                       
                     }
                       
                   
        
                                           }
                        
                         });
    
    
}

gettargets();






//=========================SAVE WEEKLY DATA========================

 
//This is a document to save all tables 
var weeklydatadb = new PouchDB('weekly_data',{auto_compaction: true});
var remoteCouch = false;
var weeklydata;

//receive the artist, song title and lyrics text
function insertweeklydata(id,facility,startdate,enddate, hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,hiv_pos_child,hiv_pos_adult,hiv_pos_total,new_care_child,new_care_adult,new_care_total,new_art_target_child,new_art_target_adult,new_art_target_total,started_art_child,started_art_adult,started_art_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,viral_load_done_child,viral_load_done_adult,viral_load_done_total,ipt_target_child,ipt_target_adult,ipt_target_total,ipt_child,ipt_adult,ipt_total,testing_target_child,testing_target_adult,testing_target_total,test_child,test_adult,test_total ,pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done, viral_load_mothers_target,viral_load_mothers_done,timestamp,user, syncstatus) {
   
        weeklydata = {
        _id: id, //made of startdate_enddate_facilitymfl_frequency //frequency could be _annual or _weekly
	facility:facility,
        startdate:startdate,
	enddate:enddate,
        
        
hiv_pos_target_child:hiv_pos_target_child,
hiv_pos_target_adult:hiv_pos_target_adult,
hiv_pos_target_total:hiv_pos_target_total,
hiv_pos_child:hiv_pos_child,
hiv_pos_adult:hiv_pos_adult,
hiv_pos_total:hiv_pos_total,
new_care_child:new_care_child,
new_care_adult:new_care_adult,
new_care_total:new_care_total,
new_art_target_child:new_art_target_child,
new_art_target_adult:new_art_target_adult,
new_art_target_total:new_art_target_total,
started_art_child:started_art_child,
started_art_adult:started_art_adult,
started_art_total:started_art_total,
viral_load_target_child:viral_load_target_child,
viral_load_target_adult:viral_load_target_adult,
viral_load_target_total:viral_load_target_total,
viral_load_done_child:viral_load_done_child,
viral_load_done_adult:viral_load_done_adult,
viral_load_done_total:viral_load_done_total,
ipt_target_child:ipt_target_child,
ipt_target_adult:ipt_target_adult,
ipt_target_total:ipt_target_total,
ipt_child:ipt_child,
ipt_adult:ipt_adult,
ipt_total:ipt_total,
testing_target_child:testing_target_child,
testing_target_adult:testing_target_adult,
testing_target_total:testing_target_total,
test_child:test_child,
test_adult:test_adult,
test_total:test_total,

pmtct_hiv_pos_target:pmtct_hiv_pos_target,
pmtct_hiv_pos:pmtct_hiv_pos,
eid_target:eid_target,
eid_done:eid_done,
viral_load_mothers_target:viral_load_mothers_target,
viral_load_mothers_done:viral_load_mothers_done,
       
        //percents         
          
           
hiv_pos_yield_perc_child:$("#hiv_pos_yield_perc_child_in").val(),
hiv_pos_yield_perc_adult:$("#hiv_pos_yield_perc_adult_in").val(),
hiv_pos_yield_perc_all:$("#hiv_pos_yield_perc_all_in").val(),
hiv_pos_care_perc_child:$("#hiv_pos_care_perc_child_in").val(),
hiv_pos_care_perc_adult:$("#hiv_pos_care_perc_adult_in").val(),
hiv_pos_care_perc_all:$("#hiv_pos_care_perc_all_in").val(),
started_art_perc_child:$("#started_art_perc_child_in").val(),
started_art_perc_adult:$("#started_art_perc_adult_in").val(),
started_art_perc_all:$("#started_art_perc_all_in").val(),
viral_test_perc_child:$("#viral_test_perc_child_in").val(),
viral_test_perc_adult:$("#viral_test_perc_adult_in").val(),
viral_test_perc_all:$("#viral_test_perc_all_in").val(),
ipt_done_perc_child:$("#ipt_done_perc_child_in").val(),
ipt_done_perc_adult:$("#ipt_done_perc_adult_in").val(),
ipt_done_perc_all:$("#ipt_done_perc_all_in").val(),
tested_perc_child:$("#tested_perc_child_in").val(),
tested_perc_adult:$("#tested_perc_adult_in").val(),
tested_perc_all:$("#tested_perc_all_in").val(),
pmtct_hiv_pos_perc:$("#pmtct_hiv_pos_perc_in").val(),
eid_done_perc:$("#eid_done_perc_in").val(),
viral_load_mothers_perc:$("#viral_load_mothers_perc_in").val(),
       
       
       
          
        
        //comments
          
          hiv_pos_yield_cmts:'',
          hiv_pos_care_cmts:'',
          started_art_cmts:'',
          viral_test_cmts:'',
          ipt_done_cmts:'',
          tested_cmts:'',
          pmtct_hiv_pos_cmts:'',
          eid_done_cmts:'',
          viral_load_mothers_cmts:'',
          
        
            
        
        timestamp:timestamp,
        user:user,
        syncstatus:syncstatus,        
        completed: false
  };
  weeklydatadb.put(weeklydata, function callback(err, result) {
    if (!err) {
      console.log('weekly data added succesfully');
      
    }
  });
}	



//prepare form data

//===================================================INSERT WEEKLY DATA===================================

  var facility=null;

 var startdate=null;   
 var enddate=null;
    
    
var hiv_pos_target_child=null;
var hiv_pos_target_adult=null;
var hiv_pos_target_total=null;

var hiv_pos_child=null;
var hiv_pos_adult=null;
var hiv_pos_total=null;

var hiv_pos_child_w=null;
var hiv_pos_adult_w=null;
var hiv_pos_total_w=null;

var new_care_child=null;
var new_care_adult=null;
var new_care_total=null;

var new_care_child_w=null;
var new_care_adult_w=null;
var new_care_total_w=null;

var new_art_target_child=null;
var new_art_target_adult=null;
var new_art_target_total=null;

var started_art_child_w=null;
var started_art_adult_w=null;
var started_art_total_w=null;

var started_art_child=null;
var started_art_adult=null;
var started_art_total=null;

var viral_load_target_child=null;
var viral_load_target_adult=null;
var viral_load_target_total=null;

var viral_load_done_child=null;
var viral_load_done_adult=null;
var viral_load_done_total=null;

var viral_load_done_child_w=null;
var viral_load_done_adult_w=null;
var viral_load_done_total_w=null;

var ipt_target_child=null;
var ipt_target_adult=null;
var ipt_target_total=null;

var ipt_child=null;
var ipt_adult=null;
var ipt_total=null;

var ipt_child_w=null;
var ipt_adult_w=null;
var ipt_total_w=null;

var testing_target_child=null;
var testing_target_adult=null;
var testing_target_total=null;

var test_child=null;
var test_adult=null;
var test_total=null;

var test_child_w=null;
var test_adult_w=null;
var test_total_w=null;
   
   var pmtct_hiv_pos_target=null;
   
   var pmtct_hiv_pos=null;
   var pmtct_hiv_pos_w=null;
   
   var eid_target=null;
   
   var eid_done=null;
   var eid_done_w=null;
   
   var viral_load_mothers_target=null;
   
   var viral_load_mothers_done=null;
   var viral_load_mothers_done_w=null;
   
   
   
   //added 201605 
    var progressbarstoskip=[];
     var allindicatorsarray=[];
     var allnontargetindicatorsarray=[];
     var allcommentsarray=[];
     var allprogressbar_hiddentext_array=[];
     var hidetargetsui='yes';
function createdynamicinputs(){
    
    
     $(document).ready(function(){
         
       
   
         $.getJSON("indicators1.json",function(result){
             var table="";
             var row1="";
             var row2="";
             var count=1;
             for(a=0;a< result.length; a++){
                 
             var indicatorname=result[a].IndicatorName;    
             var fullindicator=result[a].FullIndicator;    
             var indicatorid=result[a].IndicatorID;
             var label=result[a].Age;
             var level=result[a].Level;
             var inputtype=result[a].datainputtype;
             var minimum=result[a].Min;
             var maximum=result[a].Max;
             var onblur="";
             var onkey_up="autocalculate('"+indicatorid+"');";
             if(result[a].onblur!==null){
                 onblur="autocalculate('"+indicatorid+"');"+result[a].onblur;
             }
             var onkeypress=result[a].onkeypress;
             var tdclass=result[a].tdclass;
             var isrequired=result[a].Required;
             var isnewrow=result[a].newrow;
             var readonlyvar=result[a].readonly;
             var isreadonly="";
             allindicatorsarray.push(indicatorid);
             
             if(indicatorid.indexOf("target")===-1){
                 
              allnontargetindicatorsarray.push(indicatorid);   
             }
              var tabindex="";
             if(readonlyvar==="TRUE"){
                 
               isreadonly="readonly";
               tabindex=" tabindex='-1' style='background-color:#b1b1cd;' ";
             }
             var colspan=result[a].colspan;
            
             if(label==='Total' && tdclass==='col-xs-4' ){  }
             if(isnewrow===1)
             {
                 //dont show targets 
               if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                 row1="<tr class='hiderows' style='display:none;'> <td class='col-xs-12' colspan='3'> <div class='control-group'> <label  > <font color='red'> <b> * </b> </font> <span class='badge'> "+count+" </span>     "+indicatorname+"    <span class='badge' title='Indicator' data-toggle='popover' data-trigger='hover' data-content='"+fullindicator+"'>?</span> </label>  </div> </td> </tr>";
                 count++;
                 row2+=row1;   
                   
               }
               else {
                 row1="<tr> <td class='col-xs-12' colspan='3'> <div class='control-group'> <label  > <font color='red'> <b> * </b> </font> <span class='badge'> "+count+" </span>     "+indicatorname+"    <span class='badge' title='Indicator' data-toggle='popover' data-trigger='hover' data-content='"+fullindicator+"'>?</span> </label>  </div> </td> </tr>";
                 count++;
                 row2+=row1;
             }
             }
             else{
                 
                 row1="";
             }
              if(isnewrow===1 && count===2)
             {
               if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                     row2+=" <tr class='hiderows' style='display:none;'> ";   
               }   
               else {
                   
                     row2+=" <tr> ";   
                   
               }
                 
        
              }
              else  if(isnewrow===1 && count > 2 && count<result.length){
                  
                   if(hidetargetsui==='yes' && readonlyvar==="TRUE"  ){
                       
                         row2+=" </tr> <tr class='hiderows' style='display:none;'> "; 
                         
                       } else {
                           
                        row2+=" </tr> <tr> ";      
                   }
                  
               
                  
              }
              
              
              row2+="<td class='"+tdclass+"' colspan='"+colspan+"' > <div class='control-group' > <label> "+label+" </label> <div class='controls'> <input onkeypress='return numbers(event);'  "+isreadonly+"  "+tabindex+" onblur=\""+onblur+"\"  onfocus='this.value = this.value;' type='text' min ='"+minimum+"' max='"+maximum+"' maxlength='7' data-"+indicatorid+"='0' data-previous_"+indicatorid+"='0'  name='"+indicatorid+"' id='"+indicatorid+"' class='form-control'> </div> </div> </td> ";
            //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required
    
     
     //now do an appending
                 
             }
             row2+=" </tr> ";   
            
            //alert(row2);
             $("#dynamicindicators").html(row2);
            
         $('[data-toggle="popover"]').popover();   
        
    // alert(result[0].IndicatorName);
    });// ned of input field loading
    
    
    //progress bar report section
    

    
         $.getJSON("progressbar.json",function(result){
             var table="";
             var row1="";
             var row2="";
             var count=1;
             for(a=0;a< result.length; a++){
              
            
             var indicatorname=result[a].IndicatorName;    
             var progressbarID=result[a].progressbarID;
             var label=result[a].Age;
             var Commentsid=result[a].Commentsid;            
             var isnewrow=result[a].newrow;
             var datafieldid=result[a].datavalueid;
             var progressbarredgreen =result[a].progressbarredgreen;
             if(progressbarredgreen==='no'){progressbarstoskip.push(progressbarID);}
             
             
             allprogressbar_hiddentext_array.push(datafieldid+"_in");
      
             
             
             if(isnewrow===1)
             {
               
                 row1="";
                 count++;
                 row2+=row1;
             }
             else{
                 
                 row1="";
             }
              if(isnewrow===1 && count===2)//first row
             {
             row2+=" <tr> <td class='col-xs-12'>";
              }
              else  if(isnewrow===1 && count > 2 && count<result.length){
              row2+=" </td> </tr> <tr> <td class='col-xs-12'>";    
                  
              }
              
              
              row2+=" <label> "+indicatorname+" <font color='orange'><b> "+label+" </b> <input type='hidden' id='"+datafieldid+"_in' /> </font> </label><div class='progress'> <div class='progress-bar progress-bar-info' id='"+progressbarID+"' role='progressbar' aria-valuenow='72' aria-valuemin='0' aria-valuemax='100' style='width: 100%;text-align:left;'> <span  id='"+datafieldid+"' style='color:black;'>No data</span></div>  </div> ";
            //IndicatorID	Age	IndicatorName	Level	datainputtype	Min	Max	onblur	onkeypress	Class	Required
    if(Commentsid!=='')
  {
      allcommentsarray.push(Commentsid);
     row2+="<label>Comments</label><textarea class='form-control' id='"+Commentsid+"'  onkeyup='savecomments(\""+Commentsid+"\");' name='"+Commentsid+"' ></textarea>";
  }
                //now do an appending
                 
             }//end of for loop
             row2+=" </tr> ";   
             row2+=" <tr><td colspan='1'><a id='finishbutton' href='#' style='margin-left: 50%;' onclick='setTimeout(delayedrefresh(),1500);clearcmtsandprcent();' class='btn btn-success btn-lg'>Finish</a></td></tr><tr><td colspan='1'> <div class='alert alert-success' id='message' style='display:none;'><button type='button' class='close' data-dismiss='alert'>×</button><span id='actiondone'></span></div></td></tr> ";   
            
            //alert(row2);
             $("#reportstable").html(row2);
             
    // alert(result[0].IndicatorName);
    });//end of getting json archive
    
    
        
         
  });   //end of checking if document is ready
    
    
}

createdynamicinputs();


function sumofindicators(sourceindicators,destinationindicator){
    var sourceindicatorsarray=sourceindicators.split("@");
  
   
    var destinationelement=destinationindicator;
    var total=0;
    for(b=0;b<sourceindicatorsarray.length;b++){
        //check if there
        if($("#"+sourceindicatorsarray[b]).val()!==''){
      total=parseInt(total)+parseInt($("#"+sourceindicatorsarray[b]).val()); 
        
            $("#"+destinationelement).val(total);
            }
        if(b===(sourceindicatorsarray.length-1)){
        
            yearlytotal(destinationindicator);    
            
        }                                       
        }
                                              
                                             
    
}



//=========================================set targets================================

//function settargets(facilitymfl){
function settargets(){
    
    var cur_enddate=$("#enddate").val();
    var targetyear='2016';
     var receivedvalues=$("#facilityname").val();
    if(cur_enddate!=='' && receivedvalues!==''){
       //call the loader for lastly entered data
       //console.log("facility is_____"+receivedvalues);
       var allfacs=receivedvalues.split("_");
       seachlastcumulative(allfacs[1],cur_enddate);
        //console.log("seachlastcumulative("+allfacs[1]+","+cur_enddate+")");    
        var datearray=cur_enddate.split("-");
        var datekey= cur_enddate.replace(/-/g,""); 
       
        if(parseInt(datearray[1])>=10)
        {
            //the year is curyear plus one
           targetyear=parseInt(datearray[0])+parseInt(1); 
            
        }
        else {
            
          targetyear=parseInt(datearray[0]);  
            
        }
   
    
        console.log("target year is "+targetyear);
        
    
   
    
    var receivedvals=receivedvalues.split("_");
    
  
  var dateobject = new Date();
//var currentyear = dateobject.getFullYear(); 
var targetsfound=0;
  
    targetsdb.get(receivedvals[0]+'_'+targetyear).then(function (doc) {
        
  //doc.age = 4;
 //dat.doc.hiv_pos_target_child
targetsfound=1;
//currently we are dividing a target with 1, meaning we are geting the annual target. 
//depending on user need, we can devide the target with 
var targetdenom=1;
var targetdenom1=doc.weeks;

$("#hiv_pos_target_child").val(Math.round(parseInt(doc.hiv_pos_target_child)/parseInt(targetdenom)));
$("#hiv_pos_target_adult").val(Math.round(parseInt(doc.hiv_pos_target_adult)/parseInt(targetdenom)));
$("#hiv_pos_target_total").val(parseInt(Math.round(parseInt(doc.hiv_pos_target_child)/parseInt(targetdenom)))+parseInt(Math.round(parseInt(doc.hiv_pos_target_adult)/parseInt(targetdenom))));
$("#new_art_target_child").val(Math.round(parseInt(doc.new_art_target_child)/parseInt(targetdenom)));
$("#new_art_target_adult").val(Math.round(parseInt(doc.new_art_target_adult)/parseInt(targetdenom)));
$("#new_art_target_total").val(parseInt(Math.round(parseInt(doc.new_art_target_child)/parseInt(targetdenom)))+parseInt(Math.round(parseInt(doc.new_art_target_adult)/parseInt(targetdenom))));
$("#viral_load_target_child").val(Math.round(parseInt(doc.viral_load_target_child)/parseInt(targetdenom)));
$("#viral_load_target_adult").val(Math.round(parseInt(doc.viral_load_target_adult)/parseInt(targetdenom)));
$("#viral_load_target_total").val(parseInt(Math.round(parseInt(doc.viral_load_target_child)/parseInt(targetdenom)))+parseInt(Math.round(parseInt(doc.viral_load_target_adult)/parseInt(targetdenom))));
$("#ipt_target_child").val(Math.round(parseInt(doc.ipt_target_child)/parseInt(targetdenom)));
$("#ipt_target_adult").val(Math.round(parseInt(doc.ipt_target_adult)/parseInt(targetdenom)));
$("#ipt_target_total").val(parseInt(Math.round(parseInt(doc.ipt_target_child)/parseInt(targetdenom)))+parseInt(Math.round(parseInt(doc.ipt_target_adult)/parseInt(targetdenom))));
$("#testing_target_child").val(Math.round(parseInt(doc.testing_target_child)/parseInt(targetdenom)));
$("#testing_target_adult").val(Math.round(parseInt(doc.testing_target_adult)/parseInt(targetdenom)));
$("#testing_target_total").val(parseInt(Math.round(parseInt(doc.testing_target_child)/parseInt(targetdenom)))+parseInt(Math.round(parseInt(doc.testing_target_adult)/parseInt(targetdenom))));
$("#pmtct_hiv_pos_target").val(Math.round(parseInt(doc.pmtct_hiv_pos_target)/parseInt(targetdenom)));
$("#eid_target").val(Math.round(parseInt(doc.eid_target)/parseInt(targetdenom)));
$("#viral_load_mothers_target").val(Math.round(parseInt(doc.viral_load_mothers_target)/parseInt(targetdenom)));

                                    
}).catch(function (err){
    
console.log("no data found "+err);

alert("no targets available for the selected facility and year");

$("#hiv_pos_target_child").val("");
$("#hiv_pos_target_adult").val("");
$("#hiv_pos_target_total").val("");
$("#new_art_target_child").val("");
$("#new_art_target_adult").val("");
$("#new_art_target_total").val("");
$("#viral_load_target_child").val("");
$("#viral_load_target_adult").val("");
$("#viral_load_target_total").val("");
$("#ipt_target_child").val("");
$("#ipt_target_adult").val("");
$("#ipt_target_total").val("");
$("#testing_target_child").val("");
$("#testing_target_adult").val("");
$("#testing_target_total").val("");
$("#pmtct_hiv_pos_target").val("");
$("#eid_target").val("");
$("#viral_load_mothers_target").val("");
    
}); 
    
 }//end of checking if there is a blank  


}







function validateweeklydata(){
    //receive all the fields from the weekly data from
    facility=$("#facilityname").val();
   //No facility name should have an underscore since its a special key
   
startdate=$("#startdate").val();   
enddate=$("#enddate").val(); 
     
 //added 201606   
   //alert( $("#hiv_pos_child").attr("data-hiv_pos_child")); 
hiv_pos_target_child=$("#hiv_pos_target_child").val();
hiv_pos_target_adult=$("#hiv_pos_target_adult").val();
hiv_pos_target_total=$("#hiv_pos_target_total").val();

hiv_pos_child_w=$("#hiv_pos_child").attr("data-hiv_pos_child");
hiv_pos_adult_w=$("#hiv_pos_adult").attr("data-hiv_pos_adult");
hiv_pos_total_w=$("#hiv_pos_total").attr("data-hiv_pos_total");

hiv_pos_child=$("#hiv_pos_child").val();
hiv_pos_adult=$("#hiv_pos_adult").val();
hiv_pos_total=$("#hiv_pos_total").val();

new_care_child_w=$("#new_care_child").attr("data-new_care_child");
new_care_adult_w=$("#new_care_adult").attr("data-new_care_adult");
new_care_total_w=$("#new_care_total").attr("data-new_care_total");

new_care_child=$("#new_care_child").val();
new_care_adult=$("#new_care_adult").val();
new_care_total=$("#new_care_total").val();

new_art_target_child=$("#new_art_target_child").val();
new_art_target_adult=$("#new_art_target_adult").val();
new_art_target_total=$("#new_art_target_total").val();

started_art_child_w=$("#started_art_child").attr("data-started_art_child");
started_art_adult_w=$("#started_art_adult").attr("data-started_art_adult");
started_art_total_w=$("#started_art_total").attr("data-started_art_total");

started_art_child=$("#started_art_child").val();
started_art_adult=$("#started_art_adult").val();
started_art_total=$("#started_art_total").val();

viral_load_target_child=$("#viral_load_target_child").val();
viral_load_target_adult=$("#viral_load_target_adult").val();
viral_load_target_total=$("#viral_load_target_total").val();

viral_load_done_child_w=$("#viral_load_done_child").attr("data-viral_load_done_child");
viral_load_done_adult_w=$("#viral_load_done_adult").attr("data-viral_load_done_adult");
viral_load_done_total_w=$("#viral_load_done_total").attr("data-viral_load_done_total");

viral_load_done_child=$("#viral_load_done_child").val();
viral_load_done_adult=$("#viral_load_done_adult").val();
viral_load_done_total=$("#viral_load_done_total").val();

ipt_target_child=$("#ipt_target_child").val();
ipt_target_adult=$("#ipt_target_adult").val();
ipt_target_total=$("#ipt_target_total").val();

ipt_child_w=$("#ipt_child").attr("data-ipt_child");
ipt_adult_w=$("#ipt_adult").attr("data-ipt_adult");
ipt_total_w=$("#ipt_total").attr("data-ipt_total");

ipt_child=$("#ipt_child").val();
ipt_adult=$("#ipt_adult").val();
ipt_total=$("#ipt_total").val();

testing_target_child=$("#testing_target_child").val();
testing_target_adult=$("#testing_target_adult").val();
testing_target_total=$("#testing_target_total").val();

test_child_w=$("#test_child").attr("data-test_child");
test_adult_w=$("#test_adult").attr("data-test_adult");
test_total_w=$("#test_total").attr("data-test_total");

test_child=$("#test_child").val();
test_adult=$("#test_adult").val();
test_total=$("#test_total").val();
    
    
   
    pmtct_hiv_pos_target=$("#pmtct_hiv_pos_target").val();
    
    pmtct_hiv_pos_w=$("#pmtct_hiv_pos").attr("data-pmtct_hiv_pos");
    pmtct_hiv_pos=$("#pmtct_hiv_pos").val();
    
    eid_target=$("#eid_target").val();
    
    eid_done_w=$("#eid_done").attr("data-eid_done");
    eid_done=$("#eid_done").val();
    
    viral_load_mothers_target=$("#viral_load_mothers_target").val();
    
    viral_load_mothers_done_w=$("#viral_load_mothers_done").attr("data-viral_load_mothers_done");
    viral_load_mothers_done=$("#viral_load_mothers_done").val();
    
    
    
    var user=$("#username").val(); 
    var timestamp = $.now();
    if(user===''){user='aphiaplus';}
    
    var syncstatus='No';  
    
     var id=null;
          
     if(facility==='')
     {         
  
   alert('Select facility');
   //$("#facilityname select:first").focus();
   
   $("#facilityname").css('border-color','red');
    //$("select:first").focus();
     }
     //startdate
     else if (startdate==='')
     {
         
     alert('Select week begining date');
   $("#startdate").focus();    
     }    
   //end date
      else if (enddate==='')
     {
         
     alert('Select week ending date');
   $("#enddate").focus();    
     } 
     
      else  if(Date.parse(startdate) > Date.parse(enddate)){
                    alert("Start date cannot be greater than end date.");   
                    $("#enddate").focus();  
                }
     
     //====added 201601==============================
       
    
  
             else if(hiv_pos_target_child==='')
      {
         
   alert('Enter # HIV positive target Child');
   $("#hiv_pos_target_child").focus();    
     
       }
   
          else if(hiv_pos_target_adult==='')
      {
         
   alert('Enter # HIV positive target Adult');
   $("#hiv_pos_target_adult").focus();    
     
       }   
     
//# HIV positive[cumulative]

        else if(hiv_pos_child==='')
      {
         
   alert('Enter # HIV positive[cumulative] Child');
   $("#hiv_pos_child").focus();    
     
       }
   
          else if(hiv_pos_adult==='')
      {
         
   alert('Enter # HIV positive[cumulative] Adult');
   $("#hiv_pos_adult").focus();    
     
       } 




      else if(new_care_child==='')
      {
         
   alert('Enter # Number new on care [cumulative] Child');
   $("#new_care_child").focus();    
     
       }
   
          else if(new_care_adult==='')
      {
         
   alert('Enter # Number new on care [cumulative] Adult');
   $("#new_care_adult").focus();    
     
       }

//# TARGET NEW ON ART
 else if(new_art_target_child==='')
      {
         
   alert('Enter # Target new on ART Child');
   $("#new_art_target_child").focus();    
     
       }
   
          else if(new_art_target_adult==='')
      {
         
   alert('Enter # Target new on ART Adult');
   $("#new_art_target_adult").focus();    
     
       }


//STARTED ON ART

 else if(started_art_child==='')
      {
         
   alert('Enter # Started on ART [cumulative] Child');
   $("#started_art_child").focus();    
     
       }
   
          else if(started_art_adult==='')
      {
         
   alert('Enter #  Started on ART [cumulative] Adult');
   $("#started_art_adult").focus();    
     
       }


//VIRAL LOAD TARGET


 else if(viral_load_target_child==='')
      {
         
   alert('Enter # Viral load target [current on ART for Dec 2015] Child');
   $("#viral_load_target_child").focus();    
     
       }
   
          else if(viral_load_target_adult==='')
      {
         
   alert('Enter # Viral load target [current on ART for Dec 2015] Adult');
   $("#viral_load_target_adult").focus();    
     
       }


//viral done

 else if(viral_load_done_child==='')
      {
         
   alert('Enter # Viral load done [cumulative] Child');
   $("#viral_load_done_child").focus();    
     
       }
   
          else if(viral_load_done_adult==='')
      {
         
   alert('Enter # Viral load done [cumulative] Adult');
   $("#viral_load_done_adult").focus();    
     
       }



 else if(ipt_target_child==='')
      {
         
   alert('Enter # IPT target [current on Care for Dec 2015] Child');
   $("#ipt_target_child").focus();    
     
       }
   
          else if(ipt_target_adult==='')
      {
         
   alert('Enter # IPT target [current on Care for Dec 2015] Adult');
   $("#ipt_target_adult").focus();    
     
       }




 else if(ipt_child==='')
      {
         
   alert('Enter # IPT [cumulative] Child');
   $("#ipt_child").focus();    
     
       }
   
          else if(ipt_adult==='')
      {
         
   alert('Enter # IPT [cumulative] Adult');
   $("#ipt_adult").focus();    
     
       }

//Testing target [Target/IPD/OPD work load]
 else if(testing_target_child==='')
      {
         
   alert('Enter # Testing target [Target/IPD/OPD work load] Adult');
   $("#testing_target_child").focus();    
     
       }
   
          else if(testing_target_adult==='')
      {
         
   alert('Enter # Testing target [Target/IPD/OPD work load] Adult');
   $("#testing_target_adult").focus();    
     
       }

//# Tests done [IPD/OPD/VCT]
        
    else if(test_child==='')
      {
         
   alert('Enter # Tests done [IPD/OPD/VCT] Adult');
   $("#test_child").focus();    
     
       }
   
          else if(test_adult==='')
      {
         
   alert('Enter # Tests done [IPD/OPD/VCT] Adult');
   $("#test_adult").focus();    
     
       }     
      
    //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
       
       //# PMTCT HIV positive yield target
             else if(pmtct_hiv_pos_target==='')
      {
         
   alert('No # PMTCT HIV positive yield target');
   $("#pmtct_hiv_pos_target").focus();    
     
       }
       //# PMTCT HIV positive yield
             else if(pmtct_hiv_pos==='')
      {
         
   alert('Enter # PMTCT HIV positive yield');
   $("#pmtct_hiv_pos").focus();    
     
       }
       //# EID target
             else if(eid_target==='')
      {
         
   alert('No # EID target ');
   $("#eid_target").focus();    
     
       }
       //eid_done
       
             else if(eid_done==='')
      {
         
   alert('Enter # EID Done ');
   $("#eid_done").focus();    
     
       }
       //viral_load_mothers_target
             else if(viral_load_mothers_target==='')
      {
         
   alert('Enter # viral load tests for mothers target');
   $("#viral_load_mothers_target").focus();    
     
       }
       
        //viral_load_mothers_done
//             else if(viral_load_mothers_done==='')
//      {
//         
//   alert('Enter # viral load tests done for mothers');
//   $("#viral_load_mothers_done").focus();    
//     
//       } 
       
       
       
       else {
     var facilitynameandmfl=facility.split("_");        
     var startd=startdate.replace('-','');      
     var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
      id=facilitynameandmfl[0]+"_"+startd+"_"+endd;
      //this should not be cleared
      $("#rowid").val(id);
      
     var facilityname=facilitynameandmfl[1];
            //save data to the db
            //we are now saving both weekly totals and annual cumulatives on the db
            //add a variable to distinguish the two
            //use _wk
          insertweeklydata(id+"_weekly",facilityname,startdate,enddate, hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,hiv_pos_child_w,hiv_pos_adult_w,hiv_pos_total_w,new_care_child_w,new_care_adult_w,new_care_total_w,new_art_target_child,new_art_target_adult,new_art_target_total,started_art_child_w,started_art_adult_w,started_art_total_w,viral_load_target_child,viral_load_target_adult,viral_load_target_total,viral_load_done_child_w,viral_load_done_adult_w,viral_load_done_total_w,ipt_target_child,ipt_target_adult,ipt_target_total,ipt_child_w,ipt_adult_w,ipt_total_w,testing_target_child,testing_target_adult,testing_target_total,test_child_w,test_adult_w,test_total_w,pmtct_hiv_pos_target,pmtct_hiv_pos_w,eid_target,eid_done_w,viral_load_mothers_target,viral_load_mothers_done_w,timestamp,user, syncstatus) ;
          insertweeklydata(id+"_annual",facilityname,startdate,enddate, hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,hiv_pos_child,hiv_pos_adult,hiv_pos_total,new_care_child,new_care_adult,new_care_total,new_art_target_child,new_art_target_adult,new_art_target_total,started_art_child,started_art_adult,started_art_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,viral_load_done_child,viral_load_done_adult,viral_load_done_total,ipt_target_child,ipt_target_adult,ipt_target_total,ipt_child,ipt_adult,ipt_total,testing_target_child,testing_target_adult,testing_target_total,test_child,test_adult,test_total ,pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done,viral_load_mothers_target,viral_load_mothers_done,timestamp,user, syncstatus) ;
          console.log(id+"@"+facilityname+"@"+startdate+"@"+enddate+"@"+ hiv_pos_target_child+"@"+hiv_pos_target_adult+"@"+hiv_pos_target_total+"@"+hiv_pos_child+"@"+hiv_pos_adult+"@"+hiv_pos_total+"@"+new_care_child+"@"+new_care_adult+"@"+new_care_total+"@"+new_art_target_child+"@"+new_art_target_adult+"@"+new_art_target_total+"@"+started_art_child+"@"+started_art_adult+"@"+started_art_total+"@"+viral_load_target_child+"@"+viral_load_target_adult+"@"+viral_load_target_total+"@"+viral_load_done_child+"@"+viral_load_done_adult+"@"+viral_load_done_total+"@"+ipt_target_child+"@"+ipt_target_adult+"@"+ipt_target_total+"@"+ipt_child+"@"+ipt_adult+"@"+ipt_total+"@"+testing_target_child+"@"+testing_target_adult+"@"+testing_target_total+"@"+test_child+"@"+test_adult+"@"+test_total +"@"+pmtct_hiv_pos_target+"@"+pmtct_hiv_pos+"@"+eid_target+"@"+eid_done+"@"+viral_load_mothers_target+"@"+viral_load_mothers_done+"@"+timestamp+"@"+user+"@"+ syncstatus) ;

clearweeklyfields();

 //selectsearchdata();
$("#message").show();
$("#actiondone").html("Data Saved Successfully");
//call the function that loads entered data
//$("#message").hide().delay(800).fade(400);


console.log('weekly data entered');
//open reports tab
 $('#reportsbutton').click();
 $('#inpatient_uptake_cmts').focus();
 
//setTimeout(delayedrefresh,2000);
 // delayedrefresh
       }
       
    
}


function clickreportstab(){
   
 $('#reportsbutton').click();
}


//===========================================EMPTY WEEKLY DATA FIELDS AFTER INSERT============================================================

function clearweeklyfields()
{
   // $("#facilityname").val("");
   //No facility name should have an underscore since its a special key
   
$("#startdate").val("");   
$("#enddate").val("");

for(b=0;b<allindicatorsarray.length;b++){
    
  $("#"+allindicatorsarray[b]).val("");  
    
} 

//clear data values

for(b=0;b<allnontargetindicatorsarray.length;b++){
    
  $("#"+allnontargetindicatorsarray[b]).attr("data-previous_"+allnontargetindicatorsarray[b],"0");  
  $("#"+allnontargetindicatorsarray[b]).attr("data-"+allnontargetindicatorsarray[b],"0");  
    
} 

    
}

function clearcmtsandprcent(){
    
   clearcommentsonly();
   clearpercentsonly();
    
}

function clearpercentsonly(){
       //clear progress bar hidden fields too
   
  for(b=0;b<allprogressbar_hiddentext_array.length;b++){
    
  $("#"+allprogressbar_hiddentext_array[b]).val("");  
    
}  
    
}


function clearcommentsonly(){
    
        
       //comnts
 
     for(b=0;b<allcommentsarray.length;b++){
    
  $("#"+allcommentsarray[b]).val("");  
    
                                            }//end of for loop 
    
}



var dbdata="";

//===================================================VIEW WEEKLY DATA============================================================
//a function to select a few search data that should appear in a data table
function selectsearchdata()
{
    
    
    
    //rread from weekly data db
    

  
    
  weeklydatadb.allDocs({include_docs: true, ascending: true}).then( function(doc) { 
 
     
	   //console.log(doc);
	   for(b=0;b<doc.total_rows;b++)
           {
             
               var dat={};
               dat=doc.rows[b];
               
                 var myid=dat.doc._id;
               if(myid.indexOf("annual")===-1){
	   
	       
	      //console.log(dat.doc.facility);
              //how to reference each column 
              //alert(dat.doc.startdate);
              //dat.doc._id
              var statusicon="<i class='glyphicon glyphicon-cloud-upload' style='color:red;' title='data not exported'></i>*";
              if(dat.doc.syncstatus==="Yes"){
                 statusicon=""; 
                  
               }
	     
		 //dbdata+="<tr><td> "+dat.doc.startdate+" </td><td>"+dat.doc.syncstatus+"</td><td>"+dat.doc.facility+"</td><td><button class='btn-info' onclick='loadsavedweekelydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\")'>Edit</button></td></tr>";
		 dbdata+="<tr id='"+dat.doc._id+"'><td> "+dat.doc.enddate+" </td><td>"+dat.doc.facility+"</td><td><button class='btn-info' onclick='loadsavedweekelydata(\""+dat.doc._id+"\",\""+dat.doc.facility+"\",\"no\")'>Edit "+statusicon+"</button></td></tr>";
          	    
                  }
            } //end of for loop
                    
	appendtabledata(dbdata);
			
  }).catch(function (err){console.log(err)});
    

    
    
    
    
    
    
    //read data from the db
    
  	  
    
    
}

//call the function that displays the data

function appendtabledata( dbdata ){
    
     $("#searchtablediv").html("<table id='searchtable' class='table table-striped table-bordered'><thead><tr><th style='width:30%;'>week <br/>ending </th><th style='width:50%;'>Facility</th><th style='width:20%;'>Edit</th></tr></thead><tbody>"+dbdata+"</tbody></table>");
         
	   $(document).ready(function() {
                
         /* $('#searchtable').DataTable({              
              "autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  "order": [[0,'desc']]                    
          }).makeEditable({sDeleteURL: "js/deleterecords.js"});
          **/
          //new code
          
     
    var table = $('#searchtable').DataTable({"autoWidth": true,
              "paging": true,
              "pagingType": "full",
              "lengthChange": false,  
              "order": [[0,'desc']]});
 
    $('#searchtable tbody').on( 'click', 'tr', function () {
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
        }
    } );
 
    $('#btnDeleteRow').click( function () {
        
     var tablerowid=table.$('tr.selected').attr('id');
        
        if(ConfirmDelete()===true){
        
        deletedata(tablerowid);
        
        table.row('.selected').remove().draw( false );
    }
        //call the delete function now
    } );

          
          
          
          
            
                                     } ); 
    
                                                          }

 selectsearchdata();

function showreports(){
    
     $("#reportsbutton").show();
}


function loadsavedweekelydata(id,facility,openreportstab ){
    $("#reportsbutton").show();
    
  //  alert(id);
 //load from weekly db where id is as selected   
  var mflanddates=id.split('_');
        	
	weeklydatadb.get(id).then(function (doc) {
    var rowid=id;    
    //populate div with respective content
    $("#rowid").val(id);
    $("#facilityname").val(mflanddates[0]+"_"+facility);
    //$('select#facilityname').find("option[value='"+mflanddates[0]+"_"+facility+"']").prop('selected', true); 
     $("#startdate").val(doc.startdate);   
     $("#enddate").val(doc.enddate); 
     
      seachlastcumulative(facility,doc.enddate);  

 $("#hiv_pos_target_child").val(doc.hiv_pos_target_child);
 $("#hiv_pos_target_adult").val(doc.hiv_pos_target_adult);
 $("#hiv_pos_target_total").val(doc.hiv_pos_target_total);
 $("#hiv_pos_child").val(doc.hiv_pos_child);
 $("#hiv_pos_adult").val(doc.hiv_pos_adult);
 $("#hiv_pos_total").val(doc.hiv_pos_total);
 $("#new_care_child").val(doc.new_care_child);
 $("#new_care_adult").val(doc.new_care_adult);
 $("#new_care_total").val(doc.new_care_total);
 $("#new_art_target_child").val(doc.new_art_target_child);
 $("#new_art_target_adult").val(doc.new_art_target_adult);
 $("#new_art_target_total").val(doc.new_art_target_total);
 $("#started_art_child").val(doc.started_art_child);
 $("#started_art_adult").val(doc.started_art_adult);
 $("#started_art_total").val(doc.started_art_total);
 $("#viral_load_target_child").val(doc.viral_load_target_child);
 $("#viral_load_target_adult").val(doc.viral_load_target_adult);
 $("#viral_load_target_total").val(doc.viral_load_target_total);
 $("#viral_load_done_child").val(doc.viral_load_done_child);
 $("#viral_load_done_adult").val(doc.viral_load_done_adult);
 $("#viral_load_done_total").val(doc.viral_load_done_total);
 $("#ipt_target_child").val(doc.ipt_target_child);
 $("#ipt_target_adult").val(doc.ipt_target_adult);
 $("#ipt_target_total").val(doc.ipt_target_total);
 $("#ipt_child").val(doc.ipt_child);
 $("#ipt_adult").val(doc.ipt_adult);
 $("#ipt_total").val(doc.ipt_total);
 $("#testing_target_child").val(doc.testing_target_child);
 $("#testing_target_adult").val(doc.testing_target_adult);
 $("#testing_target_total").val(doc.testing_target_total);
 $("#test_child").val(doc.test_child);
 $("#test_adult").val(doc.test_adult);
 $("#test_total").val(doc.test_total);
  
   $("#pmtct_hiv_pos_target").val(doc.pmtct_hiv_pos_target);
   $("#pmtct_hiv_pos").val(doc.pmtct_hiv_pos);
   $("#eid_target").val(doc.eid_target);
   $("#eid_done").val(doc.eid_done);
   $("#viral_load_mothers_target").val(doc.viral_load_mothers_target);
   $("#viral_load_mothers_done").val(doc.viral_load_mothers_done);
   
   
   
     $('#facilityname').select2(); 
     //load all percentages
     loadallpercents();
     //==========LOAD COMMENTS HERE ALSO=======
 $("#hiv_pos_yield_cmts").val(doc.hiv_pos_yield_cmts);
 $("#hiv_pos_care_cmts").val(doc.hiv_pos_care_cmts);
 $("#started_art_cmts").val(doc.started_art_cmts);
 $("#viral_test_cmts").val(doc.viral_test_cmts);
 $("#ipt_done_cmts").val(doc.ipt_done_cmts);
 $("#tested_cmts").val(doc.tested_cmts);
 $("#pmtct_hiv_pos_cmts").val(doc.pmtct_hiv_pos_cmts);
 $("#eid_done_cmts").val(doc.eid_done_cmts);
 $("#viral_load_mothers_cmts").val(doc.viral_load_mothers_cmts);
     
    
     
     //hide the tabular header of + Enter Data and unhide the edit data 
     
    
     //do the vice versa on saving the edited fields
    
        //$(".editdata").show();
     $("#savebutton").hide();
     $("#updatebutton").show();
     $("#savenewbutton").show();
      checkids();
      
 $('#newdatabutton').html("<i class='glyphicon glyphicon-edit'></i>Edit Data");

  //if this is a request to show the unentered comments
  //open the reports tab and focus on the first unentered comment
    if(openreportstab.indexOf("yes")!==-1){
        
      var contentarray=openreportstab.split("@"); 
      //alert(contentarray[1]);
     
      clickreportstab();
 //     document.getElementById(contentarray[1]).focus();
 $("#"+contentarray[1]).focus();
               }
               else {
                $('#newdatabutton').click();    
                   
               }
  
});

 selectwidth();
}

$("#refreshpage" ).click(function() 
{
    window.location.reload();
    clearweeklyfields();
   
});

$("#refr" ).click(function() 
{
    window.location.reload();
   // clearweeklyfields();
});


$("#refr1" ).click(function() 
{
    window.location.reload();
   // clearweeklyfields();
});

function delayedrefresh()
{
      window.location.reload();
    clearweeklyfields();
}


function updateweeklydata()
{
 //this id will be used to update the entered data
   var id=$("#rowid").val();
           //receive all the fields from the weekly data from
    facility=$("#facilityname").val();
   //No facility name should have an underscore since its a special key
   
     startdate=$("#startdate").val();   
     enddate=$("#enddate").val();
     
        
hiv_pos_target_child=$("#hiv_pos_target_child").val();
hiv_pos_target_adult=$("#hiv_pos_target_adult").val();
hiv_pos_target_total=$("#hiv_pos_target_total").val();
hiv_pos_child=$("#hiv_pos_child").attr("data-hiv_pos_child");
hiv_pos_adult=$("#hiv_pos_adult").attr("data-hiv_pos_adult");
hiv_pos_total=$("#hiv_pos_total").attr("data-hiv_pos_total");
new_care_child=$("#new_care_child").attr("data-new_care_child");
new_care_adult=$("#new_care_adult").attr("data-new_care_adult");
new_care_total=$("#new_care_total").attr("data-new_care_total");
new_art_target_child=$("#new_art_target_child").val();
new_art_target_adult=$("#new_art_target_adult").val();
new_art_target_total=$("#new_art_target_total").val();
started_art_child=$("#started_art_child").attr("data-started_art_child");
started_art_adult=$("#started_art_adult").attr("data-started_art_adult");
started_art_total=$("#started_art_total").attr("data-started_art_total");
viral_load_target_child=$("#viral_load_target_child").val();
viral_load_target_adult=$("#viral_load_target_adult").val();
viral_load_target_total=$("#viral_load_target_total").val();
viral_load_done_child=$("#viral_load_done_child").attr("data-viral_load_done_child");
viral_load_done_adult=$("#viral_load_done_adult").attr("data-viral_load_done_adult");
viral_load_done_total=$("#viral_load_done_total").attr("data-viral_load_done_total");
ipt_target_child=$("#ipt_target_child").val();
ipt_target_adult=$("#ipt_target_adult").val();
ipt_target_total=$("#ipt_target_total").val();
ipt_child=$("#ipt_child").attr("data-ipt_child");
ipt_adult=$("#ipt_adult").attr("data-ipt_adult");
ipt_total=$("#ipt_total").attr("data-ipt_total");
testing_target_child=$("#testing_target_child").val();
testing_target_adult=$("#testing_target_adult").val();
testing_target_total=$("#testing_target_total").val();
test_child=$("#test_child").attr("data-test_child");
test_adult=$("#test_adult").attr("data-test_adult");
test_total=$("#test_total").attr("data-test_total");
   
    pmtct_hiv_pos_target=$("#pmtct_hiv_pos_target").val();
    pmtct_hiv_pos=$("#pmtct_hiv_pos").attr("data-pmtct_hiv_pos");
    eid_target=$("#eid_target").val();
    eid_done=$("#eid_done").attr("data-eid_done");
    viral_load_mothers_target=$("#viral_load_mothers_target").val();
    viral_load_mothers_done=$("#viral_load_mothers_done").attr("data-viral_load_mothers_done");
    
    //alert(Date.parse(startdate));
    
    var user=$("#username").val(); 
    var timestamp = $.now();
    if(user===''){user='aphiaplus';}
    
    var syncstatus='No';  
    
  
          
     if(facility==='')
     {         
  
   alert('Select facility');
   //$("#facilityname").focus();
   
     }
     //startdate
     else if (startdate==='')
     {
         
     alert('Select week begining date');
   $("#startdate").focus();    
     }    
   //end date
      else if (enddate==='')
     {
         
     alert('Select week ending date');
   $("#enddate").focus();    
     }
      else  if(Date.parse(startdate) > Date.parse(enddate)){
                    alert("Start date cannot be greater than end date.");   
                    $("#enddate").focus();  
                }
      //inpatient_adm  
         
     
     
        
        
   //====added 201601==============================
       
    
  
             else if(hiv_pos_target_child==='')
      {
         
   alert('Enter # HIV positive target Child');
   $("#hiv_pos_target_child").focus();    
     
       }
   
          else if(hiv_pos_target_adult==='')
      {
         
   alert('Enter # HIV positive target Adult');
   $("#hiv_pos_target_adult").focus();    
     
       }   
     
//# HIV positive[cumulative]

        else if(hiv_pos_child==='')
      {
         
   alert('Enter # HIV positive[cumulative] Child');
   $("#hiv_pos_child").focus();    
     
       }
   
          else if(hiv_pos_adult==='')
      {
         
   alert('Enter # HIV positive[cumulative] Adult');
   $("#hiv_pos_adult").focus();    
     
       } 




      else if(new_care_child==='')
      {
         
   alert('Enter # Number new on care [cumulative] Child');
   $("#new_care_child").focus();    
     
       }
   
          else if(new_care_adult==='')
      {
         
   alert('Enter # Number new on care [cumulative] Adult');
   $("#new_care_adult").focus();    
     
       }

//# TARGET NEW ON ART
 else if(new_art_target_child==='')
      {
         
   alert('Enter # Target new on ART Child');
   $("#new_art_target_child").focus();    
     
       }
   
          else if(new_art_target_adult==='')
      {
         
   alert('Enter # Target new on ART Adult');
   $("#new_art_target_adult").focus();    
     
       }


//STARTED ON ART

 else if(started_art_child==='')
      {
         
   alert('Enter # Started on ART [cumulative] Child');
   $("#started_art_child").focus();    
     
       }
   
          else if(started_art_adult==='')
      {
         
   alert('Enter #  Started on ART [cumulative] Adult');
   $("#started_art_adult").focus();    
     
       }


//VIRAL LOAD TARGET


 else if(viral_load_target_child==='')
      {
         
   alert('Enter # Viral load target [current on ART for Dec 2015] Child');
   $("#viral_load_target_child").focus();    
     
       }
   
          else if(viral_load_target_adult==='')
      {
         
   alert('Enter # Viral load target [current on ART for Dec 2015] Adult');
   $("#viral_load_target_adult").focus();    
     
       }


//viral done

 else if(viral_load_done_child==='')
      {
         
   alert('Enter # Viral load done [cumulative] Child');
   $("#viral_load_done_child").focus();    
     
       }
   
          else if(viral_load_done_adult==='')
      {
         
   alert('Enter # Viral load done [cumulative] Adult');
   $("#viral_load_done_adult").focus();    
     
       }



 else if(ipt_target_child==='')
      {
         
   alert('Enter # IPT target [current on Care for Dec 2015] Child');
   $("#ipt_target_child").focus();    
     
       }
   
          else if(ipt_target_adult==='')
      {
         
   alert('Enter # IPT target [current on Care for Dec 2015] Adult');
   $("#ipt_target_adult").focus();    
     
       }




 else if(ipt_child==='')
      {
         
   alert('Enter # IPT [cumulative] Child');
   $("#ipt_child").focus();    
     
       }
   
          else if(ipt_adult==='')
      {
         
   alert('Enter # IPT [cumulative] Adult');
   $("#ipt_adult").focus();    
     
       }

//Testing target [Target/IPD/OPD work load]
 else if(testing_target_child==='')
      {
         
   alert('Enter # Testing target [Target/IPD/OPD work load] Adult');
   $("#testing_target_child").focus();    
     
       }
   
          else if(testing_target_adult==='')
      {
         
   alert('Enter # Testing target [Target/IPD/OPD work load] Adult');
   $("#testing_target_adult").focus();    
     
       }

//# Tests done [IPD/OPD/VCT]
        
    else if(test_child==='')
      {
         
   alert('Enter # Tests done [IPD/OPD/VCT] Adult');
   $("#test_child").focus();    
     
       }
   
          else if(test_adult==='')
      {
         
   alert('Enter # Tests done [IPD/OPD/VCT] Adult');
   $("#test_adult").focus();    
     
       }     
          
        
        
        
        
        
       //,,,,,
       
       //# PMTCT HIV positive yield target
             else if(pmtct_hiv_pos_target==='')
      {
         
   alert('Enter # PMTCT HIV positive yield target');
   $("#pmtct_hiv_pos_target").focus();    
     
       }
       //# PMTCT HIV positive yield
             else if(pmtct_hiv_pos==='')
      {
         
   alert('Enter # PMTCT HIV positive yield');
   $("#pmtct_hiv_pos").focus();    
     
       }
       //# EID target
             else if(eid_target==='')
      {
         
   alert('Enter # EID target ');
   $("#eid_target").focus();    
     
       }
       //eid_done
       
             else if(eid_done==='')
      {
         
   alert('Enter # EID Done ');
   $("#eid_done").focus();    
     
       }
       //viral_load_mothers_target
//             else if(viral_load_mothers_target==='')
//      {
//         
//   alert('Enter # viral load tests for mothers target');
//   $("#viral_load_mothers_target").focus();    
//     
//       }
       
        //viral_load_mothers_done
//             else if(viral_load_mothers_done==='')
//      {
//         
//   alert('Enter # viral load tests done for mothers');
//   $("#viral_load_mothers_done").focus();    
//     
//       }
       
       
       
       else {
     var facilitynameandmfl=facility.split("_");        
     var startd=startdate.replace('-','');      
     var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
         
     var facilityname=facilitynameandmfl[1];
            //save data to the db
          saveweeklyupdates(id,facilityname,startdate,enddate,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,hiv_pos_child,hiv_pos_adult,hiv_pos_total,new_care_child,new_care_adult,new_care_total,new_art_target_child,new_art_target_adult,new_art_target_total,started_art_child,started_art_adult,started_art_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,viral_load_done_child,viral_load_done_adult,viral_load_done_total,ipt_target_child,ipt_target_adult,ipt_target_total,ipt_child,ipt_adult,ipt_total,testing_target_child,testing_target_adult,testing_target_total,test_child,test_adult,test_total,pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done, viral_load_mothers_target,viral_load_mothers_done,timestamp,user, syncstatus) ;


//call refressh code here
clearweeklyfields();
 //selectsearchdata();
$("#message").show();
$("#actiondone").html("Data Updated Successfully");
//call the function that loads entered data

console.log('weekly data updated');

$('#reportsbutton').click();
$('#inpatient_uptake_cmts').focus();
//setTimeout(delayedrefresh,1800);
       }
       
    
}
   
function saveweeklyupdates(id,facilityname,startdate,enddate,hiv_pos_target_child,hiv_pos_target_adult,hiv_pos_target_total,hiv_pos_child,hiv_pos_adult,hiv_pos_total,new_care_child,new_care_adult,new_care_total,new_art_target_child,new_art_target_adult,new_art_target_total,started_art_child,started_art_adult,started_art_total,viral_load_target_child,viral_load_target_adult,viral_load_target_total,viral_load_done_child,viral_load_done_adult,viral_load_done_total,ipt_target_child,ipt_target_adult,ipt_target_total,ipt_child,ipt_adult,ipt_total,testing_target_child,testing_target_adult,testing_target_total,test_child,test_adult,test_total,pmtct_hiv_pos_target,pmtct_hiv_pos,eid_target,eid_done, viral_load_mothers_target,viral_load_mothers_done,timestamp,user, syncstatus) {
 
 weeklydatadb.get(id).then(function (doc) {
        
  //doc.age = 4;
 //alert(id);
   if(id!=='null' && id!=='' ){
        //doc._id=id;
        doc.facility=facilityname;
        doc.startdate=startdate;
	doc.enddate=enddate;
        
       
             
doc.hiv_pos_target_child=hiv_pos_target_child;
doc.hiv_pos_target_adult=hiv_pos_target_adult;
doc.hiv_pos_target_total=hiv_pos_target_total;
doc.hiv_pos_child=hiv_pos_child;
doc.hiv_pos_adult=hiv_pos_adult;
doc.hiv_pos_total=hiv_pos_total;
doc.new_care_child=new_care_child;
doc.new_care_adult=new_care_adult;
doc.new_care_total=new_care_total;
doc.new_art_target_child=new_art_target_child;
doc.new_art_target_adult=new_art_target_adult;
doc.new_art_target_total=new_art_target_total;
doc.started_art_child=started_art_child;
doc.started_art_adult=started_art_adult;
doc.started_art_total=started_art_total;
doc.viral_load_target_child=viral_load_target_child;
doc.viral_load_target_adult=viral_load_target_adult;
doc.viral_load_target_total=viral_load_target_total;
doc.viral_load_done_child=viral_load_done_child;
doc.viral_load_done_adult=viral_load_done_adult;
doc.viral_load_done_total=viral_load_done_total;
doc.ipt_target_child=ipt_target_child;
doc.ipt_target_adult=ipt_target_adult;
doc.ipt_target_total=ipt_target_total;
doc.ipt_child=ipt_child;
doc.ipt_adult=ipt_adult;
doc.ipt_total=ipt_total;
doc.testing_target_child=testing_target_child;
doc.testing_target_adult=testing_target_adult;
doc.testing_target_total=testing_target_total;
doc.test_child=test_child;
doc.test_adult=test_adult;
doc.test_total=test_total;
       
doc.pmtct_hiv_pos_target=pmtct_hiv_pos_target;
doc.pmtct_hiv_pos=pmtct_hiv_pos;
doc.eid_target=eid_target;
doc.eid_done=eid_done;
doc.viral_load_mothers_target=viral_load_mothers_target;
doc.viral_load_mothers_done=viral_load_mothers_done;
  
            //new percents
            
doc.hiv_pos_yield_perc_child=$("#hiv_pos_yield_perc_child_in").val();
doc.hiv_pos_yield_perc_adult=$("#hiv_pos_yield_perc_adult_in").val();
doc.hiv_pos_yield_perc_all=$("#hiv_pos_yield_perc_all_in").val();
doc.hiv_pos_care_perc_child=$("#hiv_pos_care_perc_child_in").val();
doc.hiv_pos_care_perc_adult=$("#hiv_pos_care_perc_adult_in").val();
doc.hiv_pos_care_perc_all=$("#hiv_pos_care_perc_all_in").val();
doc.started_art_perc_child=$("#started_art_perc_child_in").val();
doc.started_art_perc_adult=$("#started_art_perc_adult_in").val();
doc.started_art_perc_all=$("#started_art_perc_all_in").val();
doc.viral_test_perc_child=$("#viral_test_perc_child_in").val();
doc.viral_test_perc_adult=$("#viral_test_perc_adult_in").val();
doc.viral_test_perc_all=$("#viral_test_perc_all_in").val();
doc.ipt_done_perc_child=$("#ipt_done_perc_child_in").val();
doc.ipt_done_perc_adult=$("#ipt_done_perc_adult_in").val();
doc.ipt_done_perc_all=$("#ipt_done_perc_all_in").val();
doc.tested_perc_child=$("#tested_perc_child_in").val();
doc.tested_perc_adult=$("#tested_perc_adult_in").val();
doc.tested_perc_all=$("#tested_perc_all_in").val();
doc.pmtct_hiv_pos_perc=$("#pmtct_hiv_pos_perc_in").val();
doc.eid_done_perc=$("#eid_done_perc_in").val();
doc.viral_load_mothers_perc=$("#viral_load_mothers_perc_in").val();
            
            
        doc.timestamp=timestamp;
        doc.user=user;
        doc.syncstatus=syncstatus; 
   //alert('called');
  // put them back
  return weeklydatadb.put(doc);
   }
});
 
 
} 
    
  
//==================function to import data

// $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",false);
     $(this).removeClass('btn-lg btn-default').addClass('btn btn-success');
//});

var syncstatusarray=[];
function importdata(){
    
   // $('#exportbutton').on('click',function() {
    $("#exportbutton").prop("disabled",true);
     $("#exportbutton").removeClass('btn-lg btn-success').addClass('btn btn-default');

                //read db files that have not been synced
    
  $("#exportbutton").hide();
  $("#exportmsg").show();
   $("#exportresponse").append("<b><font color='orange'>Exporting data.. please wait response.</b><br/>");
  
  weeklydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 syncstatusarray=[];
      //read where sync is 0
	  
	   for(c=0;c<doc.total_rows;c++){
               $("#exportbutton").hide();
               $("#exportmsg").show();
               //a variable to check if all comments are added for percents below 80 percent and not amongest the indicators that can be skipped.
            var skipexporting=0;  
            var missingcomment="";
	   var dat={};
	   dat=doc.rows[c];
	     // console.log(dat.doc.facility);
              //how to reference each column 
              
              //dat.doc._id
		  var num=parseInt(c)-1;
	var missingcommentid="";
        if(dat.doc.syncstatus==="No" || dat.doc.syncstatus==="0" || dat.doc.syncstatus==="no")
                        {
            //now do an export via ajax
            console.log(" Exporting data for "+dat.doc.facility+" percent="+dat.doc.hiv_pos_care_perc_child+"*  and comments ="+dat.doc.eid_done_cmts+"*");
            //
           if(((parseInt(dat.doc.hiv_pos_care_perc_child)< 90 && parseInt(dat.doc.hiv_pos_care_perc_child)!==0 && dat.doc.hiv_pos_care_perc_child!=="" ) || (parseInt(dat.doc.hiv_pos_care_perc_adult)< 90 && parseInt(dat.doc.hiv_pos_care_perc_all)!==0 && dat.doc.hiv_pos_care_perc_all!=="" )|| (parseInt(dat.doc.hiv_pos_care_perc_all)< 90 && parseInt(dat.doc.hiv_pos_care_perc_child)!==0 && dat.doc.hiv_pos_care_perc_child!=="" )) && dat.doc.hiv_pos_care_cmts==="" ){missingcommentid="@hiv_pos_care_cmts";skipexporting++; missingcomment+="percentage HIV positive enrolled on care <br/>";}
            else if(( (parseInt(dat.doc.started_art_perc_child)< 90 && parseInt(dat.doc.started_art_perc_child)!==0 && dat.doc.started_art_perc_child!=="" ) || (parseInt(dat.doc.started_art_perc_adult)< 90 && parseInt(dat.doc.started_art_perc_adult)!==0 && dat.doc.started_art_perc_adult!=="" ) || ( parseInt(dat.doc.started_art_perc_all)< 90 && parseInt(dat.doc.started_art_perc_all)!==0 && dat.doc.started_art_perc_all!=="" ) ) && dat.doc.started_art_cmts==="" ){missingcommentid="@started_art_cmts";skipexporting++; missingcomment+="percentage of target started on ART <br/>";}
            else if(( (parseInt(dat.doc.viral_test_perc_child)< 90  && parseInt(dat.doc.viral_test_perc_child)!==0 && dat.doc.viral_test_perc_child!=="" ) || ( parseInt(dat.doc.viral_test_perc_adult)< 90 && parseInt(dat.doc.viral_test_perc_adult)!==0 && dat.doc.viral_test_perc_adult!=="" ) || ( parseInt(dat.doc.viral_test_perc_all)< 90 &&  parseInt(dat.doc.viral_test_perc_all)!==0 && dat.doc.viral_test_perc_all!==""  ) ) && dat.doc.viral_test_cmts==="" ){missingcommentid="@viral_test_cmts";skipexporting++; missingcomment+="percentage viral load tests done against target <br/>";}
            else if(( (parseInt(dat.doc.ipt_done_perc_child)< 90 &&  parseInt(dat.doc.ipt_done_perc_child)!==0 && dat.doc.ipt_done_perc_child!=="" ) || ( parseInt(dat.doc.ipt_done_perc_adult)< 90 &&  parseInt(dat.doc.ipt_done_perc_adult)!==0 && dat.doc.ipt_done_perc_adult!=="" ) || ( parseInt(dat.doc.ipt_done_perc_all)< 90 &&  parseInt(dat.doc.ipt_done_perc_all)!==0 && dat.doc.ipt_done_perc_all!=="" )) && dat.doc.ipt_done_cmts==="" ){missingcommentid="@ipt_done_cmts";skipexporting++; missingcomment+="percentage IPT done against target <br/>";}
            else if(( (parseInt(dat.doc.tested_perc_child)< 90 &&  parseInt(dat.doc.tested_perc_child)!==0 && dat.doc.tested_perc_child!=="" )|| ( parseInt(dat.doc.tested_perc_adult)< 90 &&  parseInt(dat.doc.tested_perc_adult)!==0 && dat.doc.tested_perc_adult!==""  ) || ( parseInt(dat.doc.tested_perc_all)< 90 &&  parseInt(dat.doc.tested_perc_all)!==0 && dat.doc.tested_perc_all!=="" ) ) && dat.doc.tested_cmts==="" ){missingcommentid="@tested_cmts"; skipexporting++; missingcomment+="percentage Tested against target <br/> ";}
            else if(  (parseInt(dat.doc.eid_done_perc)< 90 &&  parseInt(dat.doc.eid_done_perc)!==0 && dat.doc.tested_perc_child!=="" ) && dat.doc.eid_done_cmts==="" ){missingcommentid="@eid_done_cmts";skipexporting++; missingcomment+="percentage EID done test done against target <br/>";}
            else if( (parseInt(dat.doc.viral_load_mothers_perc)< 90 &&  parseInt(dat.doc.viral_load_mothers_perc)!==0 && dat.doc.viral_load_mothers_perc!=="" ) && dat.doc.viral_load_mothers_cmts==="" ){ missingcommentid="@viral_load_mothers_cmts"; skipexporting++; missingcomment=+"percentage viral load tests done for mothers against target <br/>";}
            
           
              var hrf=" <button class='btn-lg button-info' data-dismiss='modal' onclick=\"loadsavedweekelydata('"+dat.doc._id+"','"+dat.doc.facility+"','yes"+missingcommentid+"'); \"> Enter Comments</button>";
           




            
            
    
            
        
        
        if(skipexporting===0){
            
            updatesyncstatus(dat.doc._id);
        
            //url:'http://104.45.29.195:8080/aphiaplus_moi/importweeklydata',
            
             $.ajax({
                         url:hostname+':8080/aphiaplus_moi/importweeklydata',                            
                    type:'post', 
data:{id:dat.doc._id,
facilityname:dat.doc.facility,
startdate:dat.doc.startdate,
enddate:dat.doc.enddate,        
                   
hiv_pos_target_child:dat.doc.hiv_pos_target_child,
hiv_pos_target_adult:dat.doc.hiv_pos_target_adult,
hiv_pos_target_total:dat.doc.hiv_pos_target_total,
hiv_pos_child:dat.doc.hiv_pos_child,
hiv_pos_adult:dat.doc.hiv_pos_adult,
hiv_pos_total:dat.doc.hiv_pos_total,
new_care_child:dat.doc.new_care_child,
new_care_adult:dat.doc.new_care_adult,
new_care_total:dat.doc.new_care_total,
new_art_target_child:dat.doc.new_art_target_child,
new_art_target_adult:dat.doc.new_art_target_adult,
new_art_target_total:dat.doc.new_art_target_total,
started_art_child:dat.doc.started_art_child,
started_art_adult:dat.doc.started_art_adult,
started_art_total:dat.doc.started_art_total,
viral_load_target_child:dat.doc.viral_load_target_child,
viral_load_target_adult:dat.doc.viral_load_target_adult,
viral_load_target_total:dat.doc.viral_load_target_total,
viral_load_done_child:dat.doc.viral_load_done_child,
viral_load_done_adult:dat.doc.viral_load_done_adult,
viral_load_done_total:dat.doc.viral_load_done_total,
ipt_target_child:dat.doc.ipt_target_child,
ipt_target_adult:dat.doc.ipt_target_adult,
ipt_target_total:dat.doc.ipt_target_total,
ipt_child:dat.doc.ipt_child,
ipt_adult:dat.doc.ipt_adult,
ipt_total:dat.doc.ipt_total,
testing_target_child:dat.doc.testing_target_child,
testing_target_adult:dat.doc.testing_target_adult,
testing_target_total:dat.doc.testing_target_total,
test_child:dat.doc.test_child,
test_adult:dat.doc.test_adult,
test_total:dat.doc.test_total,        
        
pmtct_hiv_pos_target:dat.doc.pmtct_hiv_pos_target,
pmtct_hiv_pos:dat.doc.pmtct_hiv_pos,
eid_target:dat.doc.eid_target,
eid_done:dat.doc.eid_done,
viral_load_mothers_target:dat.doc.viral_load_mothers_target,
viral_load_mothers_done:dat.doc.viral_load_mothers_done,
        
//percents

hiv_pos_yield_perc_child:dat.doc.hiv_pos_yield_perc_child,
hiv_pos_yield_perc_adult:dat.doc.hiv_pos_yield_perc_adult,
hiv_pos_yield_perc_all:dat.doc.hiv_pos_yield_perc_all,
hiv_pos_care_perc_child:dat.doc.hiv_pos_care_perc_child,
hiv_pos_care_perc_adult:dat.doc.hiv_pos_care_perc_adult,
hiv_pos_care_perc_all:dat.doc.hiv_pos_care_perc_all,
started_art_perc_child:dat.doc.started_art_perc_child,
started_art_perc_adult:dat.doc.started_art_perc_adult,
started_art_perc_all:dat.doc.started_art_perc_all,
viral_test_perc_child:dat.doc.viral_test_perc_child,
viral_test_perc_adult:dat.doc.viral_test_perc_adult,
viral_test_perc_all:dat.doc.viral_test_perc_all,
ipt_done_perc_child:dat.doc.ipt_done_perc_child,
ipt_done_perc_adult:dat.doc.ipt_done_perc_adult,
ipt_done_perc_all:dat.doc.ipt_done_perc_all,
tested_perc_child:dat.doc.tested_perc_child,
tested_perc_adult:dat.doc.tested_perc_adult,
tested_perc_all:dat.doc.tested_perc_all,
pmtct_hiv_pos_perc:dat.doc.pmtct_hiv_pos_perc,
eid_done_perc:dat.doc.eid_done_perc,
viral_load_mothers_perc:dat.doc.viral_load_mothers_perc,
     //comments
          hiv_pos_yield_cmts:dat.doc.hiv_pos_yield_cmts,
          hiv_pos_care_cmts:dat.doc.hiv_pos_care_cmts,
          started_art_cmts:dat.doc.started_art_cmts,
          viral_test_cmts:dat.doc.viral_test_cmts,
          ipt_done_cmts:dat.doc.ipt_done_cmts,
         tested_cmts:dat.doc.tested_cmts,
          pmtct_hiv_pos_cmts:dat.doc.pmtct_hiv_pos_cmts,
          eid_done_cmts:dat.doc.eid_done_cmts,
          viral_load_mothers_cmts:dat.doc.viral_load_mothers_cmts,
         
                  
          timestamp:dat.doc.timestamp,
          user:dat.doc.user },
          dataType: 'html',  
                    success: function(data) {
                       
                       
                       
                        $("#exportresponse").append("<b>*"+data+'</b><br/>');
                         
                if(c===parseInt(doc.total_rows)){
                  //$("#exportbutton").show();
                 //$("#exportmsg").hide();
                 //$("#exportresponse").append("<b><font color='orange'>Exporting Completed.</b>");
  
                      }
                         
                   //doc.syncstatus="Yes"; 
   //alert('called');
  // put them back
                   // return weeklydatadb.put(doc);   
        
                                        }
                        
                         });
            
                        }//end of if skipp exporting === 0
            else {
                
                
                $("#exportresponse").append("<br/><b>NOTE:</b><font color='red'> Data for <b>"+dat.doc.facility+"</b> not uploaded due to missing comment(s) on section <b><i>"+missingcomment+"</i></b></font> "+hrf+" <br/>");
            }
                        }
        
                 
                 
                 //if its last loop show
                 
           
                  
             
            
          	    } //end of for loop
	 
	
		
  }).then(function (){
     // alert('export complete');
     
           // if(c===parseInt(doc.total_rows)){
                
              // for(var s=0;s<syncstatusarray.length;s++){
//                    
               //  updatesyncstatus(syncstatusarray[s]);
                
          // }
     
  }).catch(function (err){ console.log(err); });
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
   //refresh number of uninmported sites.
   //unsynceddata()
        
        
}



function updatesyncstatus(id){
  
weeklydatadb.get(id).then(function (doc1) {
      console.log(id+" sync status updated");
 doc1.syncstatus='Yes';
 return weeklydatadb.put(doc1);
 
});

	
    
}//end of function





function unsynceddata(){
    
    
    weeklydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 
          
      //read where sync is 0
	  var cnt1=0;
	   for(c=0;c<doc.total_rows;c++){
               
                var dat={};
	   dat=doc.rows[c];
           var cid=dat.doc._id;
               if((dat.doc.syncstatus==="No"||dat.doc.syncstatus==="0"||dat.doc.syncstatus==="no") && cid.indexOf("_annual")===-1 )
                        {
                            
                         cnt1++;   
                            
                        }
               var displaytext=cnt1+" sites";
               if(cnt1===1){
                   
                    displaytext=cnt1+" site";
               }
              
          	                    } //end of for loop
	 
	$("#unexportedno").html("<br/>( "+displaytext+" )");
        if(cnt1>0){
            $("#exportdataanchor1").show();
            $("#exportdataanchor2").show();
            
        }
		
  }).catch(function (err){console.log(err)});
          
  //$("#exportbutton").show();
  //$("#exportmsg").hide();	
    
    
    
}//end of function


unsynceddata();


function closeapp() 
{
      //navigator.app.exitApp();   // Closes the new window
}


</script>
<script>


//========================================201605 custom percentage calculator======================================


function fillprogressbar(denominator_is_value,numer,denomin,progressbarid,datavalueid,cmts){
    
        //console.log(datavalueid+" "+datavalueid.indexOf("adult"));
       // console.log(" "+cmts);
  
        var applycoloronbar="yes";
        
        for(a=0;a<progressbarstoskip.length;a++){
            
            if(progressbarstoskip[a]===progressbarid){
                
                
                applycoloronbar="no";
            }
        }
     //initially, we were using input values but now we are using data-previous attribute   
   // var numerator=$("#"+numer).val();
    //var denominator=$("#"+denomin).val();
    
     var numerator=$("#"+numer).attr("data-"+numer);
     var denominator=$("#"+denomin).val();
     if(denominator_is_value!=='yes'){
         
       denominator=  $("#"+denomin).attr("data-"+denomin);
         
     }
    
      if(denominator!==''&&numerator!==''){  
    //console.log(denomin+" "+denominator);
    //console.log(numer+" "+numerator);
    var numeratordenominatorvalues=numerator+"/"+denominator;
    var perc="0";
    if(denominator==='0'){
        
        perc=0;
        
                        }
    else if(denominator===''|| numerator===''){
        
        perc=0;
    }
    else {
        
        perc=Math.round((parseInt(numerator)/parseInt(denominator))*100);
        
      
    }
     savepercents(perc,datavalueid);
    //edit graph for display
    //if den and num are not blanks
    if(numerator!=='' && denominator!=='')
    {
    $("#"+progressbarid).width(perc+'%');
    $("#"+datavalueid).html(numeratordenominatorvalues+" = ("+perc+"%)");
    $("#"+datavalueid+"_in").val(perc);
    
    if(applycoloronbar==='yes'){
    if(perc>=90){
     $("#"+progressbarid).removeClass('progress-bar-info progress-bar-danger').addClass('progress-bar-success');
     
     if(datavalueid.indexOf("adult")===-1 && datavalueid.indexOf("child")===-1 ){
     $("#"+cmts).css('border-color','gray');
       }
                }
                   
 else if(perc < 90 && perc !==0) {
       $("#"+progressbarid).removeClass('progress-bar-info progress-bar-success').addClass('progress-bar-danger');
       
       if(datavalueid.indexOf("adult")===-1 && datavalueid.indexOf("child")===-1 ){
       $("#"+cmts).css('border-color','red');
                         }
  
                    }
                }
                    
     }
    
    
    }
}//end of function





//===================This function excecutes all percent calculation functions on loading and editin module  
function loadallpercents(){
    for(c=0;c<allindicatorsarray.length;c++){
      
            if(allindicatorsarray[c].indexOf("total")===-1){
                
            //call the functions in the onblur method
           // $("#"+allindicatorsarray[c]).trigger("blur");
            $("#"+allindicatorsarray[c]).blur();
          
                                                            }
        
        
                                            }
    
    
    
    
}





//a function to save comments after a user enters them


function savecomments(commentname){

 $("#finishbutton").prop('disabled',true);
  var id=$("#rowid").val();
  var comments=$("#"+commentname).val();
 
 console.log(comments);
 
   weeklydatadb.get(id).then(function (doc) {
  
   //if(comments!==''){
       
       if(commentname==='hiv_pos_yield_cmts'){
        doc.hiv_pos_yield_cmts=comments;   
       }
       else if (commentname==='hiv_pos_care_cmts'){
           doc.hiv_pos_care_cmts=comments;
                }

            else if (commentname==='started_art_cmts'){
           doc.started_art_cmts=comments;
                }
                
                else if (commentname==='viral_test_cmts'){
           doc.viral_test_cmts=comments;
                }
                
                else if (commentname==='ipt_done_cmts'){
           doc.ipt_done_cmts=comments;
                }
                
                else if (commentname==='tested_cmts'){
           doc.tested_cmts=comments;
                }
                
                else if (commentname==='pmtct_hiv_pos_cmts'){
           doc.pmtct_hiv_pos_cmts=comments;
                }
                
                else if (commentname==='eid_done_cmts'){
           doc.eid_done_cmts=comments;
                }
                
                else if (commentname==='viral_load_mothers_cmts'){
           doc.viral_load_mothers_cmts=comments;
                }
  

    

  return weeklydatadb.put(doc);
   //}
  
    
});
//updatesyncstatus(id);    


   
    
}// end of save comments function

function disablefinish(){
    
     $("#finishbutton").prop('disabled',true);
    // alert('disable');
     //setTimeout(enablefinish(),2000);
}

function enablefinish(){
    
     $("#finishbutton").prop('disabled',false);
}

function savepercents(percent,percentname){
 
 
  var id=$("#rowid").val();
  
  var percentagevalue=percent;
 
 
   //weeklydatadb.get(id).then(function (doc) {
  
   if(percent!=='' && percent!=='NaN'){
     // alert(percent+" "+percentname);
     
        //doc.inpatient_uptake_perc=percentagevalue;
        $("#"+percentname).val(percentagevalue);
      
       
   }
  //});

    
}// end of save comments function



function isuseradded(){
   var cnt=0;
        var username="";
    
     //if(username===''){    
    
//}
        
userdb.allDocs({include_docs:true,ascending: true}).then(function (doc) 
{
    
    if(doc.total_rows===0){
        
        $('#adduserbutton').click()
    }

 username=doc.username;

});
  
}

isuseradded();



   function numbers(evt){
      
var charCode=(evt.which) ? evt.which : evt.keyCode
 console.log(charCode);
 /*
if(charCode > 31 && (charCode < 48 || charCode>57)){
return false;
}
*/
//43=+  9=TAB 8=BACKSPACE 
 if( charCode===43 ||  charCode===9 ||  charCode===8 || charCode===46 || ( charCode >= 48 && charCode<=57)){
    
 return true;   
}
else {
return false;
}
}

//Codes to prevent default form submission

$("#userform").submit(function(e){
    return false;
});

$("#weeklydataform").submit(function(e){
    return false;
});


$("#exportdataform").submit(function(e){
    return false;
});

$("#reportsform").submit(function(e){
    return false;
});

$("#excelreportsfom").submit(function(e){
    return false;
});

 $('input').css('border-color','#337ab7');


//prevent numbers scrolling

$('form').on('focus', 'input[type=number]', function (e) {
  $(this).on('mousewheel.disableScroll', function (e) {
    e.preventDefault()
  })
});
$('form').on('blur', 'input[type=number]', function (e) {
  $(this).off('mousewheel.disableScroll')
});



function selectwidth(){
  
   
      $("#facilityname").width('74%');
    
}

function selectwidth100(){
  
   
      $("#facilityname").width('100%');
    
}

selectwidth100();

 
   
             

</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover(); 
    
  
    
});


	$('#unexportedno').each(function() {
    var elem = $(this);
    setInterval(function() {
        if (elem.css('visibility') == 'hidden') {
            elem.css('visibility', 'visible');
        } else {
            elem.css('visibility', 'hidden');
        }    
    }, 500);
});




function getreport(){
    
    
    var exelstart=$("#startdaterpt").val();
    var exelend=$("#enddaterpt").val();
    var countyrpt=$("#rpt_county").val();
        
        if (exelstart==='')
     {
         
     alert('Select report begining date');
   $("#startdaterpt").focus();    
     }    
   //end date
      else if (exelend==='')
     {
         
     alert('Select report ending date');
   $("#enddaterpt").focus();    
     } 
     
      else  if(Date.parse(exelstart) > Date.parse(exelend)){
                    alert(" Report Start date cannot be greater than end date.");   
                    $("#enddaterpt").focus();  
                }
                else {
                    //call the report generation page
                 downloadrpt(exelstart,exelend,countyrpt) ;  
                    
                }
        
    
}



  function downloadrpt(startdate,enddate,cnty){
      
                $('.loading').show();
                $('#excelreportbtn').hide();
               
                //?startdate=" + startdate + "&enddate=" + enddate + "&cbos=" + cbos
             
                var ur=hostname+":8080/aphiaplus_moi/excelreport?startdate=" + startdate + "&enddate=" + enddate+ "&county=" + cnty ;
 console.log(ur);
                $.fileDownload(ur).done(function () { $('.loading').hide(); $('#excelreportbtn').show(); $('#excelreportbtn').html("<i class='glyphicon glyphicon-ok'></i> Report Generated"); }).fail(function () { alert('Report generation failed, kindly try again!'); $('.loading').hide(); $('#excelreportbtn').show(); });
 
                //$('.loading').hide();
            }



  function resetgeneratebutton(){
    
   $("#excelreportbtn").removeClass('btn-lg btn-success active').addClass('btn-lg btn-info active');  
    
}




function checkids(){
    
     facility=$("#facilityname").val();
     startdate=$("#startdate").val();   
     enddate=$("#enddate").val();
     
     
 var facilitynameandmfl=facility.split("_");        
     var startd=startdate.replace('-','');      
     var startd=startd.replace('-','');      
     var endd=enddate.replace('-','');      
     var endd=endd.replace('-','');      
      id=facilitynameandmfl[0]+"_"+startd+"_"+endd;
      //this should not be cleared
      var newid = $("#rowid").val();   
    
    console.log(newid +" **** "+id);
    if(newid!=='' && id!=='' && id!=='Select Facility Name__'){
    
    if(newid===id){
        //hide the save as new 
        $("#savenewbutton").hide();
        
                  }
        else if(newid!==id){
        //hide the save as new 
        $("#savenewbutton").show();
        $("#updatebutton").hide();
        
                           } 
                  
        }
                 }


//confirm delete data


function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete data for the selected facility?");
      if (x)
          return true;
      else
        return false;
    }








function deletedata(id){
    
    //a function to delete entered data
console.log("______"+id);
weeklydatadb.get(id).then(function(doc) {
  return weeklydatadb.remove(doc);
}).then(function (result) {
    unsynceddata();
  // handle result
}).catch(function (err) {
  console.log(err);
});

  
    
}



function togglehidding(){
    
  console.log("hidding called"); 
 if($('#hidetargets:checkbox:checked').length > 0){
  //showtargets 

   $(".hiderows").hide();
   hidetargetsui='yes';
 }
 else 
 {
      $(".hiderows").show();
      hidetargetsui='no';
 }
    
}








// a function to autosum



function autocalculate(indicator){
    var calculation=$("#"+indicator).val();
   // var calculation=document.getElementById(indicator).value;
 
    console.log(calculation);
    //var calculation1=calculation.replace("+","@");
    var sourcearray=calculation.split("+");
  //___
    var total=0;
     var b=0;     
    for(b=0;b<sourcearray.length;b++){
        //check if there
        if(sourcearray[b].trim()===''){sourcearray[b]=0;}
        
        if(sourcearray[b]!=='')
        {
           total=parseInt(total)+parseInt(sourcearray[b]); 
           $("#"+indicator).val(total);
           console.log("Total___"+total);
        }
                                               
       if(b===(sourcearray.length-1)){
           
         yearlytotal(indicator);  
           
       } 
    }
  //initiate the check for previous months data here
  
  
}//end of auto calculate

//this fuction should sum and update the current value of the 

function yearlytotal(indicator){
  //  
    var currentvalue=$("#"+indicator).val(); 
    var previous=$("#"+indicator).data("previous_"+indicator);
    var newtotal=$("#"+indicator).data(""+indicator);
    
    
    
   var afteradding=0;
   if(currentvalue!==''){
       
   afteradding=parseInt(previous)+parseInt(currentvalue);
   
   }
   
        //----update the excel values
      $("#"+indicator).attr( "data-"+indicator , afteradding);  //data-total_hiv_pos_child
      //$("#"+indicator).val(afteradding);  //the total that appears on the input field
      console.log("before adding "+previous+" After adding "+afteradding);  
        
}



//____LOAD LAST CUMULATIVE RECORDS PRIOR TO THE SELECTED MONTH____

          

function seachlastcumulative(facility,before_date){
   var chosenid=0;
           var maximumdatecopy=0;
    
  //  alert(id);
 //load from weekly db where id is as selected   

   
  weeklydatadb.allDocs({include_docs: true, descending: true}).then( function(doc) { 
 
     
	   //console.log(doc);
           var maxdate=0;
           
           var pepfaryear=0;
           
           var startdatekey=0;
           
           var datevals=before_date.split("-");
           
           pepfaryear=datevals[0];
           
           if(parseInt(datevals[1])>=10)
        {
            //the year is curyear plus one
           pepfaryear=parseInt(datevals[0]); 
            
        }
        else {
            
          pepfaryear=parseInt(datevals[0])-parseInt(1);  
            
            }
           startdatekey=pepfaryear+datevals[1]+datevals[2];
           
           var currentenddatekey=before_date.replace(/-/g,"");
          
          
	   for(a=0;a<doc.total_rows;a++)
           {
               var dat={};
	   dat=doc.rows[a];
               if(dat.doc.facility===facility){
             //compare the selected date and all the end dates
             //check if the db end date is in between the pepfar year startdate and the entered end date
             //if the 
             var dbenddate=dat.doc.enddate;
            var dbenddatekey=dbenddate.replace(/-/g,"");
             console.log(" pepfar start date is :"+startdatekey+" Db end date key is :"+dbenddatekey +" Entered end date key is :"+currentenddatekey+" Current maximum date is :"+maximumdatecopy);
	  if((parseInt(dbenddatekey)>parseInt(startdatekey)) && (parseInt(dbenddatekey)>maximumdatecopy) && (parseInt(dbenddatekey)<currentenddatekey ) ) 
           {
               var tar=dat.doc.enddate;
               maximumdatecopy=tar.replace(/-/g,"");
               chosenid=dat.doc._id;
           }
		 
                 }
               
                 if(a===parseInt(doc.total_rows)-1){
                       console.log(" maximum date copy is"+maximumdatecopy+"  chosen id "+chosenid);
                     //pass the final id
                     loadcumulative(chosenid);
                 }
                 
          	 } //end of for loop
	 
	  	
		
  }).catch(function (err){console.log(err)});

       
       }//end of function searchlastcumulative 
       
       
  function loadcumulative(id){
   	
	weeklydatadb.get(id).then(function (doc) {
       
  //populate the data- attributes with the correct data..
 $("#hiv_pos_child").attr("data-previous_hiv_pos_child",doc.hiv_pos_child);
 $("#hiv_pos_adult").attr("data-previous_hiv_pos_adult",doc.hiv_pos_adult);
 $("#hiv_pos_total").attr("data-previous_hiv_pos_total",doc.hiv_pos_total);
 
 $("#new_care_child").attr("data-previous_new_care_child",doc.new_care_child);
 $("#new_care_adult").attr("data-previous_new_care_adult",doc.new_care_adult);
 $("#new_care_total").attr("data-previous_new_care_total",doc.new_care_total);

 $("#started_art_child").attr("data-previous_started_art_child",doc.started_art_child);
 $("#started_art_adult").attr("data-previous_started_art_adult",doc.started_art_adult);
 $("#started_art_total").attr("data-previous_started_art_total",doc.started_art_total);

 $("#viral_load_done_child").attr("data-previous_viral_load_done_child",doc.viral_load_done_child);
 $("#viral_load_done_adult").attr("data-previous_viral_load_done_adult",doc.viral_load_done_adult);
 $("#viral_load_done_total").attr("data-previous_viral_load_done_total",doc.viral_load_done_total);
 
 $("#ipt_child").attr("data-previous_ipt_child",doc.ipt_child);
 $("#ipt_adult").attr("data-previous_ipt_adult",doc.ipt_adult);
 $("#ipt_total").attr("data-previous_ipt_total",doc.ipt_total);

 $("#test_child").attr("data-previous_test_child",doc.test_child);
 $("#test_adult").attr("data-previous_test_adult",doc.test_adult);
 $("#test_total").attr("data-previous_test_total",doc.test_total);


   $("#pmtct_hiv_pos").attr("data-previous_pmtct_hiv_pos",doc.pmtct_hiv_pos);

   $("#eid_done").attr("data-previous_eid_done",doc.eid_done);

   $("#viral_load_mothers_done").attr("data-previous_viral_load_mothers_done",doc.viral_load_mothers_done);
  // we populate data- attributes with a sum of previous data and the current data
  
  //now that the process is done upon data entry, and on this point we are editing, we should prompt a reload
  
  
   for(b=0;b<allnontargetindicatorsarray.length;b++){
        //check if there
        if($("#"+allnontargetindicatorsarray[b]).val()!==''){
 
        yearlytotal(allnontargetindicatorsarray[b]);
           // $("#"+allnontargetindicatorsarray).attr("data-"+allnontargetindicatorsarray,total);
            
            }
                                             
                                             }
                                             
                                             

});// end of db get

 
}// end of load cumulative




</script>

	</body>
</html>
