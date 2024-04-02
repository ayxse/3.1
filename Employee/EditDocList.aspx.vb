Imports System.Data.SqlClient
Partial Class Client_EditDocList
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
        SqlDataSource1.SelectCommand = "select *from DocFileTab where UnId='" & Application("Empid") & "'"
    End Sub

    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Dim rs As GridViewRow = grid1.SelectedRow
        Application("DocID") = rs.Cells(1).Text
        Response.Redirect("EditDoc.aspx")
    End Sub
End Class
