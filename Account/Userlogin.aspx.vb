Imports System.Data.SqlClient
Partial Class Account_Default
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("select EmpID,Approve,Password,LogID from Employee where LogId='" & ELOgID.Text & "' and Password='" & EPassword.Text & "' and Approve = 'Approved' ", con)
        Dim rs As SqlDataReader = cmd.ExecuteReader
        rs.Read()
        If rs.HasRows = True Then
            Application("empid") = rs(0).ToString
            Response.Redirect("../Employee/EmpHome.aspx")
        End If
        rs.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand("select CntID,Approve,Password,LogID from Client where LogId='" & CLogID.Text & "' and Password='" & Cpassword.Text & "' and Approve = 'Approved'", con)
        Dim rs As SqlDataReader = cmd.ExecuteReader
        rs.Read()
        If rs.HasRows = True Then
            Application("cntid") = rs(0).ToString
            Response.Redirect("../Client/CntHome.aspx")
        End If
        rs.Close()
    End Sub
End Class
