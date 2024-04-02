Imports System.Data.SqlClient
Partial Class Admin_AllEmployeeList
    Inherits System.Web.UI.Page

    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Dim rs As GridViewRow = grid1.SelectedRow
        Application("empid") = rs.Cells(1).Text
        Response.Redirect("EmployeeDetails.aspx")
    End Sub
End Class
