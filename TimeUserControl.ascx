<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeUserControl.ascx.cs" Inherits="WebApplicationCTI_Study.TimeUserControl" %>
<asp:TextBox ID="HourTextBox" runat="server" OnTextChanged="TextBox1_TextChanged" Columns="4" MaxLength="2"></asp:TextBox>時

<asp:TextBox ID="MinuteTextBox" runat="server" OnTextChanged="MinuteTextBox_TextChanged" Columns="4" MaxLength="2"></asp:TextBox>分<p>
    
    
<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="HourTextBox" Display="Dynamic" ErrorMessage="時間は0-23の値を入力してください" MaximumValue="23" MinimumValue="0" Type="Integer">0~23の値を入力してください</asp:RangeValidator>
<asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="分は0-59の値を入力してください" Display="Dynamic" MaximumValue="59" MinimumValue="0" Type="Integer" ControlToValidate="MinuteTextBox">0~59の値</asp:RangeValidator>


</p>
