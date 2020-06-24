<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormViewSample.aspx.cs" Inherits="WebApplicationCTI_Study.FormViewSample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="planId,Id" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    planName:
                    <asp:TextBox ID="planNameTextBox" runat="server" Text='<%# Bind("planName") %>' />
                    <br />
                    planType:
                    <asp:TextBox ID="planTypeTextBox" runat="server" Text='<%# Bind("planType") %>' />
                    <br />
                    planId:
                    <asp:Label ID="planIdLabel1" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    TelNo1:
                    <asp:TextBox ID="TelNo1TextBox" runat="server" Text='<%# Bind("TelNo1") %>' />
                    <br />
                    Sex:
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Bind("Sex") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    planName:
                    <asp:TextBox ID="planNameTextBox" runat="server" Text='<%# Bind("planName") %>' />
                    <br />
                    planType:
                    <asp:TextBox ID="planTypeTextBox" runat="server" Text='<%# Bind("planType") %>' />
                    <br />
                    planId:
                    <asp:TextBox ID="planIdTextBox" runat="server" Text='<%# Bind("planId") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    TelNo1:
                    <asp:TextBox ID="TelNo1TextBox" runat="server" Text='<%# Bind("TelNo1") %>' />
                    <br />
                    Sex:
                    <asp:CheckBox ID="SexCheckBox" runat="server" Checked='<%# Bind("Sex") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="挿入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                </InsertItemTemplate>
                <ItemTemplate>
                    プラン名:
                    <asp:Label ID="planNameLabel" runat="server" Text='<%# Bind("planName") %>' />
                    <br />
                    保険種類:
                    <asp:Label ID="planTypeLabel" runat="server" Text='<%# Bind("planType") %>' />
                    <br />
                    プランId:
                    <asp:Label ID="planIdLabel" runat="server" Text='<%# Eval("planId") %>' />
                    <br />
                    名前:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    顧客ID:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    電話番号1:
                    <asp:Label ID="TelNo1Label" runat="server" Text='<%# Bind("TelNo1") %>' />
                    <br />
                    性別:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    住所:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編集" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="削除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新規作成" />
                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM CUSTOMER 
Where Id=@Id" InsertCommand="INSERT INTO CUSTOMER(Name, TelNo1, TelNo2, Address, Sex, planName,Id) VALUES (@Name, @TelNo1, @TelNo2, @Address, @Sex, @planName,@Id)" SelectCommand="SELECT TBPOLICY.planName, TBPOLICY.planType, TBPOLICY.planId, CUSTOMER.Name, CUSTOMER.Id, CUSTOMER.TelNo1, CUSTOMER.Sex, CUSTOMER.Address 
FROM TBPOLICY INNER JOIN CUSTOMER ON TBPOLICY.planName = CUSTOMER.planName
where Id=@Id" UpdateCommand="UPDATE CUSTOMER SET Name =@Name, TelNo1 =@TelNo1, TelNo2 =@TelNo2, Sex =@Sex, Address =@Address, planName =@planName
Where Id=@Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="TelNo1" />
                    <asp:Parameter Name="TelNo2" />
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="Sex" />
                    <asp:Parameter Name="planName" />
                    <asp:Parameter Name="Id" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="Id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="TelNo1" />
                    <asp:Parameter Name="TelNo2" />
                    <asp:Parameter Name="Sex" />
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="planName" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
