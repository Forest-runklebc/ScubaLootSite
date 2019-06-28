<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="BlackwingLair.aspx.cs" Inherits="WebApplication5.BlackwingLair" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script>var whTooltips = {colorLinks: true, iconizeLinks: true, renameLinks: true};</script>
    <script src="http://wow.zamimg.com/widgets/power.js"></script>
<%--    <a href="https://classic.wowhead.com/item=22589&amp;lvl=80" class="q5">Atiesh, Greatstaff of the Guardian</a> <small>(Level 80 conversions)</small><br />--%>


     <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

    
<%--            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Width="380px" RepeatDirection="Horizontal">
                <asp:ListItem>MC</asp:ListItem>
                <asp:ListItem>Ony</asp:ListItem>
                <asp:ListItem>BWL</asp:ListItem>
                <asp:ListItem>AQ40</asp:ListItem>
                <asp:ListItem>Naxx</asp:ListItem>
            </asp:CheckBoxList>--%>

            <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>
            <asp:SqlDataSource ID="RazorgoreLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Razorgore')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="VaelLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Vael')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="BroodlordLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Broodlord')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="FiremawLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Firemaw')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="EbonrocLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Ebonroc')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="FlamegoreLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Flamegor')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="ChromagLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Chromaggus')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="NefLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Nefarian')"></asp:SqlDataSource>
            <asp:SqlDataSource ID="BWLTrashLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Trash' AND RaidName = 'BWL')"></asp:SqlDataSource>
            <br /><br /><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Date of BWL Raid</b></asp:Label>
            <asp:Calendar ID="calendarBWL" runat="server"></asp:Calendar>

            <br />
            <h1>Razorgore</h1>
            <br />

            <p>Item&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Player</p>
            <ajaxToolkit:ComboBox ID="comboRazorgoreLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RazorgoreLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboRazorgorePlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRazorgore1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
            <asp:CheckBox ID="checkboxRazorgore1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboRazorgoreLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RazorgoreLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRazorgorePlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRazorgore2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRazorgore2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />
                <ajaxToolkit:ComboBox ID="comboRazorgoreLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="RazorgoreLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboRazorgorePlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioRazorgore3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxRazorgore3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />

            <br />            <br />  
            <h1>Vaelastrasz</h1>

            <ajaxToolkit:ComboBox ID="comboVaelLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="VaelLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboVaelPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioVael1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxVael1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboVaelLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="VaelLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboVaelPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioVael2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxVael2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />
                <ajaxToolkit:ComboBox ID="comboVaelLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="VaelLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboVaelPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioVael3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxVael3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />

            <br />            <br />  
            <h1>Broodlord</h1>

            <ajaxToolkit:ComboBox ID="comboBroodlordLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BroodlordLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboBroodlordPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioBroodlord1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
        <asp:CheckBox ID="checkboxBroodlord1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboBroodlordLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BroodlordLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboBroodlordPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioBroodlord2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxBroodlord2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />
                <ajaxToolkit:ComboBox ID="comboBroodlordLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BroodlordLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboBroodlordPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioBroodlord3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>                                                                                                                                                                                            
    <asp:CheckBox ID="checkboxBroodlord3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />            <br />  
            <h1>Firemaw</h1>

            <ajaxToolkit:ComboBox ID="comboFiremawLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FiremawLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboFiremawPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioFiremaw1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFiremaw1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboFiremawLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FiremawLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboFiremawPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioFiremaw2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFiremaw2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />                                                                                                                                                               
            <br />            <br />  
            <h1>Ebonroc</h1>

            <ajaxToolkit:ComboBox ID="comboEbonrocLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="EbonrocLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboEbonrocPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioEbonroc1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxEbonroc1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboEbonrocLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="EbonrocLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboEbonrocPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioEbonroc2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxEbonroc2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />

            <br />            <br />  
            <h1>Flamegore</h1>

            <ajaxToolkit:ComboBox ID="comboFlamegoreLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FlamegoreLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>            
            <ajaxToolkit:ComboBox ID="comboFlamegorePlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioFlamegore1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
            <asp:ListItem Selected="True">Mainspec</asp:ListItem>
            <asp:ListItem>Offspec</asp:ListItem>
            <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFlamegore1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboFlamegoreLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="FlamegoreLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboFlamegorePlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioFlamegore2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
            <asp:ListItem Selected="True">Mainspec</asp:ListItem>
            <asp:ListItem>Offspec</asp:ListItem>
            <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxFlamegore2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />                                                                                                                                                                                       

    		<br />
			<h1>Chromaggus</h1>

			<ajaxToolkit:ComboBox ID="comboChromagLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ChromagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
			</ajaxToolkit:ComboBox>            
			<ajaxToolkit:ComboBox ID="comboChromagPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioChromag1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>
    <asp:CheckBox ID="checkboxChromag1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
			<br />
			<ajaxToolkit:ComboBox ID="comboChromagLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ChromagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboChromagPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioChromag2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>
    <asp:CheckBox ID="checkboxChromag2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
				<br />
				<ajaxToolkit:ComboBox ID="comboChromagLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ChromagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboChromagPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioChromag3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxChromag3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
			<br />
				<ajaxToolkit:ComboBox ID="comboChromagLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="ChromagLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboChromagPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioChromag4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>         
    <asp:CheckBox ID="checkboxChromag4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
    
    		<br />            <br />  
			<h1>Nefarian</h1>

			<ajaxToolkit:ComboBox ID="comboNefLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="NefLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
			</ajaxToolkit:ComboBox>            
			<ajaxToolkit:ComboBox ID="comboNefPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioNef1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>
    <asp:CheckBox ID="checkboxNef1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
			<br />
			<ajaxToolkit:ComboBox ID="comboNefLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="NefLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboNefPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioNef2" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>
    <asp:CheckBox ID="checkboxNef2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
				<br />
				<ajaxToolkit:ComboBox ID="comboNefLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="NefLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboNefPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioNef3" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>  
    <asp:CheckBox ID="checkboxNef3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
			<br />
				<ajaxToolkit:ComboBox ID="comboNefLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="NefLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboNefPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioNef4" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList> 
    <asp:CheckBox ID="checkboxNef4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
    			<br />
    		<ajaxToolkit:ComboBox ID="comboNefLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="NefLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<ajaxToolkit:ComboBox ID="comboNefPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;" >
			</ajaxToolkit:ComboBox>
			<asp:RadioButtonList ID="radioNef5" RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
				<asp:ListItem Selected="True">Mainspec</asp:ListItem>
				<asp:ListItem>Offspec</asp:ListItem>
				<asp:ListItem>PvP</asp:ListItem>
			</asp:RadioButtonList>   
    <asp:CheckBox ID="checkboxNef5" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
                <br />              <br />  
            <h1>Trash</h1>

            <ajaxToolkit:ComboBox ID="comboTrashLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot1" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot2" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot3" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot4" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot5" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash6"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot6" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash7"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot7" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash8"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot8" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash9"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot9" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
            <br />
            <ajaxToolkit:ComboBox ID="comboTrashLoot10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="BWLTrashLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <ajaxToolkit:ComboBox ID="comboTrashPlayer10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
            </ajaxToolkit:ComboBox>
            <asp:RadioButtonList ID="radioTrash10"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="225px">
                <asp:ListItem Selected="True">Mainspec</asp:ListItem>
                <asp:ListItem>Offspec</asp:ListItem>
                <asp:ListItem>PvP</asp:ListItem>
            </asp:RadioButtonList>
    <asp:CheckBox ID="checkboxTrashLoot10" CssClass="inlineBlock" runat="server" Text="Sidegrade" />
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