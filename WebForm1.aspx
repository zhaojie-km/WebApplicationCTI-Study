<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplicationCTI_Study.WebForm1" %>

<%@ Register src="TimeUserControl.ascx" tagname="TimeUserControl" tagprefix="uc1" %>
<%@ Register Src="~/TimeUserControl.ascx" TagPrefix="uc2" TagName="TimeUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="架電一覧" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="リーズ" OnClick="Button2_Click" />
             <asp:Button ID="Button3" runat="server" Text="アタック" OnClick="Button4_Click" />
             <asp:Button ID="Button4" runat="server" Text="自動発信" OnClick="Button_Click4" />
             <asp:Button ID="Button5" runat="server" Text="リスト発信" OnClick="Button1_Click" Width="136px" />
             <asp:Button ID="Button6" runat="server" Text="閲覧" OnClick="Button1_Click" />
            <asp:Button ID="Button7" runat="server" Text="停止" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click1" Text="条件クリア" Width="136px" />


            <asp:Button ID="Button9" runat="server" Text="検索実行" />


            <asp:Button ID="Button10" runat="server" Text="休憩" />


            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="離席" />


        </div>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="467px" AllowPaging="True" AllowSorting="True" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="2" style="margin-right: 124px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="TelNo1" HeaderText="TelNo1" SortExpression="TelNo1" />
                    <asp:BoundField DataField="TelNo2" HeaderText="TelNo2" SortExpression="TelNo2" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:CheckBoxField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:TemplateField HeaderText="planName" SortExpression="planName">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="planType" DataValueField="planType" SelectedValue='<%# Bind("planType") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [planName], [planType] FROM [TBPOLICY]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("planName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="planType" HeaderText="planType" SortExpression="planType" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [CUSTOMER] WHERE [Id] = @Id" 
                InsertCommand="INSERT INTO [CUSTOMER] ([Id], [Name], [TelNo1], [TelNo2], [Address]) VALUES (@Id, @Name, @TelNo1, @TelNo2, @Address)" 
                SelectCommand="SELECT TBPOLICY.planType as planType, CUSTOMER.Id, CUSTOMER.Name, CUSTOMER.TelNo1, CUSTOMER.TelNo2, CUSTOMER.Address, CUSTOMER.Sex, CUSTOMER.planName FROM TBPOLICY INNER JOIN CUSTOMER ON CUSTOMER.planName = TBPOLICY.planName" 
                UpdateCommand="UPDATE CUSTOMER SET Name = @Name, TelNo1 = @TelNo1, TelNo2 = @TelNo2, Address = @Address, planName = @planName WHERE (Id = @Id)" OnSelecting="SqlDataSource1_Selecting">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="TelNo1" Type="String" />
                    <asp:Parameter Name="TelNo2" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="TelNo1" Type="String" />
                    <asp:Parameter Name="TelNo2" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="planName" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        
       
            </form>
</body>
</html>
