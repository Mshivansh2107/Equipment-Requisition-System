<%@ Page Title="Workshop Personnel's View" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="WorkshopPersonnelView.aspx.cs" Inherits="EquipmentRequisitionSystem.WorkshopPersonnelView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Workshop Action Form</h2>
    <form>
        <div class="form-group">
            <label for="remarks">Remarks</label>
            <input type="text" class="form-control" id="remarks" runat="server" maxlength="100" />
        </div>
        <div class="form-group">
            <label for="action">Action</label>
            <select class="form-control" id="action" runat="server">
                <option value="Approved">Approved</option>
                <option value="Rejected">Rejected</option>
                <option value="Forwarded">Forwarded</option>
            </select>
        </div>
        <div class="form-group">
            <label for="allotedFor">Allotted For</label>
            <input type="datetime-local" class="form-control" id="allotedFor" runat="server" />
        </div>
        <div class="form-group">
            <label for="approverName">Name of Approver</label>
            <input type="text" class="form-control" id="approverName" runat="server" />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</asp:Content>
