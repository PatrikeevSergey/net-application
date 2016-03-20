Public Class WebForm3
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
        If k1 = 1 Then
            SqlDataSource1.Insert()
            Label1.Visible = False
            TextBox1.Visible = False
            Label3.Visible = False
            TextBox2.Visible = False
            Button1.Visible = False
            Button2.Visible = True
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Label1.Visible = True
        TextBox1.Visible = True
        Label3.Visible = True
        TextBox2.Visible = True
        Button1.Visible = True
        Button2.Visible = False
    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox1.TextChanged

    End Sub
End Class