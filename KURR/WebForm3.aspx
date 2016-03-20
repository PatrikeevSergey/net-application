<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="KURR.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
            DeleteCommand="DELETE FROM [Виды комплектующих] WHERE [Код_вида] = @Код_вида" 
            InsertCommand="INSERT INTO [Виды комплектующих] ([Наименование], [Описание]) VALUES (@Наименование, @Описание)" 
            SelectCommand="SELECT * FROM [Виды комплектующих]" 
            UpdateCommand="UPDATE [Виды комплектующих] SET [Наименование] = @Наименование, [Описание] = @Описание WHERE [Код_вида] = @Код_вида">
            <DeleteParameters>
                <asp:Parameter Name="Код_вида" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlId="TextBox1" Name="Наименование" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Описание" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Наименование" Type="String" />
                <asp:Parameter Name="Описание" Type="String" />
                <asp:Parameter Name="Код_вида" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_вида" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_вида" HeaderText="Код_вида" 
                InsertVisible="False" ReadOnly="True" SortExpression="Код_вида" />
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" 
                SortExpression="Наименование" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" 
                SortExpression="Описание" />
        </Columns>
    </asp:GridView>

     <br />
     <p> <asp:Label ID="Label1" runat="server" Text="Наименование:                          " 
               Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="145px" style="margin-left: 16px" 
               Visible="False"></asp:TextBox>
           <asp:Label ID="Label2" runat="server" BackColor="Red" BorderColor="Red" 
               Text="Данное поле должно содержать только буквы, хотя бы одну" 
               Visible="False"></asp:Label>
        </p>
    </div>
  <p>  <asp:Label ID="Label3" runat="server" Text="Описание:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 51px" 
        Width="145px" Visible="False"></asp:TextBox></p>
 <p>
    <asp:Button ID="Button1" runat="server" Text="ОК" Visible="False" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Добавить" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm8.aspx" 
         Text="Назад" />
    </p>
    </form>
</body>
</html>
