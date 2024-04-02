Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Imports System.Net.Mail
Partial Class Employee_NewDoc
    Inherits System.Web.UI.Page
    Public conn As New SqlConnection
    Public str As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = Application("str")
        conn.Open()
        EmpId.Text = Application("CntId")
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click
        If Fu.PostedFile IsNot Nothing Then
            Dim FileName As String = path.GetFileName(Fu.PostedFile.FileName)
            'Save files to disk
            Fu.SaveAs(Server.MapPath("Photos/" & FileName))
            ' conn.Open()
            Dim cmd2 As New SqlCommand("insert into ClientDocTab values('" & EmpId.Text & "','" & DropDownList1.Text & "','" & Now.Date & "','" & Letter.Text & "',@FileName, @FilePath)", conn)
            cmd2.Parameters.AddWithValue("@FileName", FileName)
            cmd2.Parameters.AddWithValue("@FilePath", "Photos/" & FileName)
            Dim res As SqlDataReader = cmd2.ExecuteReader()
            conn.Close()
        End If
        MsgBox("Success", MsgBoxStyle.OkOnly, "Success")
        Response.Redirect("../Client/CntHome.aspx")

    End Sub

    

End Class
