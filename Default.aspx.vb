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
        btnReset.Visible = False

    End Sub



    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If radioMale.Checked = True Then
            lblNameOutput.Text = "Mr. " & tbName.Text
        Else
            lblNameOutput.Text = "Ms. " & tbName.Text
        End If

        lblGradOutput.Text = Convert.ToString(Calendar.SelectedDate)

        lblSalaryOutput.Text = "$" & tbSalary.Text

        lblHello.Visible = True
        lblNameOutput.Visible = True
        lblGradResponse.Visible = True
        lblGradOutput.Visible = True
        lblSalaryResponse.Visible = True
        lblSalaryOutput.Visible = True
        lblGithub.Visible = True
        githubLink.Visible = True
        btnReset.Visible = True
        lbllang.Visible = False
        ddLang.Visible = False

        lblName.Visible = False
        tbName.Visible = False
        lblGender.Visible = False
        radioFemale.Visible = False
        radioMale.Visible = False
        lblGraduate.Visible = False
        Calendar.Visible = False
        lblSalary.Visible = False
        tbSalary.Visible = False
        btnSubmit.Visible = False
    End Sub


    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

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
        btnReset.Visible = False

        lblName.Visible = True
        tbName.Visible = True
        lblGender.Visible = True
        radioFemale.Visible = True
        radioMale.Visible = True
        lblGraduate.Visible = True
        Calendar.Visible = True
        lblSalary.Visible = True
        tbSalary.Visible = True
        btnSubmit.Visible = True
        ddLang.Visible = True
        lbllang.Visible = True
    End Sub
End Class
