<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mission.aspx.cs" Inherits="OnTheWay.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin: 10px;">
        <table cellpadding="3px">
            <tr>
                <td>
                    <img src="images/task.png" style="position: relative; left: 50px; height: 80px; width: 80px; padding-top: 10px; padding-left: 20px;" />
                </td>

                <td class="Title-font" style="padding-top: 15px; padding-left: 70px;">Missions
                </td>
            </tr>
        </table>
    </div>

    <section>

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
