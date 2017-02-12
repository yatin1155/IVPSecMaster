<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientMaster.master" AutoEventWireup="true" CodeFile="ClientSingleSecurity.aspx.cs" Inherits="ClientWebPages_ClientDashboard" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="../Styles/myStyle.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function () {

            loadSingleEquityData(2);


        });
    </script>
  <link href="../Styles/material-form.css" rel="stylesheet" type="text/css" />
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
      
  <main class="mdl-layout__content" style="margin: 30px; background-color: #fafafa;padding: 40px;" >

   <form role="form" id="Update_EquityForm" >
    <!-- "is-active" class to set the default active tab -->
    <section class="mdl-layout__tab-panel is-active" id="scroll-tab-1">
      <div class="page-content">
        <h1 runat="server" id="result"></h1>
           <div class="col-xs-6">
                        <div class="group">
                            
                            <input type="hidden" id="Equity_Id" name="Equity_Id">
                          <input type="text" id="Security_Name" name="Security_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Name</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Security_Description" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Description </label>
                        </div>
                        <div class="group">
                         <input type="text" name="Has_Position" list="hasPosition">
                          <datalist id="hasPosition">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Has Position </label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Is_Active" list="isActive">
                          <datalist id="isActive">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Is Active  </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Round_Lot_Size" required><span class="highlight"></span><span class="bar"></span>
                          <label>Round Lot Size</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Unique_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique Name</label>
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
                          <input type="text" name="CUSIP" required><span class="highlight"></span><span class="bar"></span>
                          <label>CUSIP</label>
                        </div>
                        <div class="group">
                          <input type="text" name="ISIN" required><span class="highlight"></span><span class="bar"></span>
                          <label>ISIN </label>
                        </div>
                        <div class="group">
                          <input type="text" name="SEDOL" required><span class="highlight"></span><span class="bar"></span>
                          <label>SEDOL</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Ticker" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Bloomberg_Unique_ID" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique ID </label>
                        </div>
                        
                        <div class="group">
                          <input type="text" name="Bloomberg_Ticker_And_Exchange" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker andExchange</label>
                        </div>
                         <div class="group">
                          <input type="number" min="0" name="Bloomberg_Global_ID" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Global ID</label>
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
                          <<input type="text" name="Is_ADR" list="isADR">
                          <datalist id="isADR">
                              <option value="True">
                              <option value="False">
                          </datalist><span class="highlight"></span><span class="bar"></span>
                          <label>Is ADR</label>
                        </div>
                        <div class="group">
                          <input type="text" name="ADR_Underlying_Ticker" required><span class="highlight"></span><span class="bar"></span>
                          <label>ADR Underlying Ticker</label>
                        </div>
                        <div class="group">
                          <input type="text" name="ADR_Underlying_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>ADR Underlying Currency</label>
                        </div>

                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Shares_Per_ADR" required><span class="highlight"></span><span class="bar"></span>
                          <label>Shares Per ADR</label>
                        </div>
                        <div class="group">
                          <input type="date" name="IPO_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>IPO Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Pricing_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Price Currency </label>
                        </div>
                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="number" min="0" name="Settle_Days" required><span class="highlight"></span><span class="bar"></span>
                          <label>Settle Days</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Total_Shares_Outstanding" required><span class="highlight"></span><span class="bar"></span>
                          <label>Shares Outstanding </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Voting_Rights_Per_Share" required><span class="highlight"></span><span class="bar"></span>
                          <label>Voting Rights Per Share</label>
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
                          <input type="number" min="0" name="Average_Volume_20Day" required><span class="highlight"></span><span class="bar"></span>
                          <label>20 Day Average Volume</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Beta" required><span class="highlight"></span><span class="bar"></span>
                          <label>Beta</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Short_Interest" required><span class="highlight"></span><span class="bar"></span>
                          <label>Short Interest</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="YTD_Return" required><span class="highlight"></span><span class="bar"></span>
                          <label>YTD Return</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Price_Volatility_90Day" required><span class="highlight"></span><span class="bar"></span>
                          <label>90 Day Price Volatility</label>
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
                          <input type="text" name="Form_PF_Asset_Class" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Asset Class </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Country" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Country</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Credit_Rating" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Credit Rating</label>
                        </div>

                        <div class="group">
                          <input type="text" name="Form_PF_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Form_PF_Instrument" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Instrument</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Liquidity_Profile" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Liquidity Profile</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Maturity" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Maturity</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_NAICS_Code" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF NAICS Code </label>
                        </div>

                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Form_PF_Region" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Region</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Sector" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sector</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Form_PF_Sub_Asset_Class" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sub Asset Class </label>
                        </div>
                  </div>
        </div>
    </section>
    
    <!-- Tab No 6-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-6">
      <div class="page-content">
       <h1></h1>
       <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Issue_Country" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Country</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Exchange" required><span class="highlight"></span><span class="bar"></span>
                          <label>Exchange</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Issuer" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issuer</label>
                        </div>

                        <div class="group">
                          <input type="text" name="Issue_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Trading_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Trading Currency</label>
                        </div>
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
                          <label>Bloomberg Industry Sector</label>
                        </div>

                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Country_of_Incorporation" required><span class="highlight"></span><span class="bar"></span>
                          <label>Country of Incorporation</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Risk_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Risk Currency</label>
                        </div>
                  </div>

      </div>
    </section>
    
    <!-- Tab No 7-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-7">
      <div class="page-content">
         <h1></h1>
        <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="Open_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Open Price</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Close_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Close Price</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Volume" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volume</label>
                        </div>
                        
                        <div class="group">
                          <input type="number" min="0" name="PE_Ratio" required><span class="highlight"></span><span class="bar"></span>
                          <label>PE Ratio</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="Last_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Price </label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Ask_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ask Price</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Bid_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bid Price</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
      </div>
    </section>

    <!-- Tab No 8-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-8">
      <div class="page-content">
         <h1></h1>
         <div class="col-xs-6">
                        <div class="group">
                          <input type="date" name="Declared_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Declared Date</label>
                        </div>
                        <div class="group">
                          <input type="date" name="Ex_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ex Date </label>
                        </div>
                        <div class="group">
                          <input type="date" name="Record_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Record Date</label>
                        </div>
                        
                        <div class="group">
                          <input type="date" name="Pay_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Pay Date</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="Dividend_Amount" required><span class="highlight"></span><span class="bar"></span>
                          <label>Dividend Amount </label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="text" name="Frequency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Frequency</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Dividend_Type" required><span class="highlight"></span><span class="bar"></span>
                          <label>Dividend Type </label>
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

  <button type="button" onclick="updateEquityDataToServer()" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-pencil"></span> Update Security</button>
  </div>
  <div class="col-md-2">

<button type="button" onclick="deleteEquitySecurity()" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-folder-close"></span> Delete Security</button>

  </div>
  <div class="col-md-4"></div>

    </div>
  </center>
</asp:Content>

