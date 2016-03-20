<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm13.aspx.vb" Inherits="KURR.WebForm13" %>

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
            
            SelectCommand="SELECT [Виды комплектующих].Код_вида, [Виды комплектующих].Наименование, [Виды комплектующих].Описание AS [Описание вида], Комплектующие.Марка, Комплектующие.Фирма_производитель, Комплектующие.Характеристики, Комплектующие.Описание AS [Описание комплектующего], Комплектующие.Дата_выпуска, Комплектующие.Цена, Комплектующие.Страна_производитель, Комплектующие.Срок_гарантия FROM Комплектующие INNER JOIN [Виды комплектующих] ON Комплектующие.Код_вида = [Виды комплектующих].Код_вида">
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Код_вида" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Код_вида" HeaderText="Код_вида" 
                InsertVisible="False" ReadOnly="True" SortExpression="Код_вида" />
            <asp:BoundField DataField="Наименование" HeaderText="Наименование" 
                SortExpression="Наименование" />
            <asp:BoundField DataField="Описание вида" 
                HeaderText="Описание вида" SortExpression="Описание вида" />
            <asp:BoundField DataField="Марка" 
                HeaderText="Марка" SortExpression="Марка" />
            <asp:BoundField DataField="Фирма_производитель" HeaderText="Фирма_производитель" 
                SortExpression="Фирма_производитель" />
            <asp:BoundField DataField="Характеристики" HeaderText="Характеристики" 
                SortExpression="Характеристики" />
            <asp:BoundField DataField="Описание комплектующего" HeaderText="Описание комплектующего" 
                SortExpression="Описание комплектующего" />
            <asp:BoundField DataField="Дата_выпуска" HeaderText="Дата_выпуска" 
                SortExpression="Дата_выпуска" />
            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
            <asp:BoundField DataField="Страна_производитель" HeaderText="Страна_производитель" 
                SortExpression="Страна_производитель" />
            <asp:BoundField DataField="Срок_гарантия" 
                HeaderText="Срок_гарантия" 
                SortExpression="Срок_гарантия" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Виды комплектующих].Код_вида, [Виды комплектующих].Наименование, [Виды комплектующих].Описание AS [Описание вида], Комплектующие.Марка, Комплектующие.Фирма_производитель, Комплектующие.Характеристики, Комплектующие.Описание AS [Описание комплектующего], Комплектующие.Дата_выпуска, Комплектующие.Цена, Комплектующие.Страна_производитель, Комплектующие.Срок_гарантия FROM Комплектующие INNER JOIN [Виды комплектующих] ON Комплектующие.Код_вида = [Виды комплектующих].Код_вида where ([Виды комплектующих].Код_вида=@Код)">
   <selectParameters>
                <asp:ControlParameter ControlID = "dropdownlist1" Name="Код" Type="Int32" />
            </selectParameters>
  




    </asp:SqlDataSource>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Наименование" 
        DataValueField="Код_вида" style="margin-left: 251px">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" style="margin-left: 157px" 
        Text="Фильтровать" />
    <asp:Button ID="Button3" runat="server" style="margin-left: 91px" 
        Text="Отмена" />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource 
        ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KFFConnectionString %>" 
        SelectCommand="SELECT [Код_вида], [Наименование] FROM [Виды комплектующих]">
    </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm9.aspx" 
        Text="Назад" />
    </form>
</body>
</html>
