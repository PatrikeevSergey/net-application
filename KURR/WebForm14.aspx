<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm14.aspx.vb" Inherits="KURR.WebForm14" %>

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
            
            
            
            
            
            SelectCommand="SELECT Заказчики.ФИО AS [ФИО Заказчика], Заказчики.Адрес, Заказчики.Телефон, Сотрудники.ФИО AS [ФИО Сотрудника], Комплектующие.Марка AS [Марка 1-го комлектующего], Комплектующие.Характеристики AS [Характеристики 1-го комплектующего], Комплектующие.Цена AS [Цена 1-го комплектующего], Комплектующие_1.Марка AS [Марка 2-го комлектующего], Комплектующие_1.Характеристики AS [Характеристики 2-го комплектующего], Комплектующие_1.Цена AS [Цена 2-го комплектующего], Комплектующие_2.Марка AS [Марка 3-го комлектующего], Комплектующие_2.Характеристики AS [Характеристики 3-го комплектующего], Комплектующие_2.Цена AS [Цена 3-го комплектующего], Услуги.Наименование AS [Наименование 1-й услуги], Услуги.Стоимость AS [Стоимость 1-й услуги], Услуги_1.Наименование AS [Наименование 2-й услуги], Услуги_1.Стоимость AS [Стоимость 2-й услуги], Услуги_2.Наименование AS [Наименование 2-й услуги], Услуги_2.Стоимость AS [Стоимость 2-й услуги], Заказы.Дата_заказа FROM Заказы INNER JOIN Заказчики ON Заказы.Код_заказчика = Заказчики.Код_заказчика INNER JOIN Сотрудники ON Заказы.Код_сотрудника = Сотрудники.Код_сотрудника INNER JOIN Комплектующие ON Заказы.Код_комплектующего_3 = Комплектующие.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_1 ON Заказы.Код_комплектующего_1 = Комплектующие_1.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_2 ON Заказы.Код_комплектующего_2 = Комплектующие_2.Код_комплектующего INNER JOIN Услуги AS Услуги_1 ON Заказы.Код_услуги_1 = Услуги_1.Код_услуги INNER JOIN Услуги ON Заказы.Код_услуги_3 = Услуги.Код_услуги INNER JOIN Услуги AS Услуги_2 ON Заказы.Код_услуги_2 = Услуги_2.Код_услуги">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ФИО Заказчика" HeaderText="ФИО Заказчика" 
                SortExpression="ФИО Заказчика" />
            <asp:BoundField DataField="Адрес" 
                HeaderText="Адрес" SortExpression="Адрес" />
            <asp:BoundField DataField="Телефон" 
                HeaderText="Телефон" SortExpression="Телефон" />
            <asp:BoundField DataField="ФИО Сотрудника" 
                HeaderText="ФИО Сотрудника" SortExpression="ФИО Сотрудника" />
            <asp:BoundField DataField="Марка 1-го комлектующего" 
                HeaderText="Марка 1-го комлектующего" 
                SortExpression="Марка 1-го комлектующего" />
            <asp:BoundField DataField="Характеристики 1-го комплектующего" 
                HeaderText="Характеристики 1-го комплектующего" 
                SortExpression="Характеристики 1-го комплектующего" />
            <asp:BoundField DataField="Цена 1-го комплектующего" HeaderText="Цена 1-го комплектующего" 
                SortExpression="Цена 1-го комплектующего" />
            <asp:BoundField DataField="Марка 2-го комлектующего" HeaderText="Марка 2-го комлектующего" 
                SortExpression="Марка 2-го комлектующего" />
            <asp:BoundField DataField="Характеристики 2-го комплектующего" HeaderText="Характеристики 2-го комплектующего" 
                SortExpression="Характеристики 2-го комплектующего" />
            <asp:BoundField DataField="Цена 2-го комплектующего" HeaderText="Цена 2-го комплектующего" 
                SortExpression="Цена 2-го комплектующего" />
            <asp:BoundField DataField="Марка 3-го комлектующего" 
                HeaderText="Марка 3-го комлектующего" 
                SortExpression="Марка 3-го комлектующего" />
            <asp:BoundField DataField="Характеристики 3-го комплектующего" 
                HeaderText="Характеристики 3-го комплектующего" 
                SortExpression="Характеристики 3-го комплектующего" />
            <asp:BoundField DataField="Цена 3-го комплектующего" HeaderText="Цена 3-го комплектующего" 
                SortExpression="Цена 3-го комплектующего" />
            <asp:BoundField DataField="Наименование 1-й услуги" HeaderText="Наименование 1-й услуги" 
                SortExpression="Наименование 1-й услуги" />
            <asp:BoundField DataField="Стоимость 1-й услуги" HeaderText="Стоимость 1-й услуги" 
                SortExpression="Стоимость 1-й услуги" />
            <asp:BoundField DataField="Наименование 2-й услуги" HeaderText="Наименование 2-й услуги" 
                SortExpression="Наименование 2-й услуги" />
            <asp:BoundField DataField="Стоимость 2-й услуги" 
                HeaderText="Стоимость 2-й услуги" SortExpression="Стоимость 2-й услуги" />
            <asp:BoundField DataField="Наименование 2-й услуги1" HeaderText="Наименование 2-й услуги1" 
                SortExpression="Наименование 2-й услуги1" />
            <asp:BoundField DataField="Стоимость 2-й услуги1" HeaderText="Стоимость 2-й услуги1" 
                SortExpression="Стоимость 2-й услуги1" />
            <asp:BoundField DataField="Дата_заказа" HeaderText="Дата_заказа" 
                SortExpression="Дата_заказа" />
        </Columns>
    </asp:GridView>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
SelectCommand="SELECT Заказчики.ФИО AS [ФИО Заказчика], Заказчики.Адрес, Заказчики.Телефон, Сотрудники.ФИО AS [ФИО Сотрудника], Комплектующие.Марка AS [Марка 1-го комлектующего], Комплектующие.Характеристики AS [Характеристики 1-го комплектующего], Комплектующие.Цена AS [Цена 1-го комплектующего], Комплектующие_1.Марка AS [Марка 2-го комлектующего], Комплектующие_1.Характеристики AS [Характеристики 2-го комплектующего], Комплектующие_1.Цена AS [Цена 2-го комплектующего], Комплектующие_2.Марка AS [Марка 3-го комлектующего], Комплектующие_2.Характеристики AS [Характеристики 3-го комплектующего], Комплектующие_2.Цена AS [Цена 3-го комплектующего], Услуги.Наименование AS [Наименование 1-й услуги], Услуги.Стоимость AS [Стоимость 1-й услуги], Услуги_1.Наименование AS [Наименование 2-й услуги], Услуги_1.Стоимость AS [Стоимость 2-й услуги], Услуги_2.Наименование AS [Наименование 2-й услуги], Услуги_2.Стоимость AS [Стоимость 2-й услуги], Заказы.Дата_заказа FROM Заказы INNER JOIN Заказчики ON Заказы.Код_заказчика = Заказчики.Код_заказчика INNER JOIN Сотрудники ON Заказы.Код_сотрудника = Сотрудники.Код_сотрудника INNER JOIN Комплектующие ON Заказы.Код_комплектующего_3 = Комплектующие.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_1 ON Заказы.Код_комплектующего_1 = Комплектующие_1.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_2 ON Заказы.Код_комплектующего_2 = Комплектующие_2.Код_комплектующего INNER JOIN Услуги AS Услуги_1 ON Заказы.Код_услуги_1 = Услуги_1.Код_услуги INNER JOIN Услуги ON Заказы.Код_услуги_3 = Услуги.Код_услуги INNER JOIN Услуги AS Услуги_2 ON Заказы.Код_услуги_2 = Услуги_2.Код_услуги where (Заказчики.Код_заказчика=@Код)">
   <selectParameters>
                <asp:ControlParameter ControlID = "dropdownlist1" Name="Код" Type="Int32" />
            </selectParameters> 
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="ФИО" 
        DataValueField="Код_заказчика">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" style="margin-left: 74px" 
        Text="Фильтровать отдельных заказчиков" />
    <asp:Button ID="Button3" runat="server" style="margin-left: 83px" 
        Text="Отмена" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_заказчика], [ФИО] FROM [Заказчики]">
    </asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT Заказчики.ФИО AS [ФИО Заказчика], Заказчики.Адрес, Заказчики.Телефон, Сотрудники.ФИО AS [ФИО Сотрудника], Комплектующие.Марка AS [Марка 1-го комлектующего], Комплектующие.Характеристики AS [Характеристики 1-го комплектующего], Комплектующие.Цена AS [Цена 1-го комплектующего], Комплектующие_1.Марка AS [Марка 2-го комлектующего], Комплектующие_1.Характеристики AS [Характеристики 2-го комплектующего], Комплектующие_1.Цена AS [Цена 2-го комплектующего], Комплектующие_2.Марка AS [Марка 3-го комлектующего], Комплектующие_2.Характеристики AS [Характеристики 3-го комплектующего], Комплектующие_2.Цена AS [Цена 3-го комплектующего], Услуги.Наименование AS [Наименование 1-й услуги], Услуги.Стоимость AS [Стоимость 1-й услуги], Услуги_1.Наименование AS [Наименование 2-й услуги], Услуги_1.Стоимость AS [Стоимость 2-й услуги], Услуги_2.Наименование AS [Наименование 2-й услуги], Услуги_2.Стоимость AS [Стоимость 2-й услуги], Заказы.Дата_заказа FROM Заказы INNER JOIN Заказчики ON Заказы.Код_заказчика = Заказчики.Код_заказчика INNER JOIN Сотрудники ON Заказы.Код_сотрудника = Сотрудники.Код_сотрудника INNER JOIN Комплектующие ON Заказы.Код_комплектующего_3 = Комплектующие.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_1 ON Заказы.Код_комплектующего_1 = Комплектующие_1.Код_комплектующего INNER JOIN Комплектующие AS Комплектующие_2 ON Заказы.Код_комплектующего_2 = Комплектующие_2.Код_комплектующего INNER JOIN Услуги AS Услуги_1 ON Заказы.Код_услуги_1 = Услуги_1.Код_услуги INNER JOIN Услуги ON Заказы.Код_услуги_3 = Услуги.Код_услуги INNER JOIN Услуги AS Услуги_2 ON Заказы.Код_услуги_2 = Услуги_2.Код_услуги where (Заказы.Код_заказа=@Код)">
    <selectParameters>
                <asp:ControlParameter ControlID = "dropdownlist1" Name="Код" Type="Int32" />
            </selectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource5" DataTextField="Дата_заказа" 
        DataValueField="Код_заказа" style="margin-left: 193px" Width="149px">
    </asp:DropDownList>
    <asp:Button ID="Button4" runat="server" style="margin-left: 74px" 
        Text="Фильтровать по дате заказа" />
    <asp:Button ID="Button5" runat="server" style="margin-left: 152px" 
        Text="Отмена" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_заказа], [Дата_заказа] FROM [Заказы]">
    </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm9.aspx" 
        Text="Назад" />
    </form>
</body>
</html>
