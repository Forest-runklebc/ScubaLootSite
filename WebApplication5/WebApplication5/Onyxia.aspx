<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Onyxia.aspx.cs" Inherits="WebApplication5.Onyxia" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>




<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <script>var whTooltips = {colorLinks: true, iconizeLinks: true, renameLinks: true};</script>
    <script src="http://wow.zamimg.com/widgets/power.js"></script>
<%--    <a href="https://classic.wowhead.com/item=22589&amp;lvl=80" class="q5">Atiesh, Greatstaff of the Guardian</a> <small>(Level 80 conversions)</small><br />--%>

    
     <style type="text/css">
        .inlineBlock { display: inline-block; }
    </style>

    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster WHERE IsActive = 1"></asp:SqlDataSource>
    <asp:SqlDataSource ID="OnyxiaLoot" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT ItemName FROM Loot WHERE (BossName = 'Onyxia')"></asp:SqlDataSource>

    <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Date of Onyxia Raid</b></asp:Label>
    <asp:Calendar ID="calendarOnyxia" runat="server"></asp:Calendar><br />

    <a href="https://classic.wowhead.com/item=17966/onyxia-hide-backpack"></a><br />
    <asp:Label ID="labelHasOnyBag" runat="server"></asp:Label>


    <br />
    <h1>Onyxia</h1>
    <br />
    <p>Item&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Player</p>

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer1" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer2" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer3" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer4" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer5" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboOnyxiaLoot6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="OnyxiaLoot" DataTextField="ItemName" DataValueField="ItemName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>            
    <ajaxToolkit:ComboBox ID="comboOnyxiaPlayer6" runat="server" CssClass="inlineBlock" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;"  >
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioOnyxia6"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
	    <asp:ListItem Selected="True">MainSpec</asp:ListItem>
	    <asp:ListItem>Offspec</asp:ListItem>
	    <asp:ListItem>PvP</asp:ListItem>
    </asp:RadioButtonList>
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