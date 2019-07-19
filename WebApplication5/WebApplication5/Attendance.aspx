<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Attendance.aspx.cs" Inherits="WebApplication5.Attendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <style type="text/css">
        .inlineBlock { display: inline-block; }

        .bold
        {
          font-weight:bold;
        }
    </style>

    <asp:SqlDataSource ID="Roster" runat="server" ConnectionString="<%$ ConnectionStrings:BLAKE %>" SelectCommand="SELECT PlayerName FROM Roster"></asp:SqlDataSource>
    


    <br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Text="Label"><b>Select Raid(s) Run For This Day:</b></asp:Label>
    <br /><br />
    <asp:CheckBoxList ID="CheckBoxRaids" runat="server" Width="380px" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxRaids_SelectedIndexChanged">
        <asp:ListItem Value="MC">MC</asp:ListItem>
        <asp:ListItem Value="Ony">Ony</asp:ListItem>
        <asp:ListItem Value="BWL">BWL</asp:ListItem>
        <asp:ListItem Value="AQ40">AQ40</asp:ListItem>
        <asp:ListItem Value="Naxx">Naxx</asp:ListItem>
    </asp:CheckBoxList>

    <br />
    <asp:Label ID="Label2" runat="server" Text="Label"><b>Select Date of Raid(s)</b></asp:Label>
    <asp:Calendar ID="calendarAttendance" runat="server" OnSelectionChanged="calendarAttendance_SelectionChanged"></asp:Calendar><br />
    <%--<asp:Button ID="buttonGetRaids" runat="server" Text="Show Raid(s) Run on Selected Date" OnClick="buttonGetRaids_Click" /><br />--%>
    <asp:Label ID="labelRaidsRun" runat="server" Text="Label" CssClass="bold"></asp:Label>

    <br /><br />  
    <h1>Player Attendance Status</h1>

    <p>Note: ALL active roster players will be counted as present for the whole raid by default unless specified below</p>

    <br />
    <p>Player&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Attendance Value (decimal)</p>
    <ajaxToolkit:ComboBox ID="comboPlayer1" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue1" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus1"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <ajaxToolkit:ComboBox ID="comboPlayer2" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue2" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus2"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer3" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue3" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus3"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer4" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue4" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus4"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer5" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue5" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus5"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer6" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue6" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus6"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer7" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue7" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus7"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer8" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue8" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus8"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <ajaxToolkit:ComboBox ID="comboPlayer9" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue9" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus9"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />   
    
    <ajaxToolkit:ComboBox ID="comboPlayer10" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="Roster" DataTextField="PlayerName" DataValueField="PlayerName" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <ajaxToolkit:ComboBox ID="comboAttendanceValue10" runat="server" AutoCompleteMode="SuggestAppend" MaxLength="0" style="display: inline;">
    </ajaxToolkit:ComboBox>
    <asp:RadioButtonList ID="radioAttendanceStatus10"  RepeatDirection="Horizontal" CssClass="inlineBlock" runat="server" Height="16px" Width="500px">
        <asp:ListItem Selected="True">Missing</asp:ListItem>
        <asp:ListItem>Standby</asp:ListItem>
        <asp:ListItem>Left Early</asp:ListItem>
    </asp:RadioButtonList>
    <br />

    <br />
    <asp:Button ID="SubmitNewRaid" runat="server" Text="Submit New Raid" onClientClick="return confirm('Really submit new raid?')" OnClick="SubmitNewRaid_Click" />
    <asp:Button ID="UpdateExistingRaid" runat="server" Text="Overwrite Existing Raid" onClientClick="return confirm('Really DELETE AND OVERWRITE existing raid?')" OnClick="UpdateExistingRaid_Click" />
    <asp:Button ID="clearAllFields" runat="server" Text="Clear ALL Fields" onClientClick="return confirm('CLEAR ALL FIELDS?')" OnClick="clearAllFields_Click" />
    <br />
    <asp:Label ID="labelErrorRaidAlreadyExists" runat="server" Text="Error: A raid already exists for this date. Use the update button instead." ForeColor="Red"></asp:Label>
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
