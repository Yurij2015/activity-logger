﻿<%@ Page Title="Activity Log" Language="C#" MasterPageFile="~/activitylogger.Master" AutoEventWireup="true" CodeBehind="activitylog.aspx.cs" Inherits="ActivityLogger.admin.activitylog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>My Activities</h2>    
    <asp:GridView ID="grdActivities" runat="server" CssClass="table table-striped" EmptyDataText="No Activities To Show :("
        AutoGenerateColumns="false" OnRowDeleting="grdActivities_RowDeleting" DataKeyNames="id" ShowHeaderWhenEmpty="true">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Activity ID" Visible="false" />
            <asp:BoundField DataField="activity_name" HeaderText="Activity" />
            <asp:BoundField DataField="duration" HeaderText="Duration" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="~/activity-manage.aspx" Text="Edit"
                DataNavigateUrlFields="id" DataNavigateUrlFormatString="activity-manage.aspx?ActivityID={0}" />
            <asp:CommandField HeaderText="Delete" DeleteText="Delete" ShowDeleteButton="true" />
        </Columns>
    </asp:GridView>
    <div class="col-lg-6">
        
    </div>
    <div class="col-lg-6">
        <a href="activity-manage.aspx" class="btn btn-success large large-full">Record Activity</a>
    </div>
</asp:Content>
