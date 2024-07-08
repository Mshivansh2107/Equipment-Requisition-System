<%@ Page Title="Approver's View" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ApproverView.aspx.cs" Inherits="EquipmentRequisitionSystem.ApproverView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Approval Form</h2>
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
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</asp:Content>
