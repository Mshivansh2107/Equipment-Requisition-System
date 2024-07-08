<%@ Page Title="Requisitioner's View" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="RequisitionerView.aspx.cs" Inherits="EquipmentRequisitionSystem.RequisitionerView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Requisition Form</h2>
    <form>
        <div class="form-group">
            <label for="equipment">Equipment Required</label>
            <select class="form-control" id="equipment" runat="server">
                <option>Equipment 1</option>
                <option>Equipment 2</option>
                <!-- Add more equipment options here -->
            </select>
        </div>
        <div class="form-group">
            <label for="workOrderNumber">Work Order Number</label>
            <input type="text" class="form-control" id="workOrderNumber" runat="server" maxlength="10" />
        </div>
        <div class="form-group">
            <label for="jobDescription">Job Description</label>
            <input type="text" class="form-control" id="jobDescription" runat="server" maxlength="100" />
        </div>
        <div class="form-group">
            <label for="startDate">Date and Time of Start</label>
            <input type="datetime-local" class="form-control" id="startDate" runat="server" />
        </div>
        <div class="form-group">
            <label for="duration">Duration of Job (hours)</label>
            <input type="number" class="form-control" id="duration" runat="server" />
        </div>
        <div class="form-group">
            <label for="plant">Plant</label>
            <select class="form-control" id="plant" runat="server">
                <option>Plant 1</option>
                <option>Plant 2</option>
                <!-- Add more plant options here -->
            </select>
        </div>
        <div class="form-group">
            <label for="jobLocation">Job Location</label>
            <input type="text" class="form-control" id="jobLocation" runat="server" maxlength="100" />
        </div>
        <div class="form-group">
            <label for="maxLiftingHeightMT">Max. Lifting Height (MT)</label>
            <input type="number" class="form-control" id="maxLiftingHeightMT" runat="server" />
        </div>
        <div class="form-group">
            <label for="maxLiftingHeightMTR">Max. Lifting Height (MTR)</label>
            <input type="number" class="form-control" id="maxLiftingHeightMTR" runat="server" />
        </div>
        <div class="form-group">
            <label for="allotmentBasis">Allotment Basis</label>
            <select class="form-control" id="allotmentBasis" runat="server">
                <option value="Free">Free</option>
                <option value="Chargeable">Chargeable</option>
            </select>
        </div>
        <div class="form-group">
            <label for="customerCode">Customer Code</label>
            <input type="text" class="form-control" id="customerCode" runat="server" maxlength="10" />
        </div>
        <div class="form-group">
            <label for="criticalLift">Is this a Critical Lift?</label>
            <select class="form-control" id="criticalLift" runat="server">
                <option value="Yes">Yes</option>
                <option value="No">No</option>
            </select>
        </div>
        <div class="form-group">
            <label for="liftPlan">Attach Lift Plan</label>
            <input type="file" class="form-control" id="liftPlan" runat="server" />
        </div>
        <div class="form-group">
            <label for="contactDetails">Contact Details</label>
            <input type="text" class="form-control" id="contactDetails" runat="server" />
        </div>
        <div class="form-group">
            <label for="contractorName">Name of Contractor</label>
            <input type="text" class="form-control" id="contractorName" runat="server" />
        </div>
        <div class="form-group">
            <label for="approverName">Name of Approver</label>
            <input type="text" class="form-control" id="approverName" runat="server" />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</asp:Content>
