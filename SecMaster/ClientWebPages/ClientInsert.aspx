<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientWithoutTabs.master" AutoEventWireup="true" CodeFile="ClientInsert.aspx.cs" Inherits="ClientWebPages_ClientInsert" %>

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
          <form role="form" style="margin-top: 30px; background-color: #fafafa;padding: 40px;" >
              <div class="row setup-content" id="step-1">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Name</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Security Description </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Has Position </label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Is Active  </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Round Lot Size</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique Name</label>
                        </div>
                  </div>
                  </div>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                  </div>
              </div>
              <div class="row setup-content" id="step-2">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>CUSIP</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>ISIN </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>SEDOL</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Unique ID </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Global ID </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Ticker andExchange</label>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-3">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Is ADR</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>ADR Underlying Ticker</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>ADR Underlying Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Shares Per ADR</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>IPO Date</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Price Currency </label>
                        </div>
                  </div>

                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Settle Days</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Shares Outstanding </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Voting Rights Per Share</label>
                        </div>
                  </div>
              </div>

              <div class="row setup-content" id="step-4">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>20 Day Average Volume</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Beta</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Short Interest</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>YTD Return</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>90 Day Price Volatility</label>
                        </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-5">
                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Asset Class </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Country</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Credit Rating</label>
                        </div>

                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Instrument</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Liquidity Profile</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Maturity</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF NAICS Code </label>
                        </div>

                  </div>

                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Region</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sector</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Form PF Sub Asset Class </label>
                        </div>

                  </div>
              </div>

              <div class="row setup-content" id="step-6">
                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Country</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Exchange</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issuer</label>
                        </div>

                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Issue Currency</label>
                        </div>
                  </div>
                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Trading Currency</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Sub Group</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Group</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bloomberg Industry Sector</label>
                        </div>

                  </div>

                  <div class="col-xs-3">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Country of Incorporation</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Risk Currency</label>
                        </div>

                  </div>
              </div>


              <div class="row setup-content" id="step-7">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Open Price</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Close Price</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Volume</label>
                        </div>
                        
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>PE Ratio</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Last Price </label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ask Price</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Bid Price</label>
                        </div>

                  </div>
              </div>

              <div class="row setup-content" id="step-8">
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Declared Date</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Ex Date </label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Record Date</label>
                        </div>
                        
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Pay Date</label>
                        </div>
                  </div>
                  <div class="col-xs-4">
                        <div class="group">
                          <input type="text" required><span class="highlight"></span><span class="bar"></span>
                          <label>Amount </label>
                          <label></label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Frequency</label>
                        </div>
                        <div class="group">
                          <input type="email" required><span class="highlight"></span><span class="bar"></span>
                          <label>Dividend Type </label>
                        </div>

                  </div>
                  
              </div>
          </form>
          </div>
      </div>
</asp:Content>
