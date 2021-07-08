<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Printing.aspx.cs" Inherits="OnTheWay.Printing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                
    
    <asp:ListView ID="requestList" runat="server" GroupItemCount="3"
                DataKeyNames="RequestID" 
                ItemType="OnTheWay.Models.Request" SelectMethod="GetRequest" OnSelectedIndexChanged="requestList_SelectedIndexChanged" Style="margin-right: 0px">
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
                                <table class="tableStyle">
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
                    <table style="margin: auto;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>

</asp:Content>
