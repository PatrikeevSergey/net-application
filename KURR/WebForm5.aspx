<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm5.aspx.vb" Inherits="KURR.WebForm5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form5" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
            DeleteCommand="DELETE FROM [Заказчики] WHERE [Код_заказчика] = @Код_заказчика" 
            InsertCommand="INSERT INTO [Заказчики] ([ФИО], [Адрес], [Телефон]) VALUES (@ФИО1, @Адрес, @Телефон)" 
            SelectCommand="SELECT * FROM [Заказчики]" 
            UpdateCommand="UPDATE [Заказчики] SET [ФИО] = @ФИО, [Адрес] = @Адрес, [Телефон] = @Телефон WHERE [Код_заказчика] = @Код_заказчика">
             <DeleteParameters>
                <asp:Parameter Name="Код_заказчика" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlId="TextBox1" Name="ФИО1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Адрес" Type="String" />
                <asp:ControlParameter ControlId="Textbox3" Name="Телефон" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ФИО" Type="String" />
                <asp:Parameter Name="Адрес" Type="String" />
                <asp:Parameter Name="Телефон" Type="String" />
                <asp:Parameter Name="Код_заказчика" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_заказчика" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_заказчика" HeaderText="Код_заказчика" 
                ReadOnly="True" SortExpression="Код_заказчика" />
            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" SortExpression="Телефон" />
        </Columns>
    </asp:GridView>
    
        <br />
       <p> <asp:Label ID="Label1" runat="server" Text="ФИО:                          " 
               Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="145px" style="margin-left: 114px" 
               Visible="False"></asp:TextBox>
           <asp:Label ID="Label2" runat="server" BackColor="Red" BorderColor="Red" 
               Text="Данное поле должно содержать только буквы, хотя бы одну" 
               Visible="False"></asp:Label>
        </p>
    
    </div>
  <p>  <asp:Label ID="Label3" runat="server" Text="Адрес:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 114px" 
        Width="145px" Visible="False"></asp:TextBox></p>

   <p> <asp:Label ID="Label4" runat="server" Text="Телефон:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 98px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, не больше 11" Visible="False"></asp:Label></p>
    <p>
    <asp:Button ID="Button1" runat="server" Text="ОК" Visible="False" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Добавить" />
    </p>
    <p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm8.aspx" 
            Text="Назад" />
    </p>
    </form>
</body>
</html>