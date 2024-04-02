Imports System.Data.SqlClient

Partial Class Account_Default
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("select *from login where password='" & ADpass.Text & "'", con)
        Dim rs As SqlDataReader
        rs = cmd.ExecuteReader
        If rs.HasRows = True Then
            Response.Redirect("~/Admin/AdminHome.aspx")
        Else
            Response.Redirect("Alogin.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub
End Class
