
Partial Class Admin_ClientApprove
    Inherits System.Web.UI.Page

    Protected Sub grid1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles grid1.SelectedIndexChanged
        Application("CntId") = grid1.SelectedRow.Cells(1).Text
        Response.Redirect("ClientApprove1.aspx")
    End Sub
End Class
