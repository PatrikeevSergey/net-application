<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm12.aspx.vb" Inherits="KURR.WebForm12" %>

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
            
            SelectCommand="SELECT Должности.Код_должности, Должности.Наименование_должности, Должности.Оклад, Должности.Обязанности, Должности.Требования, Сотрудники.ФИО, Сотрудники.Возраст, Сотрудники.Пол, Сотрудники.Адрес, Сотрудники.Телефон, Сотрудники.Паспортные_данные FROM Должности INNER JOIN Сотрудники ON Должности.Код_должности = Сотрудники.Код_должности">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="Код_должности" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Код_должности" HeaderText="Код_должности" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Код_должности" />
                <asp:BoundField DataField="Наименование_должности" HeaderText="Наименование_должности" 
                    SortExpression="Наименование_должности" />
                <asp:BoundField DataField="Оклад" 
                    HeaderText="Оклад" SortExpression="Оклад" />
                <asp:BoundField DataField="Обязанности" HeaderText="Обязанности" 
                    SortExpression="Обязанности" />
                <asp:BoundField DataField="Требования" HeaderText="Требования" 
                    SortExpression="Требования" />
                <asp:BoundField DataField="ФИО" HeaderText="ФИО" 
                    SortExpression="ФИО" />
                <asp:BoundField DataField="Возраст" HeaderText="Возраст" 
                    SortExpression="Возраст" />
                <asp:BoundField DataField="Пол" HeaderText="Пол" 
                    SortExpression="Пол" />
                <asp:BoundField DataField="Адрес" HeaderText="Адрес" SortExpression="Адрес" />
                <asp:BoundField DataField="Телефон" HeaderText="Телефон" 
                    SortExpression="Телефон" />
                <asp:BoundField DataField="Паспортные_данные" HeaderText="Паспортные_данные" 
                    SortExpression="Паспортные_данные" />
            </Columns>
        </asp:GridView>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource 
        ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT Должности.Код_должности, Должности.Наименование_должности, Должности.Оклад, Должности.Обязанности, Должности.Требования, Сотрудники.ФИО, Сотрудники.Возраст, Сотрудники.Пол, Сотрудники.Адрес, Сотрудники.Телефон, Сотрудники.Паспортные_данные FROM Должности INNER JOIN Сотрудники ON Должности.Код_должности = Сотрудники.Код_должности where (Должности.Код_должности=@Код)">
  <selectParameters>
                <asp:ControlParameter ControlID = "dropdownlist1" Name="Код" Type="Int32" />
            </selectParameters>
  
  
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Наименование_должности" 
        DataValueField="Код_должности" style="margin-left: 122px">
    </asp:DropDownList>
&nbsp;<asp:Button ID="Button2" runat="server" style="margin-left: 95px" 
        Text="Фильтровать" Width="160px" />
    <asp:Button ID="Button3" runat="server" style="margin-left: 45px" 
        Text="Отмена" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_должности], [Наименование_должности] FROM [Должности]">
    </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm9.aspx" 
        Text="Назад" />
    </form>
</body>
</html>
