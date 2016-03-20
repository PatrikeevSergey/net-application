<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm7.aspx.vb" Inherits="KURR.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        DeleteCommand="DELETE FROM [Заказы] WHERE [Код_заказа] = @Код_заказа" 
        InsertCommand="INSERT INTO [Заказы] ([Дата_заказа], [Дата_исполнения], [Код_заказчика], [Код_комплектующего_1], [Код_комплектующего_2], [Код_комплектующего_3], [Доля_предоплаты], [Отметка_об_оплате], [Отметка_об_исполнении], [Общая_стоимость], [Срок_общей_гарантии], [Код_услуги_1], [Код_услуги_2], [Код_услуги_3], [Код_сотрудника]) VALUES (@Дата_заказа, @Дата_исполнения, @Код_заказчика, @Код_комплектующего_1, @Код_комплектующего_2, @Код_комплектующего_3, @Доля_предоплаты, @Отметка_об_оплате, @Отметка_об_исполнении, @Общая_стоимость, @Срок_общей_гарантии, @Код_услуги_1, @Код_услуги_2, @Код_услуги_3, @Код_сотрудника)" 
        SelectCommand="SELECT * FROM [Заказы]" 
        
        UpdateCommand="UPDATE [Заказы] SET [Дата_заказа] = @Дата_заказа, [Дата_исполнения] = @Дата_исполнения, [Код_заказчика] = @Код_заказчика, [Код_комплектующего_1] = @Код_комплектующего_1, [Код_комплектующего_2] = @Код_комплектующего_2, [Код_комплектующего_3] = @Код_комплектующего_3, [Доля_предоплаты] = @Доля_предоплаты, [Отметка_об_оплате] = @Отметка_об_оплате, [Отметка_об_исполнении] = @Отметка_об_исполнении, [Общая_стоимость] = @Общая_стоимость, [Срок_общей_гарантии] = @Срок_общей_гарантии, [Код_услуги_1] = @Код_услуги_1, [Код_услуги_2] = @Код_услуги_2, [Код_услуги_3] = @Код_услуги_3, [Код_сотрудника] = @Код_сотрудника WHERE [Код_заказа] = @Код_заказа">
        <DeleteParameters>
            <asp:Parameter Name="Код_заказа" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Controlid="Calendar1" Name="Дата_заказа" DbType="Date" />
            <asp:ControlParameter Controlid="Calendar2" Name="Дата_исполнения" DbType="Date" />
            <asp:ControlParameter Controlid="DropDownList1" Name="Код_заказчика" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList3" Name="Код_комплектующего_1" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList4" Name="Код_комплектующего_2" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList5" Name="Код_комплектующего_3" Type="Int32" />
            <asp:ControlParameter Controlid="TextBox5" Name="Доля_предоплаты" Type="Int32" />
            <asp:ControlParameter Controlid="CheckBox1" Name="Отметка_об_оплате" Type="Boolean" />
            <asp:ControlParameter Controlid="CheckBox2" Name="Отметка_об_исполнении" Type="Boolean" />
            <asp:ControlParameter Controlid="TextBox10" Name="Общая_стоимость" Type="Int32" />
            <asp:ControlParameter Controlid="TextBox6" Name="Срок_общей_гарантии" Type="String" />
            <asp:ControlParameter Controlid="DropDownList6" Name="Код_услуги_1" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList7" Name="Код_услуги_2" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList8" Name="Код_услуги_3" Type="Int32" />
            <asp:ControlParameter Controlid="DropDownList2" Name="Код_сотрудника" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Дата_заказа" DbType="Date" />
            <asp:Parameter Name="Дата_исполнения" DbType="Date" />
            <asp:Parameter Name="Код_заказчика" Type="Int32" />
            <asp:Parameter Name="Код_комплектующего_1" Type="Int32" />
            <asp:Parameter Name="Код_комплектующего_2" Type="Int32" />
            <asp:Parameter Name="Код_комплектующего_3" Type="Int32" />
            <asp:Parameter Name="Доля_предоплаты" Type="Int32" />
            <asp:Parameter Name="Отметка_об_оплате" Type="Boolean" />
            <asp:Parameter Name="Отметка_об_исполнении" Type="Boolean" />
            <asp:Parameter Name="Общая_стоимость" Type="Int32" />
            <asp:Parameter Name="Срок_общей_гарантии" Type="String" />
            <asp:Parameter Name="Код_услуги_1" Type="Int32" />
            <asp:Parameter Name="Код_услуги_2" Type="Int32" />
            <asp:Parameter Name="Код_услуги_3" Type="Int32" />
            <asp:Parameter Name="Код_сотрудника" Type="Int32" />
            <asp:Parameter Name="Код_заказа" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Код_заказа" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Код_заказа" HeaderText="Код_заказа" ReadOnly="True" 
                SortExpression="Код_заказа" />
            <asp:BoundField DataField="Дата_заказа" HeaderText="Дата_заказа" 
                SortExpression="Дата_заказа" />
            <asp:BoundField DataField="Дата_исполнения" HeaderText="Дата_исполнения" 
                SortExpression="Дата_исполнения" />
            <asp:BoundField DataField="Код_заказчика" HeaderText="Код_заказчика" 
                SortExpression="Код_заказчика" />
            <asp:BoundField DataField="Код_комплектующего_1" 
                HeaderText="Код_комплектующего_1" SortExpression="Код_комплектующего_1" />
            <asp:BoundField DataField="Код_комплектующего_2" 
                HeaderText="Код_комплектующего_2" SortExpression="Код_комплектующего_2" />
            <asp:BoundField DataField="Код_комплектующего_3" 
                HeaderText="Код_комплектующего_3" SortExpression="Код_комплектующего_3" />
            <asp:BoundField DataField="Доля_предоплаты" HeaderText="Доля_предоплаты" 
                SortExpression="Доля_предоплаты" />
            <asp:CheckBoxField DataField="Отметка_об_оплате" HeaderText="Отметка_об_оплате" 
                SortExpression="Отметка_об_оплате" />
            <asp:CheckBoxField DataField="Отметка_об_исполнении" 
                HeaderText="Отметка_об_исполнении" SortExpression="Отметка_об_исполнении" />
            <asp:BoundField DataField="Общая_стоимость" HeaderText="Общая_стоимость" 
                SortExpression="Общая_стоимость" />
            <asp:BoundField DataField="Срок_общей_гарантии" 
                HeaderText="Срок_общей_гарантии" 
                SortExpression="Срок_общей_гарантии" />
            <asp:BoundField DataField="Код_услуги_1" HeaderText="Код_услуги_1" 
                SortExpression="Код_услуги_1" />
            <asp:BoundField DataField="Код_услуги_2" HeaderText="Код_услуги_2" 
                SortExpression="Код_услуги_2" />
            <asp:BoundField DataField="Код_услуги_3" HeaderText="Код_услуги_3" 
                SortExpression="Код_услуги_3" />
            <asp:BoundField DataField="Код_сотрудника" HeaderText="Код_сотрудника" 
                SortExpression="Код_сотрудника" />
        </Columns>
    </asp:GridView>

    <p><asp:Label ID="Label1" runat="server" Text="Дата_заказа:" Visible="False"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </p>
        <p><asp:Label ID="Label2" runat="server" Text="Дата_исполнения:" Visible="False"></asp:Label>
            <asp:Calendar ID="Calendar2" runat="server" Visible="False"></asp:Calendar>
    </p>
        <p><asp:Label ID="Label10" runat="server" Text="Доля_предоплаты:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 74px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label11" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, хотя бы одну" Visible="False"></asp:Label></p>
        <p><asp:Label ID="Label12" runat="server" Text="Срок_общей_гарантии:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 42px" 
        Width="145px" Visible="False"></asp:TextBox>
                <p><asp:Label ID="Label25" runat="server" Text="Общая_стоимость:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 71px" 
        Width="145px" Visible="False"></asp:TextBox>
    <asp:Label ID="Label26" runat="server" BackColor="Red" 
        Text="Данное поле должно содержать только цифры, хотя бы одну" Visible="False"></asp:Label></p>
         <p><asp:Label ID="Label20" runat="server" Text="Отметка_об_оплате:" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:CheckBox ID="CheckBox1" runat="server" Visible="False" />
    </p>
<p><asp:Label ID="Label21" runat="server" Text="Отметка_об_исполнении:" Visible="False"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:CheckBox ID="CheckBox2" runat="server" Visible="False" />
    </p>

        <asp:Label ID="Label22" runat="server" Text="Код_заказчика:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="ФИО" 
        DataValueField="Код_заказчика" Height="20px" style="margin-left: 48px" 
        Width="144px" Visible="False">
    </asp:DropDownList>
        <br />
        <asp:Label ID="Label23" runat="server" Text="Код_сотрудника:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="ФИО" 
        DataValueField="Код_сотрудника" Height="20px" style="margin-left: 35px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    <p>
     <asp:Label ID="Label3" runat="server" Text="Код_комплектующего_1:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="Марка" 
        DataValueField="Код_комплектующего" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
        <p>
     <asp:Label ID="Label4" runat="server" Text="Код_комплектующего_2:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="Марка" 
        DataValueField="Код_комплектующего" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
        <p>
     <asp:Label ID="Label5" runat="server" Text="Код_комплектующего_3:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList5" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="Марка" 
        DataValueField="Код_комплектующего" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
         <p>
     <asp:Label ID="Label6" runat="server" Text="Код_услуги_1:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList6" runat="server" 
        DataSourceID="SqlDataSource5" DataTextField="Наименование" 
        DataValueField="Код_услуги" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
         <p>
     <asp:Label ID="Label7" runat="server" Text="Код_услуги_2:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList7" runat="server" 
        DataSourceID="SqlDataSource5" DataTextField="Наименование" 
        DataValueField="Код_услуги" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
             <p>
     <asp:Label ID="Label8" runat="server" Text="Код_услуги_3:" Visible="False"></asp:Label>
    <asp:DropDownList ID="DropDownList8" runat="server" 
        DataSourceID="SqlDataSource5" DataTextField="Наименование" 
        DataValueField="Код_услуги" Height="20px" style="margin-left: 48px" 
        Width="145px" Visible="False">
    </asp:DropDownList>
    </p>
    <p>
    <asp:Button ID="Button1" runat="server" Text="ОК" Visible="False" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Добавить" />
    </p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_заказчика], [ФИО] FROM [Заказчики]">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_сотрудника], [ФИО] FROM [Сотрудники]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_комплектующего], [Марка] FROM [Комплектующие]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_услуги], [Наименование] FROM [Услуги]">
    </asp:SqlDataSource>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" PostBackUrl="~/WebForm8.aspx" 
        Text="Назад" />
    <br />


    </form>
</body>
</html>
