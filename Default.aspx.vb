Imports System.Threading
Imports System.Globalization
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()
        Dim language As String = Request("ddLang")

        If language IsNot Nothing Or language <> "" Then

            Thread.CurrentThread.CurrentUICulture = New CultureInfo(language)

            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language)
        End If
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Calendar.VisibleDate = Today
        tbName.Focus()

        lblHello.Visible = False
        lblNameOutput.Visible = False
        lblGradResponse.Visible = False
        lblGradOutput.Visible = False
        lblSalaryResponse.Visible = False
        lblSalaryOutput.Visible = False
        lblGithub.Visible = False
        githubLink.Visible = False

    End Sub


End Class
