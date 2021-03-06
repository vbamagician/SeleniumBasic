
' ---------------------------------------------------------------------------------------
' Use the WebDriver with a customised version of Firefox.
' Can be used to :
'  Keep the same session between runs
'  Launch the browser with plugins
'  Launch the browser with specific preferences
' The profile is automatically created if it's not already present
' Profiles can be managed using this command line: firefox.exe -p
' ---------------------------------------------------------------------------------------

Class Script
    Dim driver

    Sub Class_Initialize        
        Set driver = CreateObject("Selenium.FirefoxDriver")
        driver.SetProfile "Selenium" 'Name of the profile
        driver.Get "https://mail.google.com/mail"
    End Sub

    Sub Class_Terminate
        driver.Quit
    End Sub
End Class

Set s = New Script
