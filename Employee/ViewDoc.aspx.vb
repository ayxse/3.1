Imports System.Data.SqlClient
Partial Class Employee_ViewDoc
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public path As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LDocID.Text = Application("DocId")
        DocType.Text = Application("DocType")
        DocDate.Text = Application("DocDate")
        Emplbl.Text = Application("Empname")
        content.Text = Application("DocContent")
        Image1.ImageUrl = Application("purl")
    End Sub

    Protected Sub content_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles content.TextChanged

    End Sub
End Class
