VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2460
   ClientLeft      =   2130
   ClientTop       =   2175
   ClientWidth     =   5700
   LinkTopic       =   "Form1"
   ScaleHeight     =   2460
   ScaleWidth      =   5700
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   600
      TabIndex        =   0
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label1 
      Height          =   1095
      Left            =   2400
      TabIndex        =   1
      Top             =   720
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
 If Label1.Caption = "" Then
 Label1.Caption = "Ass"
 Else: Label1.Caption = ""
 End If
End Sub
