Imports System.Data.SqlClient
Partial Class Admin_Documentdetails
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public path As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TV.Nodes().Clear()
        Dim i As Integer
        con.ConnectionString = Application("str")
        con.Open()
        Dim cmd As New SqlCommand("select *from DocMainTab where DocID='" & Application("DocID") & "'", con)
        Dim rs As SqlDataReader = cmd.ExecuteReader
        rs.Read()
        Dim tn As New TreeNode("Files", "files")
        For i = 1 To rs("NumOFiles")
            Dim tn1 As New TreeNode
            tn1.Text = rs("f" + CStr(i))
            tn1.Value = rs("f" + CStr(i))
            path = rs("FilePath") + rs("DocID") + "/" + rs("f" + CStr(i))
            tn1.NavigateUrl = path.ToString
            tn.ChildNodes().Add(tn1)
        Next
        tn.CollapseAll()
        TV.Nodes().Add(tn)
        LDocID.Text = rs(0).ToString
        DocType.Text = rs("LetType").ToString
        content.Text = rs("Text")
        rs.Close()
        Dim cmd1 As New SqlCommand("select *from DocFileTab where DocID='" & Application("DocID") & "'", con)
        rs = cmd1.ExecuteReader
        rs.Read()
    End Sub
End Class
