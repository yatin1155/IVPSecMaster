<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientWithoutTabs.master" AutoEventWireup="true" CodeFile="ClientInsertBond.aspx.cs" Inherits="ClientWebPages_ClientInsert" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderInsert" Runat="Server">
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
                      <a href="#step-2" type="button" class="btn btn-default btn-circle" >2</a>
                      <p>Security Identifier</p>
                  </div>
                  
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" >3</a>
                      <p>Security Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-4" type="button" class="btn btn-default btn-circle" >4</a>
                      <p>Risk</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-5" type="button" class="btn btn-default btn-circle" >5</a>
                      <p>Regulatory Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-6" type="button" class="btn btn-default btn-circle" >6</a>
                      <p>Reference Data</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-7" type="button" class="btn btn-default btn-circle" >7</a>
                      <p>Put Schedule</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-8" type="button" class="btn btn-default btn-circle" >8</a>
                      <p>Pricing and Analytics</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-9" type="button" class="btn btn-default btn-circle">9</a>
                      <p>Call Schedule</p>
                  </div>
                  
              </div>
          </div>
          <form id="bond_Form" role="form" style="margin-top: 30px; background-color: #fafafa;padding: 40px;" >
              <div class="row setup-content" id="step-1">
                  <div class="col-xs-6">
                        <div class="group">
                        
                          <input type="text" name="Security_Name" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Name</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Security_Description" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Description </label>
                        </div>
                        <div class="group">
                          <input type="text" name="Asset_Type " required><span class="highlight"></span><span class="bar"></span>
                          <label>Asset Type </label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Investment_Type  " required><span class="highlight"></span><span class="bar"></span>
                          <label>Investment Type  </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Trading_Factor " required><span class="highlight"></span><span class="bar"></span>
                          <label>Trading Factor</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Pricing_Factor " required><span class="highlight"></span><span class="bar"></span>
                          <label>Pricing Factor</label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-2">
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
                          <input type="text" name="CUSIP  " required><span class="highlight"></span><span class="bar"></span>
                          <label>CUSIP </label>
                        </div>
                        <div class="group">
                          <input type="text" name="SEDOL  "  required><span class="highlight"></span><span class="bar"></span>
                          <label>SEDOL </label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                   </div>
              </div>
              <div class="row setup-content" id="step-3">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="date" name="First_Coupon_Date "  required><span class="highlight"></span><span class="bar"></span>
                          <label>First Coupon Date</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Cap " required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Cap</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Floor " required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Floor</label>
                        </div>
                        <div class="group">
                          <input type="number" min ="0" name="Coupon_Frequency "  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Frequency</label>
                        </div>
                        <div class="group">
                          <input type="number" min ="0" name="Coupon_Rate"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Rate</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Coupon_Type "  required><span class="highlight"></span><span class="bar"></span>
                          <label>Coupon Type</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="Float_Spread "  required><span class="highlight"></span><span class="bar"></span>
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
                          <input type="date" name="Issue_Date "  required><span class="highlight"></span><span class="bar"></span>
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
                          <input type="text" name="Reset_frequency " required><span class="highlight"></span><span class="bar"></span>
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
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-4">
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="Macaulay_Duration"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Duration</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Volatility_30D " required><span class="highlight"></span><span class="bar"></span>
                          <label>Volatility 30D</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Volatility_90D" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volatility 90D</label>
                        </div>
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="number" min="0" name="Convexity"  required><span class="highlight"></span><span class="bar"></span>
                          <label>Convexity</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Average_Volume_30D" required><span class="highlight"></span><span class="bar"></span>
                          <label>Average Volume 30D</label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-5">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" name="PF_Asset_Class " required><span class="highlight"></span><span class="bar"></span>
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
                          <input type="text" name="PF_Liquidity_Profile " required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Liquidity Profile</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_Maturity" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Maturity</label>
                        </div>
                        <div class="group">
                          <input type="text" name="PF_NAICS_Code " required><span class="highlight"></span><span class="bar"></span>
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
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-6">
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Issuer " required><span class="highlight"></span><span class="bar"></span>
                          <label>Issuer</label>
                        </div>

                        <div class="group">
                          <input type="text" name="Issue_Currency " required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Currency</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Risk_Currency" required><span class="highlight"></span><span class="bar"></span>
                          <label>Risk Currency</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Sub_Group" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Sub Group</label>
                        </div>
                        
                        
                  </div>
                  <div class="col-xs-6">
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Group" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Group</label>
                        </div>
                        <div class="group">
                          <input type="text" name="Bloomberg_Industry_Sector" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Sector</label>
                        </div>
                         <div class="group">
                          <input type="text" name="Country_of_Issuance" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Sector</label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>


              <div class="row setup-content" id="step-7">
                  <div class="col-xs-12">
                        <div class="group">
                          <input type="date" name="Put_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Put Date</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Put_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Put Price</label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-8">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="number" min="0" name="Ask_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ask Price</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="High_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>High Price </label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Low_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Low Price</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="number" min="0" name="Open_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Open Price</label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="number" min="0"name="Volume" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volume</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Bid_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bid Price </label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="number" min="0" name="Last_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Price</label>
                        </div>
                        
                        <div class="group">
                         <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                        </div>
                  </div>
             </div>

             <div class="row setup-content" id="step-9">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="date" name="Call_Date" required><span class="highlight"></span><span class="bar"></span>
                          <label>Call Date</label>
                        </div>
                        <div class="group">
                          <input type="number" min="0" name="Call_Price" required><span class="highlight"></span><span class="bar"></span>
                          <label>Call Price </label>
                        </div>

                  </div>
                 <button type="button" onclick="sendBondDataToServer()" class="button buttonBlue">Submit Data
                <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
              </button>
             </div>

          </form>
          </div>
      </div>
</asp:Content>
