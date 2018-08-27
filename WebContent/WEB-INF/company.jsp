<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>DBS Stock Trader</title>
      <link rel="stylesheet" href="css/bootstrap.css">
      <link rel="stylesheet" href="css/font-awesome.css">
      <link rel="stylesheet" href="plugins/animate%2banimo.css">
      <link rel="stylesheet" href="plugins/csspinner.min.css">
      <link rel="stylesheet" href="css/app.css">
      <link rel="stylesheet" href="css/table.css">
      <script src="js/modernizr.js"></script>
      <script src="js/fastclick.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <script>

window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "SBI"
	},
	axisY: {
		title: "Units Sold",
		valueFormatString: "#0,,.",
		suffix: "mn",
		stripLines: [{
			value: 3366500,
			label: "Average"
		}]
	},
	data: [{
		yValueFormatString: "#,### Units",
		xValueFormatString: "YYYY",
		type: "spline",
		dataPoints: [
			{x: new Date(2002, 0), y: 2506000},
			{x: new Date(2003, 0), y: 2798000},
			{x: new Date(2004, 0), y: 3386000},
			{x: new Date(2005, 0), y: 6944000},
			{x: new Date(2006, 0), y: 6026000},
			{x: new Date(2007, 0), y: 2394000},
			{x: new Date(2008, 0), y: 1872000},
			{x: new Date(2009, 0), y: 2140000},
			{x: new Date(2010, 0), y: 7289000},
			{x: new Date(2011, 0), y: 4830000},
			{x: new Date(2012, 0), y: 2009000},
			{x: new Date(2013, 0), y: 2840000},
			{x: new Date(2014, 0), y: 2396000},
			{x: new Date(2015, 0), y: 1613000},
			{x: new Date(2016, 0), y: 2821000},
			{x: new Date(2017, 0), y: 2000000}
		]
	}]
});
chart.render();

}

</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#togglegraph").click(function(){
        $("#chartContainer").toggle();
    });
});
</script>
<script>
$(document).ready(function(){
    $("#priority_table").click(function(){
        $("#prioroty_tab").toggle();
    });
});
</script>
  </head>
   <body>



      <section class="wrapper">
         <nav class="navbar navbar-default navbar-top navbar-fixed-top">
            <div class="navbar-header">
               <a href="index.html" class="navbar-brand">
                  <div class="brand-logo"><i> <img src="css/dbslogo.png" height="35px" width="35px" style="border-radius:50%"> </i> <b style="font-weight:700; color:#DD1414">STOCK</b>TRADER.com</div>
                  <div class="brand-logo-collapsed"><i><img src="css/dbslogo.png" height="40px" width="40px" style="border-radius:50%; top:25px"></i></div>
               </a>
            </div>
            <div class="nav-wrapper">
               <ul class="nav navbar-nav mt0">
                  <li>
                     <a href="#" data-toggle="aside">
                     <em class="fa fa-align-left"></em>
                     </a>
                  </li>
               </ul>
               <ul class="nav navbar-nav navbar-right mt0">
                  <li class="dropdown dropdown-list">
                     <a href="#" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <strong><i class="fa fa-btc"></i> Wallet</strong>
                     </a>
                  </li>
                  <li class="dropdown dropdown-list">
                     <a href="#" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                        <em class="fa fa-bell"></em>
                        <div class="label label-danger">3</div>
                     </a>
                     <ul class="dropdown-menu col-md-4 col-sm-6 col-xs-12">
                        <li>
                           <div class="table-responsive">
                              <table class="table table-striped table-bordered table-hover">
                                 <thead>
                                    <tr>
                                       <th>Buy/Sell</th>
                                       <th>Progress</th>
                                       <th>Date</th>
                                       <th>Status</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <tr>
                                       <td>Buy order SC</td>
                                       <td>
                                          <div class="progress progress-striped progress-xs">
                                             <div role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-100-p">
                                                <span class="sr-only">100% Complete</span>
                                             </div>
                                          </div>
                                       </td>
                                       <td>
                                          <em class="fa fa-calendar fa-fw text-muted"></em>02/19/2018
                                       </td>
                                       <td class="text-center">
                                          Complete
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>Sell order SC</td>
                                       <td>
                                          <div class="progress progress-striped progress-xs">
                                             <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-danger w-50-p">
                                                <span class="sr-only">50% Complete</span>
                                             </div>
                                          </div>
                                       </td>
                                       <td>
                                          <em class="fa fa-calendar fa-fw text-muted"></em>02/18/2018
                                       </td>
                                       <td class="text-center">
                                          50% Filled
                                       </td>
                                    </tr>
                                    <tr>
                                       <td>Buy order IOTA</td>
                                       <td>
                                          <div class="progress progress-striped progress-xs">
                                             <div role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" class="progress-bar progress-bar-success w-50-p">
                                                <span class="sr-only">50% Complete</span>
                                             </div>
                                          </div>
                                       </td>
                                       <td>
                                          <em class="fa fa-calendar fa-fw text-muted"></em>02/17/2018
                                       </td>
                                       <td class="text-center">
                                          50% Filled
                                       </td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </li>
                     </ul>
                  </li>
                  <li class="dropdown">
                     <a href="#" data-toggle="dropdown" data-play="fadeIn" class="dropdown-toggle">
                     <em class="fa fa-user"></em>
                     </a>
                     <ul class="dropdown-menu">
                        <li><a href="Profile.html">Profile</a>
                        </li>
                        <li><a href="#">Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="landing.html">Logout</a>
                        </li>
                     </ul>
                  </li>
               </ul>
            </div>
         </nav>
         <aside class="aside">
            <nav class="sidebar">
               <ul class="nav">
                  <li>
                     <div data-toggle="collapse-next" class="item user-block has-submenu">
                        <div class="user-block-picture">
                           <img src="02.jpg" alt="Avatar" width="60" height="60" class="img-thumbnail img-circle account-img-mb">
                        </div>
                        <div class="user-block-info">
                           <span class="user-block-name item-text">James Franky</span>
                           <span class="user-block-role"><i class="fa fa-check text-green"></i> Verified</span>
                           <div class="label label-primary"><i class="fa fa-chevron-down"></i> Account Info</div>
                        </div>
                     </div>
                     <ul class="nav collapse">
                        <li><a href="#open_orders">Open Orders</a>
                        </li>
                        <li><a href="#history">Transactions History</a>
                        </li>
                        <li><a href="#market">Market History</a>
                        </li>
                        <li>
                           <a href="javascript:void(0);">
                              Verification
                              <div class="label label-success pull-right"><i class="fa fa-check"></i> Verified</div>
                           </a>
                        </li>
                     </ul>
                  </li>
                  <li class="active">
                     <a href="index.html" title="Markets" data-toggle="collapse-next">
                        <em class="fa fa-home"></em>
                        <div class="label pull-right"><i class="fa fa-line-chart"></i></div>
                        <span class="item-text">Markets</span>
                     </a>

                  <li>
                     <a href="prices.html" title="Dashboard" class="">
                        <em class="fa fa-btc"></em>
                        <span class="item-text">Live Pricing</span>
                     </a>
                  </li>
                  <li class="">
                     <a href="datatable.html" title="Dashboard" class="">
                        <em class="fa fa-gear"></em>
                        <span class="item-text">Order Book</span>
                     </a>
                  </li>
                  <li>
                     <a title="Pages" href="My_Order_History.html">
                     <em class="fa fa-file-text"></em>
                     <span class="item-text">My Order History</span>
                     </a>

                  </li>
               </ul>
            </nav>
         </aside>
         <section>
            <section class="main-content">
<a href="wallet.html">               <button type="button" class="btn btn-labeled btn-primary pull-right" >
               <span class="btn-label"><i class="fa fa-dollar"></i>
               </span>Goto Wallet</button></a>

               <div class="row">
                  <div class="col-md-9">
                     <!-- First Row Starts Here -->
                     <div class="row">

                     </div>
                     <!-- First Row Ends Here -->
                     <div class="row">
                        <div class="col-lg-12">
                           <div class="panel panel-default">

                              <div class="panel-wrapper collapse">
                                 <div class="panel panel-default">
                                    <div class="panel-heading">All Markets |
                                       <small>All Availble Markets</small>
                                    </div>
                                    <div class="panel-body">
                                       <table id="datatable1" class="table table-striped table-hover">
                                          <thead>
                                             <tr>
                                                <th class="tableSmallPad">Coin</th>
                                                <th class="tableSmallPad">Price</th>
                                                <th class="tableSmallPad">Vol</th>
                                                <th class="tableSmallPad">CHG</th>
                                                <th class="tableSmallPad">Name</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <!-- BCH Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad">
                                                   <!--RADIO 1-->
                                                   <input type="radio" class="radio_item" value="" name="BCH" id="radio1">
                                                   <label class="label_item" for="radio1"> <i class="fa fa-star text-c-blue"></i> </label> BCH
                                                </td>
                                                <td class="tableSmallPad">0.16000009</td>
                                                <td class="tableSmallPad">2967.720</td>
                                                <td class="text-c-blue tableSmallPad">+17.84</td>
                                                <td class="tableSmallPad">Bitcoin Cash</td>
                                             </tr>
                                             <!-- BCH Ends Here -->
                                             <!-- ETH Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio10">
                                                   <label class="label_item" for="radio10"> <i class="fa fa-star text-c-blue"></i> </label> ETH
                                                </td>
                                                <td class="tableSmallPad">0.10039995</td>
                                                <td class="tableSmallPad">2887.720</td>
                                                <td class="text-c-blue tableSmallPad">+1.35</td>
                                                <td class="tableSmallPad">Ethereum</td>
                                             </tr>
                                             <!-- ETH Ends Here -->
                                             <!-- XRP Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio3">
                                                   <label class="label_item" for="radio3"> <i class="fa fa-star text-c-blue"></i> </label> XRP
                                                </td>
                                                <td class="tableSmallPad">0.00009485</td>
                                                <td class="tableSmallPad">1633.576</td>
                                                <td class="text-c-blue tableSmallPad">+5.10</td>
                                                <td class="tableSmallPad">Ripple</td>
                                             </tr>
                                             <!-- XRP Ends Here -->
                                             <!-- STR Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio4">
                                                   <label class="label_item" for="radio4"> <i class="fa fa-star text-c-blue"></i> </label> STR
                                                </td>
                                                <td class="tableSmallPad">0.00004322</td>
                                                <td class="tableSmallPad">1196.608</td>
                                                <td class="text-c-red tableSmallPad">-0.05</td>
                                                <td class="tableSmallPad">Stellar</td>
                                             </tr>
                                             <!-- STR Ends Here -->
                                             <!-- LTC Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio5">
                                                   <label class="label_item" for="radio5"> <i class="fa fa-star text-c-blue"></i> </label> LTC
                                                </td>
                                                <td class="tableSmallPad">0.01790003</td>
                                                <td class="tableSmallPad">1115.235</td>
                                                <td class="text-c-blue tableSmallPad">+1.58</td>
                                                <td class="tableSmallPad">Litecoin</td>
                                             </tr>
                                             <!-- LTC Ends Here -->
                                             <!-- SC Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio6">
                                                   <label class="label_item" for="radio6"> <i class="fa fa-star text-c-blue"></i> </label> SC
                                                </td>
                                                <td class="tableSmallPad">0.00000272</td>
                                                <td class="tableSmallPad">131.014</td>
                                                <td class="text-c-blue tableSmallPad">+1.87</td>
                                                <td class="tableSmallPad">Siacoin</td>
                                             </tr>
                                             <!-- SC Ends Here -->
                                             <!-- Doge Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio7">
                                                   <label class="label_item" for="radio7"> <i class="fa fa-star text-c-blue"></i> </label> DOGE
                                                </td>
                                                <td class="tableSmallPad">0.00000055</td>
                                                <td class="tableSmallPad">169.631</td>
                                                <td class="text-c-red tableSmallPad">-1.79</td>
                                                <td class="tableSmallPad">Dogecoin</td>
                                             </tr>
                                             <!-- Doge Ends Here -->
                                             <!-- DBG Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio8">
                                                   <label class="label_item" for="radio8"> <i class="fa fa-star text-c-blue"></i> </label> DGB
                                                </td>
                                                <td class="tableSmallPad">0.00000402</td>
                                                <td class="tableSmallPad">90.224</td>
                                                <td class="text-c-blue tableSmallPad">+0.00</td>
                                                <td class="tableSmallPad">DigiByte</td>
                                             </tr>
                                             <!-- DGB Ends Here -->
                                             <!-- NXT Starts Here -->
                                             <tr class="clickable-row" data-href="index.html">
                                                <td class="tableSmallPad"><input type="radio" class="radio_item" value="" name="ETH" id="radio9">
                                                   <label class="label_item" for="radio9"> <i class="fa fa-star text-c-blue"></i> </label> NXT
                                                </td>
                                                <td class="tableSmallPad">0.00002241</td>
                                                <td class="tableSmallPad">100.305</td>
                                                <td class="text-c-blue tableSmallPad">+2.56</td>
                                                <td class="tableSmallPad">NXT</td>
                                             </tr>
                                             <!-- NXT Ends Here -->
                                          </tbody>
                                       </table>
                                    </div>
                                 </div>
                                 <div class="panel-footer">All Markets</div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Chart Starts Here -->
                     <div class="row">
                        <div class="col-lg-12">
                           <div class="panel panel-default">
                              <div class="panel-collapse">
                                 <div class="panel-body">



<button id="togglegraph" style="background-color: #008CBA;font-size: 25px; color: white;">GRAPH</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button id="priority_table" style="background-color: #008CBA;font-size: 25px; color: white;">PRIORITY TABLE</button>
									<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
									<div >
									<div id="chartContainer" class="h-500" style="display:none;" >
									<br/><br/><br/>
				       <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

		                          </div>
								  <div id="prioroty_tab" style="display:none;">
								  <br/><br/><br/>

<table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
  </tr>

								</table>
								  </div>
								  <br/><br/><br/>
								    <!-----start bid price-------->
<div class="col-lg-6">
                <div class="panel panel-default">
                  <div class="panel-heading">Bid Price
                    <a href="javascript:void(0);" data-perform="panel-collapse" data-toggle="tooltip" title="" class="pull-right" data-original-title="Collapse Panel">
                           <em class="fa fa-minus"></em>
                           </a>
                  </div>
                  <div class="panel-wrapper collapse in" aria-expanded="true" style=""><div class="pannel panel-body">
                    <label style="font-size:15px" class="col-sm-2 control-label m-t-9">Units  </label>
                    <div class="input-group col-sm-10 m-b">
                      <input type="number" placeholder="" class="form-control text-right">
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Bid</label>
                      <div class="input-group col-sm-10 m-b">
                        <input type="number" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="row">
                      <div class="btn-group m-t-9 col-md-6 col-sm-12 col-xs-12">
                        <button style="background-color:#337ab7;border-color:#2e6da4" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-block">Limit
                                 <span class="caret"></span>
                                 </button>
                        <ul role="menu" class="dropdown-menu">
                          <li><a href="javascript:void(0);">Limit</a>
                          </li>
                          <li><a href="javascript:void(0);">Conditional</a>
                          </li>
                        </ul>
                      </div>

                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Total</label>
                      <div class="input-group col-sm-10 m-b">
                        <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                        <input type="text" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="m-t-9">
                      <button style="background-color:#337ab7;border-color:#2e6da4" type="button" class="btn btn-primary btn-block"><i class="fa fa-plus"></i> Buy Stock</button>
                    </div>
                  </div></div>
                </div>
              </div>


			  <!-----end bid price-------->

			  <!----start ask price-->

			  <div class="col-lg-6">
                <div class="panel panel-default">
                  <div class="panel-heading">Ask Price
                    <a href="javascript:void(0);" data-perform="panel-collapse" data-toggle="tooltip" title="" class="pull-right" data-original-title="Collapse Panel">
                           <em class="fa fa-minus"></em>
                           </a>
                  </div>
                  <div class="panel-wrapper collapse in" aria-expanded="true" style=""><div class="pannel panel-body">
                    <label class="col-sm-2 control-label m-t-9">Units</label>
                    <div class="input-group col-sm-10 m-b">
                      <input type="text" placeholder="" class="form-control text-right">
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Ask</label>
                      <div class="input-group m-b">
                        <input type="number" class="form-control text-right" placeholder="">
                      </div>
                    </div>
                    <div class="row">
                      <div class="btn-group m-t-9 col-md-6 col-sm-12 col-xs-12">
                        <button style="background-color:#337ab7;border-color:#2e6da4" type="button" data-toggle="dropdown" class="btn btn-primary dropdown-toggle btn-block">Limit
                                 <span class="caret"></span>
                                 </button>
                        <ul role="menu" class="dropdown-menu">
                          <li><a href="javascript:void(0);">Limit</a>
                          </li>
                          <li><a href="javascript:void(0);">Conditional</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                    <div class="m-t-9">
                      <label class="col-sm-2 control-label m-t-9">Total</label>
                      <div class="input-group col-sm-10 m-b">
                        <span class="input-group-addon"><i class="fa fa-rupee"></i></span>
                        <input type="number" placeholder="" class="form-control text-right">
                      </div>
                    </div>
                    <div class="m-t-9">
                      <button style="background-color:#337ab7;border-color:#2e6da4" type="button" class="btn btn-primary btn-block"><i class="fa fa-minus"></i> Sell Stock</button>
                    </div>
                  </div></div>
                </div>
              </div>
			  <!----end ask price-->


                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Chart Ends Here -->
                     <div class="row">
                        <div class="col-md-6">
                           <div data-toggle="play-animation" data-play="fadeInLeft" data-offset="0" data-delay="1400" class="panel widget">
                              <div class="panel-body">
                                 <div class="text-right text-muted">
                                    <em class="fa fa-gavel fa-2x text-danger"></em>
                                 </div>
                                 <h3 class="mt0">Availble Stocks</h3>
                                 <p class="text-danger"><i class="fa fa-number"></i>no of stocks:</p>
                                 <p><i class="fa fa-usd"></i>20000Rs</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div data-toggle="play-animation" data-play="fadeInLeft" data-offset="0" data-delay="1400" class="panel widget">

                           </div>

                        </div>
						   <marquee> <a href=""><img src="images/Airtel.png" height=90px width=90px></a>&nbsp;&nbsp;&nbsp;<a href=""><img src="images/tcs.png" height=90px width=90px></a>&nbsp;&nbsp;&nbsp;<a href=""><img src="images/titan.png" height=90px width=90px></a>&nbsp;&nbsp;&nbsp;<a href=""><img src="images/hdfc2.jpg" height=90px width=90px></a>&nbsp;&nbsp;&nbsp;<a href=""><img src="images/dbslogo.png" height=90px width=90px></a></marquee>

                     </div>
                  </div>
                  <div class="col-md-3">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <div class="panel-title">Coin Status</div>
                        </div>
                        <div class="list-group">
                           <div class="list-group-item">
                              <div class="media">
                                 <div class="pull-left">
                                    <span class="fa-stack fa-lg">
                                    <em class="fa fa-circle fa-stack-2x text-green"></em>
                                    <em class="fa fa-level-up fa-stack-1x fa-inverse text-white"></em>
                                    </span>
                                 </div>
                                 <div class="media-body clearfix">
                                    <strong>Last Price</strong>
                                    <p class="m0">
                                       <small class="text-green">$0.02 <i class="fa fa-money"></i></small>
                                    </p>
                                    <p><i class="fa fa-btc"></i> 0.00000286</p>
                                 </div>
                              </div>
                           </div>
                           <div class="list-group-item">
                              <div class="media">
                                 <div class="pull-left">
                                    <span class="fa-stack fa-lg">
                                    <em class="fa fa-circle fa-stack-2x text-green"></em>
                                    <em class="fa fa-level-up fa-stack-1x fa-inverse text-white"></em>
                                    </span>
                                 </div>
                                 <div class="media-body clearfix">
                                    <strong>24Hr Change</strong>
                                    <p class="m0">
                                       <small class="text-green">+1.35%</small>
                                    </p>
                                    <p><i class="fa fa-plus"></i> Gainer <i class="fa fa-level-up text-green"></i></p>
                                 </div>
                              </div>
                           </div>
                           <div class="list-group-item">
                              <div class="media">
                                 <div class="pull-left">
                                    <span class="fa-stack fa-lg">
                                    <em class="fa fa-circle fa-stack-2x text-danger"></em>
                                    <em class="fa fa-level-down fa-stack-1x fa-inverse text-white"></em>
                                    </span>
                                 </div>
                                 <div class="media-body clearfix">
                                    <strong>24Hr Low</strong>
                                    <p class="m0">
                                       <small class="text-danger">$0.02</small>
                                    </p>
                                    <p><i class="fa fa-btc"></i> 0.00000261 <i class="fa fa-level-down text-danger"></i></p>
                                 </div>
                              </div>
                           </div>
                           <div class="list-group-item">
                              <div class="media">
                                 <div class="pull-left">
                                    <span class="fa-stack fa-lg">
                                    <em class="fa fa-circle fa-stack-2x text-green"></em>
                                    <em class="fa fa-level-up fa-stack-1x fa-inverse text-white"></em>
                                    </span>
                                 </div>
                                 <div class="media-body clearfix">
                                    <strong>24Hr High</strong>
                                    <p class="m0">
                                       <small class="text-green">$0.02</small>
                                    </p>
                                    <p><i class="fa fa-btc"></i> 0.00000261 <i class="fa fa-level-up text-green"></i></p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- Coin Status Ends Here -->
                     <div class="panel panel-default">
                        <div class="panel-heading">
                           <div class="pull-right"><i class="fa fa-bullhorn"></i></div>
                           <div class="panel-title">Upcoming News</div>
                        </div>
                        <div class="list-group">
                           <a href="#" class="list-group-item">
                              <div class="media">
                                 <div class="media-body">
                                    <small class="pull-right">2h</small>
                                    <strong class="media-heading text-primary">James</strong>
                                    <p><small>Posted by James@example</small></p>
                                    <p class="mb-sm">
                                       <small>We are adding iota coins read full notice example.com/adding-iota</small>
                                    </p>
                                 </div>
                              </div>
                           </a>
                           <a href="#" class="list-group-item">
                              <div class="media">
                                 <div class="media-body">
                                    <small class="pull-right">2h</small>
                                    <strong class="media-heading text-primary">Jimmy</strong>
                                    <p><small>Posted by Jimmy@example</small></p>
                                    <p class="mb-sm">
                                       <small>We have scheduled update for BTC on 03/04/2018 example.com/btc-update</small>
                                    </p>
                                 </div>
                              </div>
                           </a>
                           <a href="#" class="list-group-item">
                              <div class="media">
                                 <div class="media-body">
                                    <small class="pull-right">2h</small>
                                    <strong class="media-heading text-primary">Franky</strong>
                                    <p><small>Posted by Franky@example</small></p>
                                    <p class="mb-sm">
                                       <small>Vote for your favorite coin to be added example.com/vote-coin</small>
                                    </p>
                                 </div>
                              </div>
                           </a>
                        </div>
                        <div class="panel-footer clearfix">
                           <a href="#" class="pull-left">
                           <small>Read All</small>
                           </a>
                           <a href="#" class="pull-right">
                           <small>Dismiss All</small>
                           </a>
                        </div>
                        <div class="panel-footer clearfix">
                           <p>Upcoming News</p>
                        </div>
                     </div>
                  </div>
               </div>


      <script src="js/plugins/jquery.js"></script>
      <script src="js/plugins/velocity.js"></script>
      <script src="js/plugins/velocity.ui.js"></script>
      <script src="js/plugins/bootstrap.js"></script>
      <script src="js/plugins/chosen.jquery.js"></script>
      <script src="js/plugins/bootstrap-slider.js"></script>
      <script src="js/plugins/bootstrap-filestyle.js"></script>
      <script src="js/plugins/animo.js"></script>
      <script src="js/plugins/jquery.sparkline.js"></script>
      <script src="js/plugins/jquery.slimscroll.js"></script>
      <script src="js/plugins/jquery.dataTables.js"></script>
      <script src="js/plugins/dataTables.bootstrap.js"></script>
      <script src="js/plugins/dataTables.bootstrapPagination.js"></script>
      <script src="js/highcharts.js"></script>
      <script src="js/exporting.js"></script>
      <script src="js/plugins/dataTables.colVis.js"></script>
      <!--[if lt IE 8]><script src="js/excanvas.min.js"></script><![endif]-->
      <script src="js/tradify.js"></script>
      <script>
         $(document).ready(function() {
            // Candlestick
            $.getJSON('tradify/data.json', function (data) {

                // create the chart
                Highcharts.stockChart('candlestickChart', {

                  chart: {
                },


                    rangeSelector: {
                        selected: 1
                    },

                    series: [{
                        type: 'candlestick',
                        name: 'SC-BTC',
                        data: data,
                        dataGrouping: {
                            units: [
                                [
                                    'week', // unit name
                                    [1] // allowed multiples
                                ], [
                                    'month',
                                    [1, 2, 3, 4, 6]
                                ]
                            ]
                        }
                    }]
                });
            });
            });
      </script>

   </body>
</html>