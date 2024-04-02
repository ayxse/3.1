Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.UI.WebControls
Imports System.Net.Mail
Partial Class Employee_NewDoc
    Inherits System.Web.UI.Page
    Public conn As New SqlConnection
    Public str As String
    Dim num As Long, i As Long
    Dim mid As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conn.ConnectionString = Application("str")
        conn.Open()
        EmpId.Text = Application("empid")
    End Sub

    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Submit.Click
        If Fu.PostedFile IsNot Nothing Then
            Dim FileName As String = Path.GetFileName(Fu.PostedFile.FileName)
            'Save files to disk
            Fu.SaveAs(Server.MapPath("Photos/" & FileName))
            ' conn.Open()
            Dim cmd2 As New SqlCommand("insert into DocFileTab values('" & EmpId.Text & "','" & DropDownList1.Text & "','" & Now.Date & "','" & DropDownList2.Text & "','" & Letter.Text & "',@FileName, @FilePath)", conn)
            cmd2.Parameters.AddWithValue("@FileName", FileName)
            cmd2.Parameters.AddWithValue("@FilePath", "Photos/" & FileName)
            Dim res As SqlDataReader = cmd2.ExecuteReader()
            conn.Close()
        End If
        MsgBox("Success", MsgBoxStyle.OkOnly, "Success")
        Response.Redirect("../Employee/EmpHome.aspx")
    End Sub


    Protected Sub Letter_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Letter.TextChanged

    End Sub
End Class
