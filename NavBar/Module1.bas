Attribute VB_Name = "Module1"
Option Explicit
'API STUFF ====================================================================
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
    (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, _
    ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd _
    As Long) As Long
Private Const SW_SHOWNORMAL = 1
Private Const ERROR_FILE_NOT_FOUND = 2&
Private Const ERROR_PATH_NOT_FOUND = 3&
Private Const ERROR_BAD_FORMAT = 11&
Private Const SE_ERR_ACCESSDENIED = 5
Private Const SE_ERR_ASSOCINCOMPLETE = 27
Private Const SE_ERR_DDEBUSY = 30
Private Const SE_ERR_DDEFAIL = 29
Private Const SE_ERR_DDETIMEOUT = 28
Private Const SE_ERR_DLLNOTFOUND = 32
Private Const SE_ERR_FNF = 2
Private Const SE_ERR_NOASSOC = 31
Private Const SE_ERR_OOM = 8
Private Const SE_ERR_PNF = 3
Private Const SE_ERR_SHARE = 26

'strProgram is the name of a program to run, or a file to open
'EX: calc.exe or c:\test.doc or http:\\www.microsoft.com
Public Sub RunProgram(strProgram As String)
    Dim lRet As Long    ' Get the return value
    
    ' Execute the API call
    lRet = ShellExecute(vbNull, "", strProgram, "", "", SW_SHOWNORMAL)
    
    ' If ShellExecute works it will return a number greate than 32
    ' Otherwise call our ReportError function to see what went wrong
    If lRet <= 32 Then
        ReportShellExecuteError (lRet)
    End If
End Sub

Private Sub ReportShellExecuteError(lErrNum As Long)
    Dim strErr As String
    Select Case lErrNum
        Case ERROR_FILE_NOT_FOUND
            strErr = "The file ain't there dumbass"
        Case ERROR_PATH_NOT_FOUND
            strErr = "Path not found"
        Case ERROR_BAD_FORMAT
            strErr = "Non Win32 .exe file or bad .exe file"
        Case SE_ERR_ACCESSDENIED
            strErr = "Hah, access denied!!"
        Case SE_ERR_ASSOCINCOMPLETE
            strErr = "Bad association"
        Case SE_ERR_DDEBUSY
            strErr = "DDE is busy"
        Case SE_ERR_DDEFAIL
            strErr = "DDE failed"
        Case SE_ERR_DDETIMEOUT
            strErr = "DDE Timed out"
        Case SE_ERR_DLLNOTFOUND
            strErr = "DLL not found"
        Case SE_ERR_FNF
            strErr = "The file ain't there dumbass"
        Case SE_ERR_NOASSOC
            strErr = "File is not associated with a program"
        Case SE_ERR_OOM
            strErr = "Out of memory"
        Case SE_ERR_PNF
            strErr = "Path not found"
        Case SE_ERR_SHARE
            strErr = "You need to learn how to share"
    End Select
    
    MsgBox strErr, vbExclamation, "AAAAHHHH!!"
End Sub


