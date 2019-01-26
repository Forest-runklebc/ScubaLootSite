<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Info.aspx.cs" Inherits="WebApplication5.Info" %>





<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


        <table style="display:block;">
            <tr>
                <td style="padding: 0">
                <asp:gridview ID="tankWarriorGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="tankWarriorGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Tank"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>

                </asp:gridview>
                </td>

                <td style="padding: 0">
                <asp:gridview ID="dpsWarriorGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="tankWarriorGridView_RowDataBound" BorderStyle="Solid">
                        <Columns>
                            <asp:BoundField DataField="PlayerName" HeaderText ="DPS War"/>
                            <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                            </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>


                <td style="padding: 0">
        <asp:gridview ID="rogueGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="rogueGridView_RowDataBound" BorderStyle="Solid">
                        <Columns>
                <asp:BoundField DataField="PlayerName" HeaderText ="Rogue"/>
                <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
            </Columns>
        </asp:gridview>
                </td>

                                <td style="padding: 0">
        <asp:gridview ID="hunterGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="hunterGridView_RowDataBound" BorderStyle="Solid">
                        <Columns>
                <asp:BoundField DataField="PlayerName" HeaderText ="Hunter"/>
                <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
                </asp:BoundField>
            </Columns>
        </asp:gridview>
                </td>
            </tr>

            <tr>
                <td style="padding: 0">
                <asp:gridview ID="druidGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="druidGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Druid"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>
                <td style="padding: 0">
                <asp:gridview ID="paladinGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="paladinGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Paladin"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" >
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>
                <td style="padding: 0">
                <asp:gridview ID="priestGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="priestGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Priest" HeaderStyle-ForeColor="White"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right" HeaderStyle-ForeColor="White">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right" HeaderStyle-ForeColor="White">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right" HeaderStyle-ForeColor="White">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right" HeaderStyle-ForeColor="White">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>
                <td>
                    <p>Shaft killed my beautiful colours what a monster</p><br />					
                    <p>there I fixed the goddamn colors you bitch</p><br />		
                    <p>it looks GORGEOUS now</p><br />	
                    <p>wow doesn't even spell colour the canadian way</p><br />			
                </td>
            </tr>
            <tr>
                <td style="padding: 0">
                <asp:gridview ID="mageGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="mageGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Mage"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>
                <td style="padding: 0">
                <asp:gridview ID="warlockGridView" runat="server" AutoGenerateColumns="false" RowStyle-Width="100" OnRowDataBound="warlockGridView_RowDataBound" BorderStyle="Solid">
                    <Columns>
                    <asp:BoundField DataField="PlayerName" HeaderText ="Warlock"/>
                    <asp:BoundField DataField="ForeverLootScore" HeaderText ="Loot" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ForeverAttendanceValue" HeaderText ="Raids" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="RecentPercentageAttendance" HeaderText ="Attendance" ItemStyle-HorizontalAlign="Right">
                        <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="PvpLootScore" HeaderText ="PvP" ItemStyle-HorizontalAlign="Right">
                    <ItemStyle HorizontalAlign="Right"></ItemStyle>
                    </asp:BoundField>
                    </Columns>
                </asp:gridview>
                </td>
            </tr>
        </table>



    </asp:Content>

