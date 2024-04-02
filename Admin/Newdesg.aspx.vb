Imports System.Data.SqlClient
Partial Class Admin_Newdesg
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Create_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Create.Click
        Dim cmd As New SqlCommand("insert into Desg(Name,Dscp) values('" & DsName.Text & "','" & DsDscp.Text & "')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("Screate.aspx")
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub
End Class
