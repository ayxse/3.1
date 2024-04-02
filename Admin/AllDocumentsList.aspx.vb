Imports System.Data.SqlClient
Partial Class Admin_AllDocumentsList
    Inherits System.Web.UI.Page

    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Dim rs As GridViewRow
        rs = grid1.SelectedRow
        Application("DocId") = rs.Cells(1).Text.ToString
        Response.Redirect("Documentdetails.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
End Class
