Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub

    Protected Sub Create_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Create.Click
        Dim cmd As New SqlCommand("insert into Dept(Name,Address) values('" & DpName.Text & "','" & Daddr.Text & "')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("Screate.aspx")
    End Sub
End Class
