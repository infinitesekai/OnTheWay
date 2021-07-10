<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cleaning.aspx.cs" Inherits="OnTheWay.Cleaning" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header>
        
    </header>


    <section>
        <div>
            <div class="printingWhole">
                <table width="100%">
                    <tr>
                        <td width="0.5%">
                            <img class="printing" src="./images/vacuumCleaner.png" />
                        </td>
                        <td class="titleMain" width="98.5%">Cleaning
                        </td>
                    </tr>
                </table>
            </div>
            <div class="centerBtn">
                <asp:Button ID="btnShow" runat="server" CssClass="buttonMiddle middle"
                    Text="Want to request some help?"/>

                <%--<asp:Button ID="btnShow" runat="server" Text="Show Modal Popup" />--%>
            </div>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Panel ID="RequestPop" runat="server" align="center" CssClass="modalPopup">
                <%--<iframe style="width: 600px; height: 410px;" frameborder="0" id="irm1" src="RequestPopUp.aspx" runat="server"></iframe>--%>
                <!--the request-->
                <div id="myRequest" class="requestPrinting">
                    <!--the request content-->
                    <div class="requestContent">
                        <div class="requestHeader">
                            Request for Help
                        </div>
                        <div class="requestBody">

                            <table width="100%">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtTitle" name="titlePrinting" class="titleInput" runat="server"
                                            placeholder="Title/Subject:"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtContent" name="descriptionInput" class="desInput" runat="server" Rows="8"
                                            placeholder="Describe your request:"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="Button2" runat="server" class="buttonCancel" 
                                Text="Close" />
                            <asp:Button ID="SubmitBtn" runat="server" class="buttonSubmit"
                                Text="Submit" OnClick="SubmitBtn_Click" />
                            
                        </div>
                    </div>
                </div>
                <br />

            </asp:Panel>
            <!-- ModalPopupExtender -->
            <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="RequestPop" TargetControlID="btnShow"
                CancelControlID="Button2" BackgroundCssClass="modalBackround">
            </cc1:ModalPopupExtender>


            <asp:ListView ID="CleaningList" runat="server" GroupItemCount="3"
                Style="margin-right: 0px" OnItemCommand="CleaningList_ItemCommand" DataKeyNames="post_id">
                <EmptyDataTemplate>
                    <table>
                        <tr style="text-align:center;">
                            <td class="name" >No data was returned.</td>
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
                                                   <b><%#Eval("poster_uname") %></b>
                                                </div>
                                                <div class="title">
                                                    <%#Eval("title") %>
                                                </div>
                                                <div class="description">
                                                    <%#Eval("content")%>
                                                </div>
                                                <asp:Button ID="HelpBtn" runat="server" class="button" Text="Help" CommandName="help" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "post_id") %>' />
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
                                        <tr id="groupPlaceholder">
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
            <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Post]"></asp:SqlDataSource>--%>
        </div>
    </section>
    <script src="./JS/PrintingService.js"></script>
</asp:Content>
