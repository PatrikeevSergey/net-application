<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm4.aspx.vb" Inherits="KURR.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form4" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
            DeleteCommand="DELETE FROM [Комплектующие] WHERE [Код_комплектующего] = @Код_комплектующего" 
            InsertCommand="INSERT INTO [Комплектующие] ([Код_вида], [Марка], [Фирма_производитель], [Страна_производитель], [Дата_выпуска], [Характеристики], [Срок_гарантия], [Описание], [Цена]) VALUES (@Код_вида, @Марка, @Фирма_производитель, @Страна_производитель, @Дата_выпуска, @Характеристики, @Срок_гарантия, @Описание, @Цена)" 
            SelectCommand="SELECT * FROM [Комплектующие]" 
            UpdateCommand="UPDATE [Комплектующие] SET [Код_вида] = @Код_вида, [Марка] = @Марка, [Фирма_производитель] = @Фирма_производитель, [Страна_производитель] = @Страна_производитель, [Дата_выпуска] = @Дата_выпуска, [Характеристики] = @Характеристики, [Срок_гарантия] = @Срок_гарантия, [Описание] = @Описание, [Цена] = @Цена WHERE [Код_комплектующего] = @Код_комплектующего">
            <DeleteParameters>
                <asp:Parameter Name="Код_комплектующего" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter Controlid="Dropdownlist1" Name="Код_вида" Type="Int32" />
                <asp:ControlParameter Controlid="TextBox1" Name="Марка" Type="String" />
                <asp:ControlParameter Controlid="TextBox2" Name="Фирма_производитель" Type="String" />
                <asp:ControlParameter Controlid="TextBox3" Name="Страна_производитель" Type="String" />
                <asp:ControlParameter Controlid="Calendar1" DbType="Date" Name="Дата_выпуска" />
                <asp:ControlParameter Controlid="TextBox5" Name="Характеристики" Type="String" />
                <asp:ControlParameter Controlid="TextBox6" Name="Срок_гарантия" Type="String" />
                <asp:ControlParameter Controlid="TextBox7" Name="Описание" Type="String" />
                <asp:ControlParameter Controlid="TextBox8" Name="Цена" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Код_вида" Type="Int32" />
                <asp:Parameter Name="Марка" Type="String" />
                <asp:Parameter Name="Фирма_производитель" Type="String" />
                <asp:Parameter Name="Страна_производитель" Type="String" />
                <asp:Parameter Name="Дата_выпуска" DbType="Date" />
                <asp:Parameter Name="Характеристики" Type="String" />
                <asp:Parameter Name="Срок_гарантия" Type="String" />
                <asp:Parameter Name="Описание" Type="String" />
                <asp:Parameter Name="Цена" Type="Int32" />
                <asp:Parameter Name="Код_комплектующего" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" 
        DataKeyNames="Код_комплектующего" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_комплектующего" HeaderText="Код_комплектующего" 
                ReadOnly="True" SortExpression="Код_комплектующего" 
                InsertVisible="False" />
            <asp:BoundField DataField="Код_вида" HeaderText="Код_вида" 
                SortExpression="Код_вида" />
            <asp:BoundField DataField="Марка" HeaderText="Марка" SortExpression="Марка" />
            <asp:BoundField DataField="Фирма_производитель" 
                HeaderText="Фирма_производитель" SortExpression="Фирма_производитель" />
            <asp:BoundField DataField="Страна_производитель" 
                HeaderText="Страна_производитель" SortExpression="Страна_производитель" />
            <asp:BoundField DataField="Дата_выпуска" HeaderText="Дата_выпуска" 
                SortExpression="Дата_выпуска" />
            <asp:BoundField DataField="Характеристики" HeaderText="Характеристики" 
                SortExpression="Характеристики" />
            <asp:BoundField DataField="Срок_гарантия" HeaderText="Срок_гарантия" 
                SortExpression="Срок_гарантия" />
            <asp:BoundField DataField="Описание" HeaderText="Описание" 
                SortExpression="Описание" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
        </Columns>
    </asp:GridView>




    <p> <asp:Label ID="Label1" runat="server" Text="Марка:                          " 
               Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="145px" style="margin-left: 134px" 
               Visible="False"></asp:TextBox>
        </p>
       <p>  <asp:Label ID="Label3" runat="server" Text="Фирма_производитель:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 27px" 
        Width="145px" Visible="False"></asp:TextBox></p>

         <p> <asp:Label ID="Label4" runat="server" Text="Страна_производитель:                          " 
               Visible="False"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="145px" style="margin-left: 21px" 
               Visible="False"></asp:TextBox>
           <asp:Label ID="Label5" runat="server" BackColor="Red" BorderColor="Red" 
               Text="Данное поле должно содержать только буквы, хотя бы одну" 
               Visible="False"></asp:Label>
        </p>
    </div>
    <p><asp:Label ID="Label6" runat="server" Text="Дата_выпуска:" Visible="False"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </p>

  <p>  <asp:Label ID="Label8" runat="server" Text="Характеристики:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 75px" 
        Width="145px" Visible="False"></asp:TextBox></p>

   <p> <asp:Label ID="Label9" runat="server" Text="Срок_гарантия:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 84px" 
        Width="145px" Visible="False"></asp:TextBox>

         <p>  <asp:Label ID="Label11" runat="server" Text="Описание:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 114px" 
        Width="145px" Visible="False"></asp:TextBox></p>

    <p><asp:Label ID="Label12" runat="server" Text="Цена:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 150px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label13" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, хотя бы одну" Visible="False"></asp:Label></p>

         <asp:Label ID="Label14" runat="server" Text="Код_вида:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Наименование" 
        DataValueField="Код_вида" Height="20px" style="margin-left: 119px" 
        Width="145px" Visible="False">
    </asp:DropDownList>

    <p>
    <asp:Button ID="Button1" runat="server" Text="ОК" Visible="False" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Добавить" />
    </p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        
        SelectCommand="SELECT [Код_вида], [Наименование] FROM [Виды комплектующих]">
    </asp:SqlDataSource>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm8.aspx" 
        Text="Назад" />

    </form>
</body>
</html>
