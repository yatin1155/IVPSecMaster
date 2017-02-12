<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ClientWithoutTabs.master" AutoEventWireup="true" CodeFile="ClientSecuritiesDashboard.aspx.cs" Inherits="ClientWebPages_ClientSecuritiesDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderInsert" Runat="Server">

<script>


    $(document).ready(function () {
        $('#datatables tbody').on('click', 'tr', function () {
            var bid = this.id; // button ID 
            var trid = $(this).closest('tr').attr('id'); // table row ID 
           window.location = "http://localhost:50243/SecMaster/ClientWebPages/ClientSingleSecurity.aspx";
            alert('You clicked on ' + trid);
        });
        loadData("equity");

    });
</script>
 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
    <!-- Header Container -->
  <div class="container" style="margin-top:100px">
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
                    <th> <span data-bind="text: $data"></span></th>
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

