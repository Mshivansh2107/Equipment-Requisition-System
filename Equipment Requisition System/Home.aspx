<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Equipment_Requisition_System.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h2>Welcome to the Equipment Requisition System</h2>
                <p>Please choose an option below to proceed:</p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col-md-4">
                <a href="RequisitionerView.aspx" class="btn btn-primary">
                    <i class="fas fa-clipboard-list"></i> Requisitioner's View
                </a>
            </div>
            <div class="col-md-4">
                <a href="ApproverView.aspx" class="btn btn-success">
                    <i class="fas fa-check-circle"></i> Approver's View
                </a>
            </div>
            <div class="col-md-4">
                <a href="WorkshopPersonnelView.aspx" class="btn btn-info">
                    <i class="fas fa-tools"></i> Workshop Personnel's View
                </a>
            </div>
        </div>
    </div>
</asp:Content>
