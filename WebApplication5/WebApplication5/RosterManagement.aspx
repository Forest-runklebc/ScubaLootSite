<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="RosterManagement.aspx.cs" Inherits="WebApplication5.RosterManagement" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster"></asp:SqlDataSource>
    
        <br /><br />  
    <h1>Roster Addtions & Updates</h1>
    <br /><br /><br />

        <p><b>Add New Player(s)</b></p>
    <p>Player&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Rank&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Class&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Subclass(Warriors/Priests)</p>
    <ajaxToolkit:ComboBox ID="ComboBox1" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox2" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox3" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="ComboBox4" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="RadioButtonList1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <ajaxToolkit:ComboBox ID="ComboBox5" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox6" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox7" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="ComboBox8" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="RadioButtonList2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>

        <br />
    <ajaxToolkit:ComboBox ID="ComboBox9" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox10" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="ComboBox11" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="ComboBox12" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="RadioButtonList3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>
    <br /><br />
    <asp:Button ID="buttonAddNewPlayers" runat="server" Text="Add Player(s)" />


    <br /><br /><br /><br />
    <p><b>Update Existing Player(s)</b></p>
    <p>Player&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Rank&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Class&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Subclass(Warriors/Priests)</p>
    <ajaxToolkit:ComboBox ID="comboPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboRanks1" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboPlayerClass" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="comboPlayerSubClass" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioIsActive1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <ajaxToolkit:ComboBox ID="comboPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboRanks2" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboPlayerClass2" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="comboPlayerSubClas2" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioIsActive2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>

        <br />
    <ajaxToolkit:ComboBox ID="comboPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboRanks3" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Officer</asp:ListItem>
        <asp:ListItem>Member</asp:ListItem>
        <asp:ListItem>Trial</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboPlayerClass3" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Warrior</asp:ListItem>
        <asp:ListItem>Rogue</asp:ListItem>
        <asp:ListItem>Hunter</asp:ListItem>
        <asp:ListItem>Druid</asp:ListItem>
        <asp:ListItem>Paladin</asp:ListItem>
        <asp:ListItem>Priest</asp:ListItem>
        <asp:ListItem>Mage</asp:ListItem>
        <asp:ListItem>Warlock</asp:ListItem>
    </ajaxToolkit:ComboBox>
        <ajaxToolkit:ComboBox ID="comboPlayerSubClas3" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
        <asp:ListItem>Tank</asp:ListItem>
        <asp:ListItem>DPS</asp:ListItem>
        <asp:ListItem>Shadow</asp:ListItem>
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioIsActive3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px" style="display: inline;">
        <asp:ListItem Selected="True">Active</asp:ListItem>
        <asp:ListItem>Inactive</asp:ListItem>
    </asp:RadioButtonList>
    <br /><br />
    <asp:Button ID="buttonUpdateExistingPlayers" runat="server" Text="Update Player(s)" />





        <br /><br /><br />

</asp:Content>
