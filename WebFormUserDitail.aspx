<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormUserDitail.aspx.cs" Inherits="WebApplicationCTI_Study.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id,planId" DataSourceID="SqlDataSource1" GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" GroupPlaceholderID="itemPlaceHolder">
                <AlternatingItemTemplate>
                    <span style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    TelNo1:
                    <asp:Label ID="TelNo1Label" runat="server" Text='<%# Eval("TelNo1") %>' />
                    <br />
                    TelNo2:
                    <asp:Label ID="TelNo2Label" runat="server" Text='<%# Eval("TelNo2") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    planName:
                    <asp:Label ID="planNameLabel" runat="server" Text='<%# Eval("planName") %>' />
                    <br />
                    Expr1:
                    <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    planType:
                    <asp:Label ID="planTypeLabel" runat="server" Text='<%# Eval("planType") %>' />
                    <br />
                    planId:
                    <asp:Label ID="planIdLabel" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    TelNo1:
                    <asp:TextBox ID="TelNo1TextBox" runat="server" Text='<%# Bind("TelNo1") %>' />
                    <br />
                    TelNo2:
                    <asp:TextBox ID="TelNo2TextBox" runat="server" Text='<%# Bind("TelNo2") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Bind("Sex") %>' Text="Sex" />
                    <br />
                    planName:
                    <asp:TextBox ID="planNameTextBox" runat="server" Text='<%# Bind("planName") %>' />
                    <br />
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />
                    planType:
                    <asp:TextBox ID="planTypeTextBox" runat="server" Text='<%# Bind("planType") %>' />
                    <br />
                    planId:
                    <asp:Label ID="planIdLabel1" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <GroupTemplate>
                    <tr>
                        <span runat="server" id="itemPlaceHolder" />
                    </tr>
                </GroupTemplate>
                <EmptyDataTemplate>
                    <span>データは返されませんでした。</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    TelNo1:
                    <asp:TextBox ID="TelNo1TextBox" runat="server" Text='<%# Bind("TelNo1") %>' />
                    <br />
                    TelNo2:
                    <asp:TextBox ID="TelNo2TextBox" runat="server" Text='<%# Bind("TelNo2") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Bind("Sex") %>' Text="Sex" />
                    <br />
                    planName:
                    <asp:TextBox ID="planNameTextBox" runat="server" Text='<%# Bind("planName") %>' />
                    <br />
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />
                    planType:
                    <asp:TextBox ID="planTypeTextBox" runat="server" Text='<%# Bind("planType") %>' />
                    <br />
                    planId:
                    <asp:TextBox ID="planIdTextBox" runat="server" Text='<%# Bind("planId") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    TelNo1:
                    <asp:Label ID="TelNo1Label" runat="server" Text='<%# Eval("TelNo1") %>' />
                    <br />
                    TelNo2:
                    <asp:Label ID="TelNo2Label" runat="server" Text='<%# Eval("TelNo2") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    planName:
                    <asp:Label ID="planNameLabel" runat="server" Text='<%# Eval("planName") %>'  />

                    <br />
                    Expr1:
                    <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    planType:
                    <asp:Label ID="planTypeLabel" runat="server" Text='<%# Eval("planType") %>' />
                    <br />
                    planId:
                    <asp:Label ID="planIdLabel" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    TelNo1:
                    <asp:Label ID="TelNo1Label" runat="server" Text='<%# Eval("TelNo1") %>' />
                    <br />
                    TelNo2:
                    <asp:Label ID="TelNo2Label" runat="server" Text='<%# Eval("TelNo2") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Eval("Sex") %>' Enabled="false" Text="Sex" />
                    <br />
                    planName:
                    <asp:Label ID="planNameLabel" runat="server" Text='<%# Eval("planName") %>' />
                    <br />
                    Expr1:
                    <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    planType:
                    <asp:Label ID="planTypeLabel" runat="server" Text='<%# Eval("planType") %>' />
                    <br />
                    planId:
                    <asp:Label ID="planIdLabel" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT CUSTOMER.*, TBPOLICY.planName AS Expr1, TBPOLICY.planType, TBPOLICY.planId FROM CUSTOMER INNER JOIN TBPOLICY ON CUSTOMER.planName = TBPOLICY.planName"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
