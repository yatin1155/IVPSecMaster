<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientInsertMaster.master" AutoEventWireup="true" CodeFile="ClientInsert.aspx.cs" Inherits="ClientWebPages_ClientInsert" %>

<%-- Add content controls here --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderInsert" Runat="Server">
 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <!-- Header Container -->
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title  of Header -->
      <span class="mdl-layout-title">IVP Sec Master</span>
    </div>
    <!-- Tab Bar Container , and Tab links -->
    
  </header>
    <!-- MDL Layout Header -->
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">IVP Sec Master</span>
    <nav class="mdl-navigation">
        <a class="mdl-navigation__link" href="#">Profile</a>
        <a class="mdl-navigation__link" href="#">Logout</a>
        <!--<a class="mdl-navigation__link" href="#">Contact</a>-->
      </nav>

  </div>
           <div class="container">
          <div class="stepwizard">
              <div class="stepwizard-row setup-panel">
                  <div class="stepwizard-step">
                      <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                      <p>Security Identifier</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                      <p>Security Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                      <p>Risk</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">4</a>
                      <p>Regulatory Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">5</a>
                      <p>Reference Data</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">6</a>
                      <p>Pricing Data</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">7</a>
                      <p>Pricing Details</p>
                  </div>
                  <div class="stepwizard-step">
                      <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">8</a>
                      <p>Divident History</p>
                  </div>
              </div>
          </div>
          <form role="form" style="margin-top: 30px">
              <div class="row setup-content" id="step-1">
                  <div class="col-xs-6">
                       <!--Insert 1st half text box here -->
                  </div>
                  <div class="col-xs-6">
                          <!--Insert 2st half text box here -->
                  </div>
              </div>
              <div class="row setup-content" id="step-2">
                  <div class="col-xs-12">
                      <div class="col-md-12">
                          <h3> Step 2</h3>
                         <div class="col-xs-6">
                       <!--Insert 1st half text box here -->
                  </div>
                  <div class="col-xs-6">
                          <!--Insert 2st half text box here -->
                  </div>
                          <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Next</button>
                      </div>
                  </div>
              </div>
              <div class="row setup-content" id="step-3">
                  <div class="col-xs-12">
                      <div class="col-md-12">
                          <h3> Step 3</h3>
                          <button class="btn btn-success btn-lg pull-right" type="submit">Finish!</button>
                      </div>
                  </div>
              </div>
          </form>
          </div>
</asp:Content>
