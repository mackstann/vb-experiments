VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   5715
   ClientLeft      =   1845
   ClientTop       =   1605
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   6585
   ShowInTaskbar   =   0   'False
   Begin VB.PictureBox Picture6 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   5
      Top             =   2400
      Width           =   1395
   End
   Begin VB.Timer Timer6 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   2400
   End
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   1920
   End
   Begin VB.PictureBox Picture5 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":222A
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   4
      Top             =   1920
      Width           =   1395
   End
   Begin VB.PictureBox Picture4 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":4454
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   3
      Top             =   1440
      Width           =   1395
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   1440
   End
   Begin VB.PictureBox Picture3 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":667E
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   2
      Top             =   960
      Width           =   1395
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   960
   End
   Begin VB.PictureBox Picture2 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":88A8
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   1
      Top             =   480
      Width           =   1395
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   480
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1440
      Top             =   0
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   0
      Picture         =   "Form1.frx":AAD2
      ScaleHeight     =   465
      ScaleWidth      =   1395
      TabIndex        =   0
      Top             =   0
      Width           =   1395
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_DblClick()
Form2.Show
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Picture1.Left = Picture1.Left + 50
Picture1.Top = Picture1.Top + 50
Timer1.Enabled = True

End Sub

Private Sub Timer1_Timer()
Picture1.Left = Picture1.Left - 50
Picture1.Top = Picture1.Top - 50
Timer1.Enabled = False
End Sub
