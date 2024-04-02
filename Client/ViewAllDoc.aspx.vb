Imports System.Data.SqlClient
Partial Class Employee_ViewDoc
    Inherits System.Web.UI.Page
    Public con As New SqlConnection




    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Dim r As GridViewRow = grid1.SelectedRow
        Application("ClientId") = r.Cells(1).Text
        Application("DocType") = r.Cells(2).Text
        Application("DocDate") = r.Cells(3).Text
        Application("DocContent") = r.Cells(4).Text
        Application("pname") = r.Cells(5).Text
        Application("purl") = r.Cells(6).Text
        Response.Redirect("ViewDoc.aspx")
    End Sub
End Class
