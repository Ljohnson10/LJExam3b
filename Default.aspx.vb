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
        output.Style.Add("display", "none")
       

    End Sub



    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If radioMale.Checked = True Then
            lblNameOutput.Text = "Mr. " & tbName.Text
        Else
            lblNameOutput.Text = "Ms. " & tbName.Text
        End If

        lblGradOutput.Text = Convert.ToString(Calendar.SelectedDate)

        lblSalaryOutput.Text = "$" & tbSalary.Text

        output.Style.Add("display", "block")
     

        lbllang.Visible = False
        ddLang.Visible = False
        input.Style.Add("display", "none")
       
    End Sub


    Protected Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click

        Calendar.VisibleDate = Today
        tbName.Focus()

        output.Style.Add("display", "none")

       
        input.Style.Add("display", "block")

        ddLang.Visible = True
        lbllang.Visible = True

        tbName.Text = String.Empty
        tbSalary.Text = String.Empty
        Calendar.VisibleDate = Today
        tbName.Focus()

    End Sub
End Class
