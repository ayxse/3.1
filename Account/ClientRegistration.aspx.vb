Imports System.Data.SqlClient
Partial Class Account_ClientRegistration
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public n As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
        Dim cmd1 As New SqlCommand("select Max(UnId) from UniqueId", con)
        Dim rs As SqlDataReader = cmd1.ExecuteReader
        rs.Read()
        n = rs(0) + 1
        rs.Close()
    End Sub

    Protected Sub signup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles signup.Click
        If Empass.Text = EmCpass.Text Then
            Label4.Visible = False
            Dim cmd2 As New SqlCommand("select LogID from  Client where LogID='" & LogName.Text & "'", con)
            Dim rs As SqlDataReader = cmd2.ExecuteReader
            rs.Read()
            If rs.HasRows = False Then
                rs.Close()                
                Dim cmd4 As New SqlCommand("insert into UniqueId(Unid,Type) values('" & n & "','Client')", con)
                cmd4.ExecuteNonQuery()                                
                Dim cmd3 As New SqlCommand("insert into Client values('" & n & "','" & LogName.Text & "','" & addr.Text & "','" & TextBox2.Text & "','" & TextBox1.Text & "','" & Empass.Text & "','Pending','" & emname.Text & "')", con)
                cmd3.ExecuteNonQuery()                                
                MsgBox("Sign up successfully", MsgBoxStyle.OkOnly, "Success")
            Else
                Label4.Visible = True
                Label4.Text = "Choose Another Name"
                LogName.Text = ""
                LogName.Focus()
            End If
        Else
            Label4.Visible = True
            Label4.Text = "Re-Type Password"
        End If
    End Sub

    Protected Sub addr_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles addr.TextChanged

    End Sub
End Class
