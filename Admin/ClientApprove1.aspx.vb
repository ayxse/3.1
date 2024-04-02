Imports System.Data.SqlClient
Partial Class Admin_ClientApprove1
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click
        If RadioButtonList1.Items(0).Selected = True Then
            Dim cmd1 As New SqlCommand("update Client set Approve='Approved' where CntID='" & Application("Cntid") & "'", con)
            cmd1.ExecuteNonQuery()
            Response.Redirect("AdminHome.aspx")
        Else
            Dim cmd2 As New SqlCommand("update Employee set Approve='" & TextBox1.Text & "' where CntID='" & Application("Cntid") & "'", con)
            cmd2.ExecuteNonQuery()
            Response.Redirect("AdminHome.aspx")
        End If
    End Sub
End Class
