<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientMaster.master" AutoEventWireup="true" CodeFile="ClientSingleSecurity.aspx.cs" Inherits="ClientWebPages_ClientDashboard" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <link href="../Styles/material-form.css" rel="stylesheet" type="text/css" />
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <!-- Header Container -->
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title  of Header -->
      <span class="mdl-layout-title">IVP Sec Master (Equity)</span>
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
        <a class="mdl-navigation__link" href="#">Equity</a>
        <a class="mdl-navigation__link" href="#">Bond</a>
        <a class="mdl-navigation__link" href="#">Profile</a>
        <a class="mdl-navigation__link" href="#">Logout</a>
    </nav>
  </div>
      
  <main class="mdl-layout__content">

    <!-- "is-active" class to set the default active tab -->
    <section class="mdl-layout__tab-panel is-active" id="scroll-tab-1">
      <div class="page-content">
        <h1 runat="server" id="result">Security Summary</h1>
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
    </section>

     <!-- Tab No 2-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-2">
      <div class="page-content">
         <h1>Security Identifier</h1>
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
    </section>
    
    <!-- Tab No 3-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-2">
      <div class="page-content">
         <h1>Security Details</h1>
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
    </section>
    
    <!-- Tab No 4-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-3">
      <div class="page-content">
       <h1>Risk</h1>
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
    </section>
    
    <!-- Tab No 5-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-4">
      <div class="page-content">
         <h1>Regulatory Details</h1>
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
    </section>
    
    <!-- Tab No 6-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-5">
      <div class="page-content">
       <h1>Reference Data</h1>
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
    </section>
    
    <!-- Tab No 7-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-6">
      <div class="page-content">
         <h1>Pricing Details</h1>
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
    </section>

    <!-- Tab No 8-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-7">
      <div class="page-content">
         <h1>Dividend History</h1>
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
    </section>
    
  </main>
</asp:Content>

