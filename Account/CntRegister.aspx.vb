Imports System.Data.SqlClient
Partial Class Account_CntRegister
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
        If Val(cph.Text) < 999999999 Then
            MsgBox("Enter Valid Phone.No", MsgBoxStyle.OkOnly, "Error")
            cph.Text = ""
            cph.Focus()
        Else


            If CntCpass.Text = Cntpass.Text Then
                Dim cmd2 As New SqlCommand("select CntId from Client where LogID='" & CLogName.Text & "'", con)
                Dim rs As SqlDataReader = cmd2.ExecuteReader
                rs.Read()
                If rs.HasRows = False Then
                    rs.Close()
                    Dim cmd3 As New SqlCommand("insert into Client(CntID,LogID,Address,PhoneNo,Email,Password,Approve,Name) values('" & n & "','" & CLogName.Text & "','" & CAddr.Text & "','" & cph.Text & "','" & CemailID.Text & "','" & CntCpass.Text & "','Pending','" & CName.Text & "')", con)
                    Dim cmd4 As New SqlCommand("insert into UniqueID(UnID,Type) values('" & n & "','Client')", con)
                    cmd3.ExecuteNonQuery()
                    cmd4.ExecuteNonQuery()
                    MsgBox("Signup Success", MsgBoxStyle.OkOnly, "Success")
                    Response.Redirect("../Home.aspx")
                Else
                    Label4.Text = "Choose Another Login Name"
                    Label4.Visible = True
                    CLogName.Text = ""
                    CLogName.Focus()
                End If
            Else
                Label4.Text = "Re-type Password"
                Label4.Visible = True
            End If
        End If
    End Sub
End Class
