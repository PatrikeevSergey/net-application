<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="KURR.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
            DeleteCommand="DELETE FROM [Сотрудники] WHERE [Код_сотрудника] = @Код_сотрудника" 
            InsertCommand="INSERT INTO [Сотрудники] ( [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные_данные], [Код_должности]) VALUES ( @ФИО1, @Возраст, @Пол, @Адрес, @Телефон, @Паспортные_данные, @Код_должности)" 
            SelectCommand="SELECT * FROM [Сотрудники]" 
            UpdateCommand="UPDATE [Сотрудники] SET [ФИО] = @ФИО, [Возраст] = @Возраст, [Пол] = @Пол, [Адрес] = @Адрес, [Телефон] = @Телефон, [Паспортные_данные] = @Паспортные_данные, [Код_должности] = @Код_должности WHERE [Код_сотрудника] = @Код_сотрудника">
            <DeleteParameters>
                <asp:Parameter Name="Код_сотрудника" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlId="TextBox1" Name="ФИО1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox2" Name="Возраст" Type="Int32" />
                <asp:ControlParameter ControlID="dropdownlist1" Name="Пол" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="Адрес" Type="String" />
                <asp:ControlParameter ControlId="Textbox4" Name="Телефон" Type="String" />
                <asp:ControlParameter ControlID="Textbox5" Name="Паспортные_данные" Type="String" />
                <asp:ControlParameter ControlID="dropdownlist2" Name="Код_должности" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ФИО" Type="String" />
                <asp:Parameter Name="Возраст" Type="Int32" />
                <asp:Parameter Name="Пол" Type="String" />
                <asp:Parameter Name="Адрес" Type="String" />
                <asp:Parameter Name="Телефон" Type="String" />
                <asp:Parameter Name="Паспортные_данные" Type="String" />
                <asp:Parameter Name="Код_должности" Type="Int32" />
                <asp:Parameter Name="Код_сотрудника" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_сотрудника" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" 
                ReadOnly="True" SortExpression="Код_сотрудника" />
            <asp:BoundField DataField="ФИО" HeaderText="ФИО" SortExpression="ФИО" />
            <asp:BoundField DataField="Возраст" HeaderText="Возраст" 
                SortExpression="Возраст" />
            <asp:BoundField DataField="Пол" HeaderText="Пол" SortExpression="Пол" />
            <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" HeaderText="Телефон" 
                SortExpression="Телефон" />
            <asp:BoundField DataField="Паспортные_данные" HeaderText="Паспортные_данные" 
                SortExpression="Паспортные_данные" />
            <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" 
                SortExpression="Код_должности" />
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
    <p><asp:Label ID="Label3" runat="server" Text="Возраст:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 100px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, хотя бы одну" Visible="False"></asp:Label></p>
    <p><asp:Label ID="Label5" runat="server" Text="Пол:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" 
        style="margin-left: 127px" Width="145px" Visible="False">
        <asp:ListItem>Мужской</asp:ListItem>
        <asp:ListItem>Женский</asp:ListItem>
    </asp:DropDownList></p>

  <p>  <asp:Label ID="Label6" runat="server" Text="Адрес:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 114px" 
        Width="145px" Visible="False"></asp:TextBox></p>

   <p> <asp:Label ID="Label7" runat="server" Text="Телефон:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 98px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, не больше 11" Visible="False"></asp:Label></p>

    <p><asp:Label ID="Label9" runat="server" Text="Паспортные_данные:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 17px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label10" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать 10 цифр" Visible="False"></asp:Label></p>

    <asp:Label ID="Label11" runat="server" Text="Код_должности:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="Наименование_должности" 
        DataValueField="Код_должности" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    <p>
    <asp:Button ID="Button1" runat="server" Text="ОК" Visible="False" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Добавить" />
    </p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_должности], [Наименование_должности] FROM [Должности]">
    </asp:SqlDataSource>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm8.aspx" 
        Text="Назад" />

    </form>
</body>
</html>
