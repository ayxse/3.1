Imports System.Data.SqlClient
Partial Class Client_EditDoc
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public path As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i As Integer
        con.ConnectionString = Application("str")
        con.Open()
        Dim cmd As New SqlCommand("select *from DocFileTab where DocId='" & Application("DocId") & "'", con)
        Dim rs As SqlDataReader = cmd.ExecuteReader
        rs.Read()
        LDocID.Text = rs(0).ToString
        DocType.Text = rs("DocType").ToString
        content.Text = rs("DocContent")
        rs.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("update DocFileTab set DocType='" & DocType.Text & "' where DocId='" & LDocID.Text & "'", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("EmpHome.aspx")
    End Sub


End Class
