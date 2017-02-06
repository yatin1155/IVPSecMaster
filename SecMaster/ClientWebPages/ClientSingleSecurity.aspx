<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientMaster.master" AutoEventWireup="true" CodeFile="ClientSingleSecurity.aspx.cs" Inherits="ClientWebPages_ClientDashboard" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <!-- Header Container -->
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title  of Header -->
      <span class="mdl-layout-title">IVP Sec Master  (Equity)</span>
    </div>
    <!-- Tab Bar Container , and Tab links -->
    <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
      <a href="#scroll-tab-1" class="mdl-layout__tab is-active">Security Identifier</a>
      <a href="#scroll-tab-2" class="mdl-layout__tab">Security Details</a>
      <a href="#scroll-tab-3" class="mdl-layout__tab">Risk</a>
      <a href="#scroll-tab-4" class="mdl-layout__tab">Rgulatory Details</a>
      <a href="#scroll-tab-5" class="mdl-layout__tab">Reference Data</a>
      <a href="#scroll-tab-6" class="mdl-layout__tab">Pricing Details</a>
      <a href="#wizard-view" class="mdl-layout__tab">Divident History</a>
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
        <!--<a class="mdl-navigation__link" href="#">Contact</a>-->
      </nav>

  </div>
      
  <main class="mdl-layout__content">

    <!-- "is-active" class to set the default active tab -->
    <section class="mdl-layout__tab-panel is-active" id="scroll-tab-1">
      <div class="page-content">
        <h1 runat="server" id="result">Security Identifier</h1>
        
      </div>
    </section>
    
    <!-- Tab No 2-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-2">
      <div class="page-content">
         <h1>Security Details</h1>
      </div>
    </section>
    
    <!-- Tab No 3-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-3">
      <div class="page-content">
       <h1>Risk</h1>
      </div>
    </section>
    
    <!-- Tab No 4-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-4">
      <div class="page-content">
         <h1>Regulatory Details</h1>
      </div>
    </section>
    
    <!-- Tab No 5-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-5">
      <div class="page-content">
       <h1>Reference Data</h1>
      </div>
    </section>
    
    <!-- Tab No 6-->
    <section class="mdl-layout__tab-panel" id="scroll-tab-6">
      <div class="page-content">
         <h1>Pricing Details</h1>
      </div>
    </section>

    <section class="mdl-layout__tab-panel" id="scroll-tab-7">
      <div class="page-content">
         <h1 >Divident</h1>
      </div>
    </section>
    
  </main>
</asp:Content>

