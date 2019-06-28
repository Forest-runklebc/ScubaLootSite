<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="AQ40.aspx.cs" Inherits="WebApplication5.AQ40" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script>var whTooltips = { colorLinks: true, iconizeLinks: true, renameLinks: true };</script>
    <script src="http://wow.zamimg.com/widgets/power.js"></script>
<%--    <a href="https://classic.wowhead.com/item=22589&amp;lvl=80" class="q5">Atiesh, Greatstaff of the Guardian</a> <small>(Level 80 conversions)</small><br />--%>


     <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

<%--    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="380px" RepeatDirection="Horizontal">
        <asp:ListItem>MC</asp:ListItem>
        <asp:ListItem>Ony</asp:ListItem>
        <asp:ListItem>AQ40</asp:ListItem>
        <asp:ListItem>AQ40</asp:ListItem>
        <asp:ListItem>Naxx</asp:ListItem>
    </asp:CheckBoxList>--%>

    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SkeramLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Skeram')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="BugTrioLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Bug Trio')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SarturaLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Sartura')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="FankrissLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Fankriss')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="ViscLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Viscidus')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="HuhuLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Huhuran')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="TwinsLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Twin Emps')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="OuroLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Ouro')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="CthunLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Cthun')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="AQ40TrashLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Trash' AND RaidName = 'AQ40')"></asp:SqlDataSource>
    <br /><br /><br /><br />

    <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Date of AQ40 Raid</b></asp:Label>
    <asp:Calendar ID="calendarAQ40" runat="server"></asp:Calendar>

    <br />
    <h1>Prophet Skeram</h1>
    <br />

    <p>Item&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Player</p>
    <ajaxToolkit:ComboBox ID="comboSkeramLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SkeramLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboSkeramPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSkeram1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSkeram1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboSkeramLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SkeramLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboSkeramPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSkeram2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSkeram2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboSkeramLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SkeramLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboSkeramPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSkeram3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSkeram3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>

    <br />

    <br />
    <h1>Bug Trio</h1>

    <ajaxToolkit:ComboBox ID="comboBugTrioLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BugTrioLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboBugTrioPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioBugTrio1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBugTrio1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboBugTrioLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BugTrioLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboBugTrioPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioBugTrio2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBugTrio2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboBugTrioLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BugTrioLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboBugTrioPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioBugTrio3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBugTrio3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />

    <br />
    <h1>Battleguard Sartura</h1>

    <ajaxToolkit:ComboBox ID="comboSarturaLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SarturaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboSarturaPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSartura1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSartura1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboSarturaLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SarturaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboSarturaPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSartura2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSartura2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboSarturaLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SarturaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboSarturaPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioSartura3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSartura3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />

    <br />
    <h1>Fankriss the Unyielding</h1>

    <ajaxToolkit:ComboBox ID="comboFankrissLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FankrissLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboFankrissPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioFankriss1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFankriss1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboFankrissLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FankrissLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboFankrissPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioFankriss2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFankriss2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboFankrissLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FankrissLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboFankrissPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioFankriss3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFankriss3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />

    <br /> <br />
    <h1>Viscidus</h1>

    <ajaxToolkit:ComboBox ID="comboViscLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ViscLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboViscPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioVisc1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxVisc1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboViscLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ViscLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboViscPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioVisc2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxVisc2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboViscLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ViscLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboViscPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioVisc3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxVisc3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboViscLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ViscLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboViscPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioVisc4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList> 
    <asp:CheckBox ID="checkboxVisc4" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    
        <br /><br />
    <h1>Huhuran</h1>

    <ajaxToolkit:ComboBox ID="comboHuhuLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="HuhuLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboHuhuPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioHuhu1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxHuhu1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboHuhuLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="HuhuLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboHuhuPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioHuhu2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxHuhu2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboHuhuLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="HuhuLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboHuhuPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioHuhu3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList> 
    <asp:CheckBox ID="checkboxHuhu3" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboHuhuLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="HuhuLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboHuhuPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioHuhu4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxHuhu4" CssClass="inlineBlock" runat="server" text="Sidegrade"/>

        <br /><br />
    <h1>Twin Emperors</h1>

    <ajaxToolkit:ComboBox ID="comboTwinsLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTwins1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboTwinsLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTwins2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboTwinsLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxTwins3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboTwinsLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxTwins4" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
	    <br />
    <ajaxToolkit:ComboBox ID="comboTwinsLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins5" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxTwins5" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboTwinsLoot6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="TwinsLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTwinsPlayer6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTwins6" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList> 
    <asp:CheckBox ID="checkboxTwins6" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    
    <br /><br />
    <h1>Ouro</h1>

    <ajaxToolkit:ComboBox ID="comboOuroLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OuroLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOuroPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOuro1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxOuro1" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboOuroLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OuroLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboOuroPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOuro2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxOuro2" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboOuroLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OuroLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboOuroPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOuro3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxOuro3" CssClass="inlineBlock" runat="server" text="Sidegrade"/>
    <br />
    <ajaxToolkit:ComboBox ID="comboOuroLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OuroLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboOuroPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOuro4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList> 
    <asp:CheckBox ID="checkboxOuro4" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 

        <br /><br />
    <h1>Cthun</h1>

    <ajaxToolkit:ComboBox ID="comboCthunLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="CthunLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboCthunPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioCthun1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxCthun1" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboCthunLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="CthunLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboCthunPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioCthun2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxCthun2" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboCthunLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="CthunLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboCthunPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioCthun3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxCthun3" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboCthunLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="CthunLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboCthunPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioCthun4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxCthun4" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
	    <br />
    <ajaxToolkit:ComboBox ID="comboCthunLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="CthunLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboCthunPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioCthun5" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
    <asp:ListItem Selected="True">Mainspec</asp:ListItem>
    <asp:ListItem>Offspec</asp:ListItem>
    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxCthun5" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 


            <br />              <br />  
    <h1>Trash</h1>

    <ajaxToolkit:ComboBox ID="comboTrashLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash1" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash2" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash3" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash4" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash5" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash6"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash6" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash7"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash7" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash8"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash8" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash9"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash9" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />
    <ajaxToolkit:ComboBox ID="comboTrashLoot10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="AQ40TrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboTrashPlayer10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioTrash10"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
        <asp:ListItem Selected="True">Mainspec</asp:ListItem>
        <asp:ListItem>Offspec</asp:ListItem>
        <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash10" CssClass="inlineBlock" runat="server" text="Sidegrade"/> 
    <br />

    <br />
    <asp:Button ID="WriteToDatabase" runat="server" Text="Write to Database" onClientClick="return confirm('Really write to database?')" OnClick="WriteToDatabase_Click" />

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>