<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OnTheWay.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        body {
            margin: 0px;
            border: 0px;
            padding: 0px;
            width: 100%;
            background-color: #F8F8F8;
            ;
        }



        #header li {
            position: relative;
            bottom: 20px;
            cursor: hand;
            display: inline;
            width: 70px;
            margin: 10px;
            text-align: center;
            vertical-align: center;
            padding: 25px;
            padding-bottom: 10px;
            font-size: 15px;
            font-family: 'Space Grotesk';
            color: #707070;
        }

        .Title-font {
            font-family: 'Space Grotesk';
            font-weight: 900;
            font-size: 42px;
            text-align: center;
            padding: 5px;
            color: #13227A;
        }

        .Services_box {
            width: 167px;
            height: 167px;
            box-shadow: 0px 4px 5px #888888;
            border-radius: 5px;
            cursor: hand;
            background-color: white;
        }

        .Services_font {
            color: #707070;
            text-align: center;
            font-size: 15px;
            font-family: 'Space Grotesk'
        }

        .Services_box:hover {
            background-color: #DDDDDD;
        }

        .fas:hover {
            transform: rotate(-15deg) scale(1.3);
        }

        .header_desc {
            width: 80%;
            position: relative;
            margin: 0;
            padding: 0px;
        }

        .header_stable {
            margin: 0;
            text-align: left;
            text-shadow: 1px 1px 1px rgba(255,255,255,0.8);
        }

            .header_stable span {
                color: #444;
                white-space: nowrap;
                font-size: 25px;
                font-weight: normal;
            }

        .word_animate {
            display: inline;
            text-indent: 10px;
        }

            .word_animate span {
                position: absolute;
                opacity: 0;
                overflow: hidden;
                color: #ccc;
            }

        .word_animate1 span {
            animation: animation1 15s linear infinite 0s;
        }

        .word_animate2 span {
            animation: animation2 15s linear infinite 0s;
        }

        .word_animate span:nth-child(2) {
            animation-delay: 3s;
            color: #647d8f;
        }

        .word_animate span:nth-child(3) {
            animation-delay: 6s;
            color: #545974;
        }

        .word_animate span:nth-child(4) {
            animation-delay: 9s;
            color: #7a6b9d;
        }

        .word_animate span:nth-child(5) {
            animation-delay: 12s;
            color: #8d6b9d;
        }

        .word_animate span:nth-child(6) {
            animation-delay: 15s;
            color: #9b6b9d;
        }

        @keyframes animation1 {
            0% {
                opacity: 1;
                animation-timing-function: ease-in;
                height: 0px;
            }

            8% {
                opacity: 1;
                height: 60px;
            }

            19% {
                opacity: 1;
                height: 60px;
            }

            25% {
                opacity: 0;
                height: 60px;
            }

            100% {
                opacity: 0;
            }
        }

        @keyframes animation2 {
            0% {
                opacity: 1;
                animation-timing-function: ease-in;
                width: 0px;
            }

            10% {
                opacity: 0.3;
                width: 0px;
            }

            20% {
                opacity: 1;
                width: 100%;
            }

            27% {
                opacity: 0;
                width: 100%;
            }

            100% {
                opacity: 0;
            }
        }
        /*number animation*/

        .num_animate {
            display: inline;
            text-indent: 10px;
        }

            .num_animate span {
                position: absolute;
                opacity: 0;
                overflow: hidden;
                color: #ccc;
            }

        .num_animate1 span {
            animation: num_animation1 10s linear infinite 0s;
        }

        .num_animate span:nth-child(2) {
            animation-delay: 1s;
            color: #789799;
        }

        .num_animate span:nth-child(3) {
            animation-delay: 2s;
            color: #789799;
        }

        .num_animate span:nth-child(4) {
            animation-delay: 3s;
            color: #6c8c8e;
        }

        .num_animate span:nth-child(5) {
            animation-delay: 4s;
            color: #6c8c8e;
        }

        .num_animate span:nth-child(6) {
            animation-delay: 5s;
            color: #658486;
        }

        .num_animate span:nth-child(7) {
            animation-delay: 6s;
            color: #658486;
        }

        .num_animate span:nth-child(8) {
            animation-delay: 7s;
            color: #617f80;
        }

        .num_animate span:nth-child(9) {
            animation-delay: 8s;
            color: #617f80;
        }

        .num_animate span:nth-child(10) {
            animation-delay: 9s;
            color: #5d787a;
        }


        @keyframes num_animation1 {
            0% {
                opacity: 1;
                animation-timing-function: ease-in;
                height: 0px;
            }

            10% {
                opacity: 0;
                height: 60px;
            }

            20% {
                opacity: 0;
                height: 60px;
            }

            30% {
                opacity: 0;
                height: 60px;
            }

            40% {
                opacity: 0;
                height: 60px;
            }

            50% {
                opacity: 0;
                height: 60px;
            }

            60% {
                opacity: 0;
                height: 60px;
            }

            70% {
                opacity: 0;
                height: 60px;
            }

            80% {
                opacity: 0;
                height: 60px;
            }

            90% {
                opacity: 0;
                height: 60px;
            }

            100% {
                opacity: 0;
            }
        }
    </style>
    <div
        style="width: 100%; position: relative; top: 1.5px; padding-right: 30px; height: 350px; background-color: white; box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
        <table width="100%">
            <tr>
                <td width="fit-content">
                    <table width="100%">
                        <tr>
                            <td
                                style="font-weight: 900; text-align: left; font-size: 32px; padding-top: 10px; padding-left: 50px; font-family: 'Space Grotesk'; color: #13227A">Dear all,
              Your personal assistance is here!<br>
                                On The Way
                                <div class="num_animate num_animate1" style="display: inline">
                                    <span><b>1</b></span>
                                    <span><b>10</b></span>
                                    <span><b>20</b></span>
                                    <span><b>21</b></span>
                                    <span><b>22</b></span>
                                    <span><b>23</b></span>
                                    <span><b>24</b></span>
                                </div>
                                <div style="transform: translateX(70%); display: inline-block;">hours </div>

                            </td>
                        </tr>

                        <tr>
                            <td
                                style="text-align: left; font-size: 20px; padding-left: 50px; font-family: 'Space Grotesk'; color: #707070">On The Way is an assistance provider platform for all residents<br>
                                We aim to connect on-campus students who need assistance and those students who are willing to help.<br>
                                <section class="header_desc">
                                    <h2 class="header_stable">
                                        <span>If you are </span>

                                        <div class="word_animate word_animate1">
                                            <span>in need, </span>
                                            <span>lovely, </span>
                                            <span>bored, </span>
                                            <span>lazy, </span>
                                            <span>gloomy, </span>
                                        </div>
                                        <br />
                                        <div class="word_animate word_animate2">
                                            <span>post your <b>requests </b>here!<br>
                                            </span>
                                            <span>show your <b>love</b> here!<br>
                                            </span>
                                            <span>kindly lend your <b>helping hand</b> here!<br>
                                            </span>
                                            <span>find your <b>guardian</b> here!<br>
                                            </span>
                                            <span>seek your <b>companion</b> here!<br>
                                            </span>
                                        </div>
                                    </h2>
                                </section>

                            </td>
                        </tr>
                    </table>
                </td>

                <td width="35%">
                    <img src="./images/Welcome.gif"
                        style="position: relative; left: 80px; padding-right: 15px; width: 300px; height: 300px" />
                </td>

        </table>
    </div>

    <div
        style="background-color: white; margin: 0 auto; margin-right: 0px; box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1); height: 350px; text-align: center;">
        <div class="Title-font" style="padding-top: 25px; margin: 0px auto; display: inline-block; text-align: center;">
            <b>Services</b>
        </div>

        <div style="margin: 5px auto; width: 45%; text-align: center; padding: 10px;">
            <table width="100%" cellpadding="30px">
                <tr>
                    <td width="25%">
                        <a runat="server" href="~/Cleaning.aspx" style="text-decoration: none;">
                            <div class="Services_box">
                                <div style="margin: 10px auto; text-align: center; padding: 5px;">
                                    <img src="images/vacuumCleaner.png" style="height: 90px; width: 90px;">
                                </div>

                                <div class="Services_font">
                                    Cleaning
                                </div>
                            </div>
                        </a>
                    </td>

                    <td width="25%">
                        <a runat="server" href="~/Printing.aspx" style="text-decoration: none;">
                            <div class="Services_box">
                                <div style="margin: 10px auto; text-align: center; padding: 5px;">
                                    <img src="images/print.png" style="height: 90px; width: 90px;">
                                </div>

                                <div class="Services_font">
                                    Printing
                                </div>
                            </div>
                        </a>
                    </td>

                    <td width="25%">
                        <a runat="server" href="~/Errands.aspx">
                            <div class="Services_box">
                                <div style="margin: 10px auto; text-align: center; padding: 5px;">
                                    <img src="images/running-solid.png" style="height: 90px; width: 90px;">
                                </div>

                                <div class="Services_font">
                                    Errands
                                </div>
                            </div>
                        </a>
                    </td>

                </tr>
            </table>
        </div>
    </div>

    <div
        style="background-color: white; margin: 0 auto; margin-right: 0px; box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1); top: 1.5px; height: auto; text-align: center;">
        <div class="Title-font" style="padding-top: 25px; margin: 0px auto; display: inline-block; text-align: center;">
            <b>Latest Requests</b>
        </div>
        <section>
            <asp:ListView ID="LatestRequestList" runat="server" GroupItemCount="3"
                Style="margin-right: 0px" OnItemCommand="LatestRequestList_ItemCommand" DataKeyNames="post_id">
                <EmptyDataTemplate>
                    <table>
                        <tr style="text-align: center;">
                            <td class="name">No data was returned.</td>
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
                                                <div style="text-align: center;">
                                                    <asp:Button ID="HelpBtn" runat="server" class="button_home" Text="Help" CommandName="help" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "post_id") %>' />
                                                </div>
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
        </section>
    </div>

</asp:Content>
