<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mission.aspx.cs" Inherits="OnTheWay.Mission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0px;
            border: 0px;
            padding: 0px;
            width: 100%;
        }



        #header li {
            position: relative;
            bottom: 20px;
            cursor: hand;
            display: inline;
            width: 75px;
            margin: 5px;
            text-align: center;
            vertical-align: center;
            padding: 20px;
            padding-bottom: 30px;
            font-size: 15px;
            font-family: 'Space Grotesk';
            color: #707070;
        }

        .Title-font {
            font-family: 'Space Grotesk';
            font-weight: 900;
            font-size: 42px;
            text-align: left;
            padding: 5px;
            color: #13227A;
        }

        .top-font {
            font-family: 'Space Grotesk';
            font-weight: 900;
            font-size: 30px;
            text-align: left;
            vertical-align: middle;
            margin-top: 4px;
            padding: 5px;
            color: #13227A;
        }

        .title-icon {
            align-items: left;
            position: relative;
            left: 10px;
            top: 5px;
            margin-bottom: 5px;
            padding: 5px;
            padding-right: 10px;
            height: 40px;
            width: 40px;
        }

        .row {
            font-family: 'Space Grotesk';
            font-size: 20px;
            text-align: left;
            padding: 0px;
            color: #707070;
            box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.1);
        }


        .user-icon {
            position: relative;
            left: 2px;
            margin: 5px;
            height: 50px;
            width: 50px;
            padding: 5px;
        }

        .name {
            font-family: 'Space Grotesk';
            font-size: 18px;
            text-align: center;
            padding: 5px;
            color: #707070;
        }


        .button_cancel {
            background-color: #707070;
            color: white;
            font-family: Space Grotesk;
            font-size: 20px;
            margin: 0 auto;
            margin-left: 3px;
            padding: 10px;
            text-align: center;
            vertical-align: center;
            width: 7em;
            height: 50px;
            border-radius: 5px;
            cursor: hand;
            border: none;
            outline: none;
        }

            .button_cancel:hover {
                background-color: #707070;
            }


        .button_complete {
            background-color: #13227A;
            color: white;
            font-family: Space Grotesk;
            font-size: 20px;
            margin: 0 auto;
            padding: 10px;
            text-align: center;
            vertical-align: center;
            width: 7em;
            height: 50px;
            border-radius: 5px;
            cursor: hand;
            border: none;
            outline: none;
        }

            .button_complete:hover {
                background-color: #707070;
            }
    </style>
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
    <div style="margin: 50px auto; width: 85%; box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.1);">
        <table width="100%" style="text-align: left" cellpadding="3px">
            <tr style="background-color: #F8F8F8;">
                <td style="display: inline-block; padding: 10px">
                    <img class="title-icon" src="./Photo/system_pending_line.png" />
                </td>

                <td style="display: inline-block; padding: 10px">
                    <div class="top-font">
                        Pending Missions
                    </div>
                </td>


            </tr>
        </table>


        <section>

            <asp:ListView ID="missionList" runat="server"
                DataKeyNames="MissionID" GroupItemCount="1"
                ItemType="OnTheWay.Models.Mission" SelectMethod="GetMission" OnSelectedIndexChanged="missionList_SelectedIndexChanged">
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
                                <table width="100%" style="text-align: left" cellpadding="5px">
                                    <tr class="row" width="100%">
                                        <td width="10%">

                                            <div class="name">
                                                Michael
		
                                            </div>
                                        </td>


                                        <td width="40%">Clean my room</td>

                                        <td width="10%" style="text-align: center;">Cleaning</td>

                                        <td width="10%" style="text-align: center;">19-11-2020</td>

                                        <td width="15%">
                                            <div>
                                                <asp:Button ID="CancelMisBtn" runat="server" class="button_cancel" Text="Cancel" OnClick="CancelMisBtn_Click" />
                                            </div>
                                        </td>

                                        <td width="15%">
                                            <div>
                                                <asp:Button ID="CompleteMisBtn" runat="server" class="button_complete" Text="Complete" OnClick="CompleteMisBtn_Click" />

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

        </section>
    </div>


    <div style="margin: 100px auto; width: 85%; box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.1);">
        <table width="100%" style="text-align: left" cellpadding="3px">
            <tr style="background-color: #F8F8F8;">
                <td style="display: inline-block; padding: 10px">
                    <img class="title-icon" src="./Photo/complete.png" />
                </td>

                <td style="display: inline-block; padding: 10px">
                    <div class="top-font">
                        Completed Missions
                    </div>
                </td>


            </tr>
        </table>
        <section>

            <asp:ListView ID="ListView2" runat="server"
                DataKeyNames="CompletedMissionID" GroupItemCount="1"
                ItemType="OnTheWay.Models.CompletedMission" SelectMethod="GetCompletedMission" OnSelectedIndexChanged="CompletedMissionList_SelectedIndexChanged">
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
                                <table width="100%" style="text-align: left" cellpadding="5px">
                                    <tr class="row" width="100%">
                                        <td width="10%">


                                            <div class="name">
                                                Erik
                                            </div>

                                        </td>


                                        <td width="40%">Buying music score</td>

                                        <td width="10%" style="text-align: center;">Errands</td>

                                        <td width="10%" style="text-align: center;">18-11-2020</td>

                                        <td width="15%"></td>

                                        <td width="15%"></td>
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

        </section>
    </div>

</asp:Content>
