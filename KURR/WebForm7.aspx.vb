Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim I As Integer
        Dim N As Integer
        Dim k As Integer
        Dim k1 As Integer
        k = 0
        k1 = 0
        N = Len(TextBox5.Text)
        If N = 0 Then
            Label11.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox5.Text, I, 1)) >= 48 And Asc(Mid(TextBox5.Text, I, 1)) <= 57 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label11.Visible = False
                k1 = k1 + 1
            Else
                Label11.Visible = True
            End If
        End If
        k = 0
        N = Len(TextBox10.Text)
        If N = 0 Then
            Label26.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox10.Text, I, 1)) >= 48 And Asc(Mid(TextBox10.Text, I, 1)) <= 57 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label26.Visible = False
                k1 = k1 + 1
            Else
                Label26.Visible = True
            End If
        End If
        If k1 = 2 Then
            SqlDataSource1.Insert()
            Label1.Visible = False
            Calendar1.Visible = False
            Label2.Visible = False
            Calendar2.Visible = False
            Label3.Visible = False
            DropDownList3.Visible = False
            Label4.Visible = False
            DropDownList4.Visible = False
            Label5.Visible = False
            DropDownList5.Visible = False
            Label10.Visible = False
            TextBox5.Visible = False
            Label12.Visible = False
            TextBox6.Visible = False
            Label6.Visible = False
            DropDownList6.Visible = False
            Label7.Visible = False
            DropDownList7.Visible = False
            Label8.Visible = False
            DropDownList8.Visible = False
            Label25.Visible = False
            TextBox10.Visible = False
            Label20.Visible = False
            CheckBox1.Visible = False
            Label21.Visible = False
            CheckBox2.Visible = False
            Label22.Visible = False
            DropDownList1.Visible = False
            Label23.Visible = False
            DropDownList2.Visible = False
            Button1.Visible = False
            Button2.Visible = True
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Label1.Visible = True
        Calendar1.Visible = True
        Label2.Visible = True
        Calendar2.Visible = True
        Label3.Visible = True
        DropDownList3.Visible = True
        Label4.Visible = True
        DropDownList4.Visible = True
        Label5.Visible = True
        DropDownList5.Visible = True
        Label10.Visible = True
        TextBox5.Visible = True
        Label12.Visible = True
        TextBox6.Visible = True
        Label6.Visible = True
        DropDownList6.Visible = True
        Label7.Visible = True
        DropDownList7.Visible = True
        Label8.Visible = True
        DropDownList8.Visible = True
        Label25.Visible = True
        TextBox10.Visible = True
        Label20.Visible = True
        CheckBox1.Visible = True
        Label21.Visible = True
        CheckBox2.Visible = True
        Label22.Visible = True
        DropDownList1.Visible = True
        Label23.Visible = True
        DropDownList2.Visible = True
        Button1.Visible = True
        Button2.Visible = False

    End Sub
End Class