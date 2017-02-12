<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientMaster.master"
    AutoEventWireup="true" CodeFile="ClientSingleBond.aspx.cs" Inherits="ClientWebPages_ClientDashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="../Styles/material-form.css" rel="stylesheet" type="text/css" />
        <link href="../Styles/myStyle.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {

            loadSingleBondData(1);


        });
    </script>

    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <!-- Header Container -->
          <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title  of Header -->
     <span class="mdl-layout-title"><img style="height:50px" src="../assetes/logo-light.png" /></span>
    </div>
    <!-- Tab Bar Container , and Tab links -->
    <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
      <a href="#scroll-tab-1" class="mdl-layout__tab is-active">Security Summary</a>
      <a href="#scroll-tab-2" class="mdl-layout__tab is-active">Security Identifier</a>
      <a href="#scroll-tab-3" class="mdl-layout__tab">Security Details</a>
      <a href="#scroll-tab-4" class="mdl-layout__tab">Risk</a>
      <a href="#scroll-tab-5" class="mdl-layout__tab">Regulatory Details</a>
      <a href="#scroll-tab-6" class="mdl-layout__tab">Reference Data</a>
      <a href="#scroll-tab-7" class="mdl-layout__tab">Pricing Details</a>
      <a href="#scroll-tab-8" class="mdl-layout__tab is-active">Dividend History</a>
    </div>
  </header>
    <!-- MDL Layout Header -->
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">IVP Sec Master</span>
    <nav class="mdl-navigation">
         <a class="mdl-navigation__link" href="../ClientWebPages/ClientSecuritiesDashboard.aspx">Home</a>
        <a class="mdl-navigation__link" href="../ClientWebPages/ClientSecuritiesDashboard.aspx" id="aEquity">Equity</a>
        <a class="mdl-navigation__link" href="../ClientWebPages/ClientBondDashboard.aspx" id="aBond">Bond</a>
        <a class="mdl-navigation__link" href="#">Profile</a>
        <a class="mdl-navigation__link" href="#">Logout</a>
    </nav>
  </div>
        <main class="mdl-layout__content" style="margin: 30px; background-color: #fafafa;padding: 40px;">

    
          <form role="form" id="Update_BondForm"  >
    <!-- "is-active" class to set the default active tab -->
    <section class="mdl-layout__tab-panel is-active" id="scroll-tab-1">
      <div class="page-content">
        <h1 runat="server" id="result"></h1>
        <div class="col-xs-6">
                        <div class="group">
                        
                            <input type="hidden" id="Bond_Id" name="Bond_Id">
                          <input type="text" name="Security_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Name</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Security_Description" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Description </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Asset_Type" required><span class="highlight"></span><span class="bar"></span>
                          <label>Asset Type </label>
                        </div>
                  </div>
        <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Investment_Type" required><span class="highlight"></span><span class="bar"></span>
                          <label>Investment Type  </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Trading_Factor" required><span class="highlight"></span><span class="bar"></span>
                          <label>Trading Factor</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Pricing_Factor" required><span class="highlight"></span><span class="bar"></span>
                          <label>Pricing Factor</label>
                        </div>
                  </div>
      </div>
    </section>
    
    <!-- Tab No 2-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-2">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="BBG_Ticker" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker</label>
                        </div>
                        <div class="group">
                          <input type="text" name="ISIN" required><span class="highlight"></span><span class="bar"></span>
                          <label>ISIN </label>
                        </div>
                        <div class="group">
                          <input type="text" name="BBG_Unique_ID" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique ID</label>
                        </div>
                        
                  </div>
         <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="CUSIP" required><span class="highlight"></span><span class="bar"></span>
                          <label>CUSIP </label>
                        </div>
                        <div class="group">
                          <input type="text" name="SEDOL"  required><span class="highlight"></span><span class="bar"></span>
                          <label>SEDOL </label>
                        </div>
                   </div>
      </div>
    </section>
    
    <!-- Tab No 3-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-3">
      <div class="page-content">
       <h1></h1>
       <div class="col-xs-4">
                        <div class="group">
                          <input type="date" name="First_Coupon_Date"  required><span class="highlight"></span><span class="bar"></span>
                          <label>First Coupon Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Cap" required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Cap</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Floor" required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Floor</label>
                        </div>
                        <div class="group">
                          <input type="number" min ="0" name="Coupon_Frequency"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Frequency</label>
                        </div>
                        <div class="group">
                          <input type="number" min ="0"  name="Coupon_Rate"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Rate</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Type"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Type</label>
                        </div>
                  </div>
       <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Float_Spread"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Float Spread</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Is_Callable" list="isCallable">
                          <datalist id="isCallable">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Is Callable</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Is_Fix_to_Float" list="isFixToFloat">
                          <datalist id="isFixToFloat">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Is Fix to Float </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Is_Putable" list="isPutable">
                          <datalist id="isPutable">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Is Putable</label>
                        </div>
                        <div class="group">
                          <input type="date" name="Issue_Date"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Date</label>
                        </div>
                        <div class="group">
                          <input type="date" name="Last_Reset_Date"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Reset Date</label>
                        </div>
                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="date" name="Maturity_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Maturity Date</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Call_Notification_Max_Days"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Maximum Call Notice Days </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Put_Notification_Max_Days" required><span class="highlight"></span><span class="bar"></span>
                          <label>Maximum Put Notice Days</label>
                        </div>
                        <div class="group">
                          <input type="date" name="Penultimate_Coupon_Date"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Penultimate Coupon Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Reset_Frequency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Reset frequency</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Has_Position" list="hasPosition">
                          <datalist id="hasPosition"">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Has Position</label>
                        </div>
                  </div>
      </div>
    </section>
    
    <!-- Tab No 4-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-4">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-6">
                        <div class="group">
                          <input  type="number" min="0" name="Macaulay_Duration"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Duration</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Volatility_30D" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volatility 30D</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Volatility_90D" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volatility 90D</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input  type="number" min="0" name="Convexity"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Convexity</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Average_Volume_30D" required><span class="highlight"></span><span class="bar"></span>
                          <label>Average Volume 30D</label>
                        </div>
                  </div>
      </div>
    </section>
    
    <!-- Tab No 5-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-5">
      <div class="page-content">
       <h1></h1>
       <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="PF_Asset_Class" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Asset Class </label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Country" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Country</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Credit_Rating"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Credit Rating</label>
                        </div>

                        <div class="group">
                          <input type="text" name="PF_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="PF_Instrument" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Instrument</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Liquidity_Profile" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Liquidity Profile</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Maturity" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Maturity</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_NAICS_Code" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF NAICS Code </label>
                        </div>

                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="PF_Region" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Region</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Sector" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sector</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Sub_Asset_Class" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sub Asset Class </label>
                        </div>

                  </div>
      </div>
    </section>
    
    <!-- Tab No 6-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-6">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Country_of_Issuance" required><span class="highlight"></span><span class="bar"></span>
                          <label>Country of Issuance</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Issuer" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issuer</label>
                        </div>

                        <div class="group">
                          <input type="text" name="Issue_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Currency</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Risk_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Risk Currency</label>
                        </div>
                        
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Sub_Group" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Sub Group</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Group" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Group</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Sector" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Sector</label>
                        </div>
                  </div>
      </div>
    </section>

    <!-- Tab No 7-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-7">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-12">
                        <div class="group">
                          <input type="date" name="Put_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Put Date</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Put_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Put Price</label>
                        </div>
                  </div>
      </div>
    </section>

    <!-- Tab No 8-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-8">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-4">
                        <div class="group">
                          <input  type="number" min="0" name="Ask_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ask Price</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="High_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>High Price </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Low_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Low Price</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input  type="number" min="0" name="Open_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Open Price</label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Volume" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volume</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Bid_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bid Price </label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input  type="number" min="0" name="Last_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Price</label>
                        </div>
                  </div>
      </div>
    </section>

    <!-- Tab No 9-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-9">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-12">
                        <div class="group">
                          <input type="date" name="Call_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Call Date</label>
                        </div>
                        <div class="group">
                          <input  type="number" min="0" name="Call_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Call Price </label>
                        </div>
                  </div>
      </div>
    </section>

      
    </form>
        </main>

  <center>
  <div class="row" style="margin-bottom:50px">
  <div class="col-md-4"></div>
<div class="col-md-2">

  <button type="button" onclick="updateBondDataToServer()" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-pencil"></span> Update Security</button>
  </div>
  <div class="col-md-2">

<button type="button" onclick="deleteBondSecurity()" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-folder-close"></span> Delete Security</button>

  </div>
  <div class="col-md-4"></div>

    </div>
  </center>
</asp:Content>
