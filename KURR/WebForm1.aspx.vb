Public Class WebForm1
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
        N = Len(TextBox1.Text)
        If N = 0 Then
            Label2.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox1.Text, I, 1)) >= 97 And Asc(Mid(TextBox1.Text, I, 1)) <= 122 Or
                    Asc(Mid(TextBox1.Text, I, 1)) >= 65 And Asc(Mid(TextBox1.Text, I, 1)) <= 90 Or
                     Asc(Mid(TextBox1.Text, I, 1)) >= 192 And Asc(Mid(TextBox1.Text, I, 1)) <= 223 Or
                     Asc(Mid(TextBox1.Text, I, 1)) >= 224 And Asc(Mid(TextBox1.Text, I, 1)) <= 255 Or
                     Asc(Mid(TextBox1.Text, I, 1)) = 32 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label2.Visible = False
                k1 = k1 + 1
            Else
                Label2.Visible = True
            End If
        End If
        k = 0
        N = Len(TextBox2.Text)
        If N = 0 Or N >= 3 Then
            Label4.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox2.Text, I, 1)) >= 48 And Asc(Mid(TextBox2.Text, I, 1)) <= 57 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label4.Visible = False
                k1 = k1 + 1
            Else
                Label4.Visible = True
            End If
        End If
        k = 0
        N = Len(TextBox4.Text)
        If N > 11 Then
            Label8.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox4.Text, I, 1)) >= 48 And Asc(Mid(TextBox4.Text, I, 1)) <= 57 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label8.Visible = False
                k1 = k1 + 1
            Else
                Label8.Visible = True
            End If
        End If
        k = 0
        N = Len(TextBox5.Text)
        If N <> 10 Then
            Label10.Visible = True
        Else
            For I = 1 To N
                If Asc(Mid(TextBox5.Text, I, 1)) >= 48 And Asc(Mid(TextBox5.Text, I, 1)) <= 57 Then
                    k = k + 1
                End If
            Next
            If k = N Then
                Label10.Visible = False
                k1 = k1 + 1
            Else
                Label10.Visible = True
            End If
        End If
        If k1 = 4 Then
            SqlDataSource1.Insert()
            Label1.Visible = False
            TextBox1.Visible = False
            Label3.Visible = False
            TextBox2.Visible = False
            Label5.Visible = False
            DropDownList1.Visible = False
            Label6.Visible = False
            TextBox3.Visible = False
            Label7.Visible = False
            TextBox4.Visible = False
            Label9.Visible = False
            TextBox5.Visible = False
            Label11.Visible = False
            DropDownList2.Visible = False
            Button1.Visible = False
            Button2.Visible = True
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Label1.Visible = True
        TextBox1.Visible = True
        Label3.Visible = True
        TextBox2.Visible = True
        Label5.Visible = True
        DropDownList1.Visible = True
        Label6.Visible = True
        TextBox3.Visible = True
        Label7.Visible = True
        TextBox4.Visible = True
        Label9.Visible = True
        TextBox5.Visible = True
        Label11.Visible = True
        DropDownList2.Visible = True
        Button1.Visible = True
        Button2.Visible = False
    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub
End Class