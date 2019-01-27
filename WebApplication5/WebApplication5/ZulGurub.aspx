<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ZulGurub.aspx.cs" Inherits="WebApplication5.ZulGurub" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script>var whTooltips = {colorLinks: true, iconizeLinks: true, renameLinks: true};</script>
    <script src="http://wow.zamimg.com/widgets/power.js"></script>

    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>

    <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Date of Zul'Gurub Raid</b></asp:Label>
    <asp:Calendar ID="calendarZG" runat="server"></asp:Calendar><br />

    <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

    <br />
    <h1>Zul'Gurub</h1>
    <br />

    <p>ZG Player Info</p>
    <ajaxToolkit:ComboBox ID="comboInfoPlayer" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox><br />
    <label id="labelPlayerInfo" runat="server" visible="false"></label><br />
    <asp:Button ID="buttonZGInfo" runat="server" Text="Get Player ZG Info" OnClick="buttonZGInfo_Click" />
    <br /><br />
    
    <p>Player</p>
    <ajaxToolkit:ComboBox ID="comboPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="display: inline;" RepeatDirection="Horizontal">        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer2" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList2" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer3" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList3" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer4" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList4" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer5" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList5" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer6" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList6" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer7" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList7" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer8" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList8" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer9" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList9" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer10" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList10" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer11" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList11" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer12" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList12" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer13" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList13" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer14" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList14" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer15" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList15" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer16" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList16" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer17" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList17" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer18" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList18" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer19" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList19" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
	
	    <ajaxToolkit:ComboBox ID="comboPlayer20" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:CheckBoxList ID="CheckBoxList20" runat="server" style="display: inline;" RepeatDirection="Horizontal">
        
        <asp:ListItem>Recieved Idol</asp:ListItem>
    </asp:CheckBoxList>
    <br />
    <br /><br />

    <asp:Button ID="buttonSubmitZG" runat="server" Text="Submit ZG Raid" OnClick="buttonSubmitZG_Click" />

    

</asp:Content>