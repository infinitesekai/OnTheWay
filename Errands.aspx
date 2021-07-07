<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Errands.aspx.cs" Inherits="OnTheWay.Errands" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<section>
<div>
<div class="printingWhole">
<table width="100%">
<tr>
<td width="0.5%">
<img class="printing" src="./images/running-solid.png" />
</td>
<td class="titleMain" width="98.5%">Errands
</td>
</tr>
</table>
</div>
<div style="margin: 0 auto;">
<div class="middle">
<table width="100%">
<tr>
<td width="70%">
<asp:Button ID="RequestBtn" runat="server" class="buttonMiddle"
Text="Want to request some help?" OnClick="UpdateBtn_Click" />
<!--the request-->
<div id="myRequest" class="requestPrinting">
<!--the request content-->
<div class="requestContent">
<div class="requestHeader">
<span class="close">&times;</span>
Request for Help
</div>
</div>
</div>
</td>
</tr>
</table>S
</div>
</div>

 <asp:ListView ID="requestList" runat="server"
DataKeyNames="RequestID" GroupItemCount="3"
ItemType="OnTheWay.Models.Request" SelectMethod="GetRequest" OnSelectedIndexChanged="requestList_SelectedIndexChanged">
<EmptyDataTemplate>
<table>
<tr>
<td>No data was returned.</td>
</tr>
</table>
</EmptyDataTemplate>
<EmptyItemTemplate>
<td />
</EmptyItemTemplate>
<GroupTemplate>
<tr id="itemPlaceholderContainer" runat="server">
<td id="itemPlaceholder" runat="server"></td>
</tr>
</GroupTemplate>
<ItemTemplate>
<td runat="server">
<div class="requestBg">
<div>
<table class="tableStyle" cellpadding="55px">
<tr>
<td class="table">
<div class="request">
<div class="name">
<b>Emily</b>
</div>
<div class="title">
Title: Printing
</div>
<div class="description">
Urgent! Need somebody help me print notes. Thanks!
</div>
<asp:Button ID="HelpBtn" runat="server" class="button" Text="Help" OnClick="UpdateBtn_Click" />
</div>
</td>
</tr>
</table>
</div>
</div>
</td>
</ItemTemplate>
<LayoutTemplate>
<table style="width: 100%;">
<tbody>
<tr>
<td>
<table id="groupPlaceholderContainer" runat="server" style="width: 100%">
<tr id="groupPlaceholder"></tr>
</table>
</td>
</tr>
<tr>
<td></td>
</tr>
<tr></tr>
</tbody>
</table>
</LayoutTemplate>
</asp:ListView>
</div>
</section>
</asp:Content>