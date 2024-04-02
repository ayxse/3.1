Imports System.Data.SqlClient
Partial Class Admin_ApproveCnt
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub

    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Dim rs As GridViewRow = grid1.SelectedRow
        Application("empid") = rs.Cells(1).Text
        Response.Redirect("ApproveEmp1.aspx")
        con.Close()
    End Sub
End Class
