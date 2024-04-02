Imports System.Data.SqlClient
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub signup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles signup.Click
        Dim cmd As New SqlCommand("insert into catagory(Name,Dscp) values('" & DocType.Text & "','" & Dremark.Text & "')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("Screate.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub
End Class
