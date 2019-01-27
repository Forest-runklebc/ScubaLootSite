<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Info.aspx.cs" Inherits="WebApplication5.Info" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
        <script>var whTooltips = {colorLinks: true, iconizeLinks: true, renameLinks: true};</script>
        <script src="http://wow.zamimg.com/widgets/power.js"></script>
    

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


        <br />
        <br />



    <br />
    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>
    <asp:SqlDataSource ID="AllLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT distinct ItemName from Loot"></asp:SqlDataSource>
    <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

    <p><b>Players With Item</b></p>
    <ajaxToolkit:ComboBox ID="comboItemNameToSearch" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="AllLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox><br />
    <asp:Button ID="getPlayersWithItem" runat="server" Text="Show Players With Item" OnClick="getPlayersWithItem_Click"/><br />
    <asp:Label ID="labelPlayersWithItem" runat="server" Text="Label" Visible="False"></asp:Label>
    <br /><br /><br />

    

    <p><b>Player Loot History</b></p>
    <ajaxToolkit:ComboBox ID="comboPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox><br />
    <asp:Button ID="getPlayerLootHistory" runat="server" Text="Show Player Loot History" OnClick="getPlayerLootHistory_Click"/><br /><br />
    
    <asp:Label ID="labelT1" runat="server" Text="Tier 1:" Visible="False" Font-Bold="True"></asp:Label>
    <asp:Literal ID="literalT1" runat="server" /><br />

    <asp:Label ID="labelMC" runat="server" Text="Molten Core:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalMC" runat="server" /><br />

    <asp:Label ID="labelOny" runat="server" Text="Onyxia:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalOny" runat="server" /><br />

    <asp:Label ID="labelT2" runat="server" Text="Tier 2:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalT2" runat="server" /><br />

    <asp:Label ID="labelBWL" runat="server" Text="Blackwing Lair:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalBWL" runat="server" /><br />

    <asp:Label ID="labelT25" runat="server" Text="Tier 2.5:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalT25" runat="server" /><br />

    <asp:Label ID="labelAQ" runat="server" Text="Ahn'Qiraj:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalAQ" runat="server" /><br />

    <asp:Label ID="labelT3" runat="server" Text="Tier 3:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalT3" runat="server" /><br />

    <asp:Label ID="labelNaxx" runat="server" Text="Naxxramas:" Visible="False" Font-Bold="True"></asp:Label><br />
    <asp:Literal ID ="literalNaxx" runat="server" /><br />

    </asp:Content>

