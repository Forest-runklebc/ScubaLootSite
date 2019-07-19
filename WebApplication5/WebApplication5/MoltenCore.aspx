<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="MoltenCore.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script>var whTooltips = {colorLinks: true, iconizeLinks: true, renameLinks: true};</script>
    <script src="http://wow.zamimg.com/widgets/power.js"></script>
<%--    <a href="https://classic.wowhead.com/item=22589&amp;lvl=80" class="q5">Atiesh, Greatstaff of the Guardian</a> <small>(Level 80 conversions)</small><br />--%>

    
     <style type="text/css">
        .inlineBlock { display: inline-block; }

        .bold
        {
          font-weight:bold;
        }
    </style>
    
<%--            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="380px" RepeatDirection="Horizontal">
                <asp:ListItem>MC</asp:ListItem>
                <asp:ListItem>Ony</asp:ListItem>
                <asp:ListItem>BWL</asp:ListItem>
                <asp:ListItem>AQ40</asp:ListItem>
                <asp:ListItem>Naxx</asp:ListItem>
            </asp:CheckBoxList>--%>

            <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>
            <asp:SqlDataSource ID="LucifronLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Lucifron')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="MagLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Magmadar')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GehennasLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Gehennas')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GarrLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Garr')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="BaronLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Baron')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="ShazzrahLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Shazzrah')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SulfuronLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Sulfuron')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GolemaggLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Golemagg')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="MajordomoLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Majordomo')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="RagnarosLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Ragnaros')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="MCTrashLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Trash' AND RaidName = 'MC')"></asp:SqlDataSource>
            <br /><br /><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Date of MC Raid</b></asp:Label>
            <asp:Calendar ID="calendarMC" runat="server" OnSelectionChanged="calendarMC_SelectionChanged"></asp:Calendar>
            <br /><asp:Label ID="labelRaidsRun" runat="server" Text="Label" CssClass="bold"></asp:Label>
            
            
            
            <br />
            <h1>Lucifron</h1>
            <br />
            <p>Item&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Player</p>

            <ajaxToolkit:ComboBox ID="comboLucifronLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="LucifronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboLucifronPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioLucifron1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxLucifron1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboLucifronLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="LucifronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboLucifronPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioLucifron2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxLucifron2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />            <br />
            <h1>Magmadar</h1>

            <ajaxToolkit:ComboBox ID="comboMagmadarLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMagmadarPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioMagmadar1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMagmadar1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboMagmadarLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMagmadarPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioMagmadar2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMagmadar2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboMagmadarLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMagmadarPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioMagmadar3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMagmadar3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
            <h1>Gehennas</h1>
            <ajaxToolkit:ComboBox ID="comboGehennasLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GehennasLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGehennasPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGehennas1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGehennas1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGehennasLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GehennasLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGehennasPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>

            <asp:RadioButtonList ID="radioGehennas2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGehennas2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />            <br />
            <h1>Garr</h1>

            <ajaxToolkit:ComboBox ID="comboGarrLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GarrLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGarrPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGarr1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGarr1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGarrLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GarrLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGarrPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGarr2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGarr2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGarrLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GarrLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGarrPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGarr3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGarr3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGarrLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GarrLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGarrPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGarr4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGarr4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />

                <br />            <br />
                <h1>Baron Geddon</h1>
            <ajaxToolkit:ComboBox ID="comboBaronLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BaronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboBaronPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioBaron1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBaron1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboBaronLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BaronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboBaronPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioBaron2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBaron2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboBaronLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BaronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboBaronPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>

            <asp:RadioButtonList ID="radioBaron3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBaron3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Shazzrah</h1>

            <ajaxToolkit:ComboBox ID="comboShazzrahLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ShazzrahLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboShazzrahPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioShazzrah1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxShazzrah1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboShazzrahLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ShazzrahLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboShazzrahPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
 
            <asp:RadioButtonList ID="radioShazzrah2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
 <asp:CheckBox ID="checkboxShazzrah2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Sulfuron Harbinger</h1>

            <ajaxToolkit:ComboBox ID="comboSulfuronLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SulfuronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboSulfuronPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioSulfuron1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSulfuron1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboSulfuronLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SulfuronLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboSulfuronPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>

            <asp:RadioButtonList ID="radioSulfuron2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxSulfuron2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Golemagg the Incinerator</h1>

            <ajaxToolkit:ComboBox ID="comboGolemaggLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GolemaggLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGolemaggPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGolemagg1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGolemagg1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGolemaggLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GolemaggLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGolemaggPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioGolemagg2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGolemagg2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboGolemaggLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="GolemaggLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboGolemaggPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>

            <asp:RadioButtonList ID="radioGolemagg3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxGolemagg3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Majordomo Exeutus</h1>

            <ajaxToolkit:ComboBox ID="comboMajordomoLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MajordomoLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMajordomoPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioMajordomo1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMajordomo1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboMajordomoLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MajordomoLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMajordomoPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioMajordomo2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMajordomo2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboMajordomoLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MajordomoLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboMajordomoPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>

            <asp:RadioButtonList ID="radioMajordomo3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxMajordomo3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Ragnaros</h1>

            <ajaxToolkit:ComboBox ID="comboRagnarosLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RagnarosLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRagnarosPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRagnaros1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRagnaros1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboRagnarosLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RagnarosLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRagnarosPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRagnaros2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRagnaros2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboRagnarosLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RagnarosLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRagnarosPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRagnaros3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRagnaros3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboRagnarosLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RagnarosLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRagnarosPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRagnaros4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRagnaros4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboRagnarosLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RagnarosLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRagnarosPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRagnaros5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRagnaros5" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />            <br />
                <h1>Trash</h1>

            <ajaxToolkit:ComboBox ID="comboTrashLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash5" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash6"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash6" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash7"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash7" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash8"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash8" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash9"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash9" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="MCTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash10"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrash10" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
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