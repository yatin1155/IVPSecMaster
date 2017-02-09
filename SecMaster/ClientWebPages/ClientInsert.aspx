<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientWithoutTabs.master" AutoEventWireup="true" CodeFile="ClientInsert.aspx.cs" Inherits="ClientWebPages_ClientInsert" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderInsert" Runat="Server">

<script src="../Scripts/ServerScript.js" type="text/javascript"></script>
<link href="../Styles/material-form.css" rel="stylesheet" type="text/css" />
 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

           <div class="page-content">
                   
          <div class="container" style="back">
          <div class="stepwizard">
              <div class="stepwizard-row setup-panel">
                  <div class="stepwizard-step">
                      <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                      <p>Security Summary</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                      <p>Security Identifier</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                      <p>Regulatory Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-4" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                      <p>Risk</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-5" type="button" class="btn btn-default btn-circle" disabled="disabled">5</a>
                      <p>Regulatory Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-6" type="button" class="btn btn-default btn-circle" disabled="disabled">6</a>
                      <p>Reference Data</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-7" type="button" class="btn btn-default btn-circle" disabled="disabled">7</a>
                      <p>Pricing Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-8" type="button" class="btn btn-default btn-circle" disabled="disabled">8</a>
                      <p>Divident History</p>
                  </div>
              </div>
          </div>
          <form role="form" id="Equity_Form" style="margin-top: 30px; background-color: #fafafa;padding: 40px;" >
              <div class="row setup-content" id="step-1">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Security_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Name</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Security_Description" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Description </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Has_Position" required><span class="highlight"></span><span class="bar"></span>
                          <label>Has Position </label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Is_Active" required><span class="highlight"></span><span class="bar"></span>
                          <label>Is Active  </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Round_Lot_Size" required><span class="highlight"></span><span class="bar"></span>
                          <label>Round Lot Size</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Unique_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique Name</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>

                  
              </div>
              <div class="row setup-content" id="step-2">
                  <div class="col-xs-4">
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
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Bloomberg_Unique_ID" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique ID </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Global_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Global Name </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Ticker_And_Exchange" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker andExchange</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-3">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Is_ADR" required><span class="highlight"></span><span class="bar"></span>
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
                          <input type="text" name="IPO_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>IPO Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Price_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Price Currency </label>
                        </div>
                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Settle_Days" required><span class="highlight"></span><span class="bar"></span>
                          <label>Settle Days</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Shares_Outstanding" required><span class="highlight"></span><span class="bar"></span>
                          <label>Shares Outstanding </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Voting_Rights_Per_Share" required><span class="highlight"></span><span class="bar"></span>
                          <label>Voting Rights Per Share</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-4">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="20_Day_Average_Volume" required><span class="highlight"></span><span class="bar"></span>
                          <label>20 Day Average Volume</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Beta" required><span class="highlight"></span><span class="bar"></span>
                          <label>Beta</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Short_Interest" required><span class="highlight"></span><span class="bar"></span>
                          <label>Short Interest</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="YTD_Return" required><span class="highlight"></span><span class="bar"></span>
                          <label>YTD Return</label>
                        </div>
                        <div class="group">
                          <input type="text" name="90_Day_Price_Volatility" required><span class="highlight"></span><span class="bar"></span>
                          <label>90 Day Price Volatility</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-5">
                  <div class="col-xs-3">
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
                  <div class="col-xs-3">
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

                  <div class="col-xs-3">
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
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-6">
                  <div class="col-xs-3">
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
                  <div class="col-xs-3">
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

                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" name="Country_of_Incorporation" required><span class="highlight"></span><span class="bar"></span>
                          <label>Country of Incorporation</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Risk_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Risk Currency</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>

              </div>


              <div class="row setup-content" id="step-7">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Open_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Open Price</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Close_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Close Price</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Volume" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volume</label>
                        </div>
                        
                        <div class="group">
                          <input type="text" name="PE_Ratio" required><span class="highlight"></span><span class="bar"></span>
                          <label>PE Ratio</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Last_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Price </label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="text" name="Ask_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ask Price</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bid_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bid Price</label>
                        </div>
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-8">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Declared_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Declared Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Ex_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ex Date </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Record_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Record Date</label>
                        </div>
                        
                        <div class="group">
                          <input type="text" name="Pay_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Pay Date</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Amount" required><span class="highlight"></span><span class="bar"></span>
                          <label>Amount </label>
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
                  <button type="button" onclick="sendEquityDataToServer()" class="button buttonBlue">Submit Data
                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
              </button>
              </div>

               
          </form>
          </div>
      </div>
</asp:Content>
