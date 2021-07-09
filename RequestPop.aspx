<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestPop.aspx.cs" Inherits="OnTheWay.RequestPop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="styleSheet" href="./CSS/printing.css"/>
    <link rel="styleSheet" href="./CSS/style.css"/>
    <link rel="styleSheet" href="./CSS/dropdown.css"/>
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
        <!--the request-->
                    <div id="myRequest" class="requestPrinting">
                        <!--the request content-->
                        <div class="requestContent">
                            <div class="requestHeader">
                                Request for Help
                            </div>
                            <div class="requestBody">
                                <table>
                                    <tr>
                                        <td class="requester">
                                        </td>
                                    </tr>
                                </table>
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
                                <asp:Button ID="SubmitBtn" runat="server" class="buttonSubmit"
                    Text="Submit" OnClick="SubmitBtn_Click" />
                            </div>
                        </div>
                    </div>
    </form>
</body>
</html>
