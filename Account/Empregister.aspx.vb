Imports System.Data.SqlClient
Partial Class Account_Default
    Inherits System.Web.UI.Page
    Public con As New SqlConnection
    Public n As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
        Dim cmd1 As New SqlCommand("select Max(UnId) from UniqueId", con)
        Dim rs As SqlDataReader = cmd1.ExecuteReader
        rs.Read()
        n = rs(0) + 1
        rs.Close()
    End Sub

    Protected Sub signup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles signup.Click
        If Empass.Text = EmCpass.Text Then
            Label4.Visible = False
            Dim cmd2 As New SqlCommand("select LogID from  Employee where LogID='" & LogName.Text & "'", con)
            Dim rs As SqlDataReader = cmd2.ExecuteReader
            rs.Read()
            If rs.HasRows = False Then
                rs.Close()
                Dim path As String
                Dim path1 As String
                path = Server.MapPath("..\Upload\EmployeePhotos")
                Dim cmd4 As New SqlCommand("insert into UniqueId(Unid,Type) values('" & n & "','Employee')", con)
                cmd4.ExecuteNonQuery()
                path = path + "/" + CStr(n)
                path1 = "upload\EmployeePhotos\" + CStr(n)
                Dim cmd3 As New SqlCommand("insert into Employee(EmpID,LogID,Name,PhName,PhotoURL,Address,Desg,Dept,Password,Approve,DOR) values('" & n & "','" & LogName.Text & "','" & EmpName.Text & "','" & Ph.FileName & "','" & path1 & "','" & addr.Text & "','" & Drop1.Text & "','" & Drop2.Text & "','" & Empass.Text & "','Pending','" & Now.Date & "')", con)
                cmd3.ExecuteNonQuery()
                FileIO.FileSystem.CreateDirectory(path)
                Ph.SaveAs(path + "/" + Ph.FileName)
                MsgBox("Signup Success", MsgBoxStyle.OkOnly, "Success")
                Response.Redirect("../Home.aspx")
            Else
                Label4.Visible = True
                Label4.Text = "Choose Another Name"
                LogName.Text = ""
                LogName.Focus()
            End If
            Else
                Label4.Visible = True
                Label4.Text = "Re-Type Password"
            End If
    End Sub
End Class
