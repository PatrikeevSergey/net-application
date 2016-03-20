<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="KURR.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
            DeleteCommand="DELETE FROM [Должности] WHERE [Код_должности] = @Код_должности" 
            InsertCommand="INSERT INTO [Должности] ([Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (@Наименование_должности, @Оклад, @Обязанности, @Требования)" 
            SelectCommand="SELECT * FROM [Должности]" 
            UpdateCommand="UPDATE [Должности] SET [Наименование_должности] = @Наименование_должности, [Оклад] = @Оклад, [Обязанности] = @Обязанности, [Требования] = @Требования WHERE [Код_должности] = @Код_должности">
            <DeleteParameters>
                <asp:Parameter Name="Код_должности" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlId="TextBox1" Name="Наименование_должности" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Оклад" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox3" Name="Обязанности" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="Требования" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Наименование_должности" Type="String" />
                <asp:Parameter Name="Оклад" Type="Int32" />
                <asp:Parameter Name="Обязанности" Type="String" />
                <asp:Parameter Name="Требования" Type="String" />
                <asp:Parameter Name="Код_должности" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_должности" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" 
                InsertVisible="False" ReadOnly="True" SortExpression="Код_должности" />
            <asp:BoundField DataField="Наименование_должности" 
                HeaderText="Наименование_должности" SortExpression="Наименование_должности" />
            <asp:BoundField DataField="Оклад" HeaderText="Оклад" SortExpression="Оклад" />
            <asp:BoundField DataField="Обязанности" HeaderText="Обязанности" 
                SortExpression="Обязанности" />
            <asp:BoundField DataField="Требования" HeaderText="Требования" 
                SortExpression="Требования" />
        </Columns>
    </asp:GridView>

     <br />
       <p> <asp:Label ID="Label1" runat="server" Text="Наименование_должности:                          " 
               Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="145px" style="margin-left: 114px" 
               Visible="False"></asp:TextBox>
           <asp:Label ID="Label2" runat="server" BackColor="Red" BorderColor="Red" 
               Text="Данное поле должно содержать только буквы, хотя бы одну" 
               Visible="False"></asp:Label>
        </p>
    
    </div>
    <p><asp:Label ID="Label3" runat="server" Text="Оклад:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 260px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, хотя бы одну" Visible="False"></asp:Label></p>

  <p>  <asp:Label ID="Label5" runat="server" Text="Обязанности:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 214px" 
        Width="145px" Visible="False"></asp:TextBox></p>

          <p>  <asp:Label ID="Label6" runat="server" Text="Требования:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 224px" 
        Width="145px" Visible="False"></asp:TextBox></p>

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
