﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientWithoutTabs.master" AutoEventWireup="true" CodeFile="ClientSecuritiesDashboard.aspx.cs" Inherits="ClientWebPages_ClientSecuritiesDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderInsert" Runat="Server">

 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <!-- Header Container -->
  <div class="container">
       <%--  <table>
        <tbody data-bind="foreach: rows">
            <tr>
                <td data-bind="text: Bond_Id"></td>
                <td class="hide-mobile txt-right" data-bind="text: Security_Description"></td>
                <td class="txt-right" data-bind="text: Security_Name"></td>
            </tr>
        </tbody>
        </table>--%>



        <div class="table-responsive">
        <table style="margin-top:120px" id="datatables" class="table table-striped table-bordered">
            <thead>
                <tr data-bind="foreach: columnNames">
                    <th> <span data-bind="text: $data"></span>

                    </th>
                </tr>
            </thead>
            <tbody data-bind="foreach: items">
                <tr data-bind="foreach: $parent.columnNames">
                    <td data-bind="text: $parent[$data]"></td>
                </tr>
            </tbody>
        </table>
        </div>
  </div>
</asp:Content>
