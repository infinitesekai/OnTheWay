<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Errands.aspx.cs" Inherits="OnTheWay.Errands" %>
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
                            <img class="printing" src="./images/running-solid.png" />
                        </td>
                        <td class="titleMain" width="98.5%">Errands
                        </td>
                    </tr>
                </table>
            </div>
            <div style="margin: auto;">
                <div class="middle">
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Button ID="btnShow" runat="server" class="buttonMiddle"
                                    Text="Want to request some help?" OnClick="UpdateBtn_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <%--<asp:Button ID="btnShow" runat="server" Text="Show Modal Popup" />--%>
                            
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
 
<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="RequestPop" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>


                              
                                <asp:Panel ID="RequestPop" runat="server">
                                    <!--the request-->
                                    <div id="myRequest" class="requestPrinting">
              <!--the request content-->
              <div class="requestContent">
                <div class="requestHeader">
                  <span id=" cancelbtn" class="close">&times;</span>
                  Request for Help
                </div>
                <div class="requestBody">
                  <table>
                    <tr>
                      <td class="requester">
                        Sarah
                      </td>
                    </tr>
                  </table>
                  <table>
                    <tr>
                        <td>
                    <asp:TextBox ID="TextBox1" name="titlePrinting" class="titleInput"  runat="server"
                                placeholder="Title/Subject:"></asp:TextBox>
                        </td>
                            </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox2" name="descriptionInput" class="desInput" runat="server" Rows="8"
                                placeholder="Describe your request:" ></asp:TextBox>
                    </td>
                            </tr>
                    <tr>
<td>
                 <asp:Button ID="SubmitBtn" runat="server" class="buttonSubmit"
                     Text="Submit" OnClick="UpdateBtn_Click" />
     </td>                
    </tr>
                      
                  
                          </table>
                </div>
              </div>
            </div>
                                </asp:Panel>
                                <!-- ModalPopupExtender -->
            </div>

            

            <asp:ListView ID="requestList" runat="server"
                DataKeyNames="RequestID" GroupItemCount="3"
                ItemType="OnTheWay.Models.Request" SelectMethod="GetRequest" OnSelectedIndexChanged="requestList_SelectedIndexChanged" style="margin-right: 0px">
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
                    <table style="margin:auto;">
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
        </div>
    </section>
    <script src="./JS/PrintingService.js"></script>
</asp:Content>
