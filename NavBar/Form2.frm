VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Form2"
   ClientHeight    =   2535
   ClientLeft      =   5640
   ClientTop       =   1335
   ClientWidth     =   4245
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   4245
   ShowInTaskbar   =   0   'False
   Begin VB.HScrollBar ScrWidth 
      Height          =   255
      LargeChange     =   10
      Left            =   0
      Max             =   800
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   1680
      Width           =   4215
   End
   Begin VB.HScrollBar ScrHeight 
      Height          =   255
      LargeChange     =   10
      Left            =   0
      Max             =   600
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   2280
      Width           =   4215
   End
   Begin VB.OptionButton dummy 
      Caption         =   "Option1"
      Height          =   495
      Left            =   5160
      TabIndex        =   6
      Top             =   1080
      Width           =   1215
   End
   Begin VB.HScrollBar ScrYpos 
      Height          =   255
      LargeChange     =   10
      Left            =   0
      Max             =   600
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   840
      Width           =   4215
   End
   Begin VB.HScrollBar ScrXpos 
      Height          =   255
      LargeChange     =   10
      Left            =   0
      Max             =   800
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   240
      Width           =   4215
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   0
      X2              =   4200
      Y1              =   1320
      Y2              =   1320
   End
   Begin VB.Label Label6 
      Caption         =   "0"
      Height          =   255
      Left            =   960
      TabIndex        =   10
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "0"
      Height          =   255
      Left            =   960
      TabIndex        =   9
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "0"
      Height          =   255
      Left            =   960
      TabIndex        =   5
      Top             =   600
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      Height          =   255
      Left            =   960
      TabIndex        =   4
      Top             =   0
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Y Position"
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   600
      Width           =   1935
   End
   Begin VB.Label Label1 
      Caption         =   "X Position"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   1935
   End
   Begin VB.Label Label7 
      Caption         =   "Height"
      Height          =   255
      Left            =   0
      TabIndex        =   11
      Top             =   2040
      Width           =   1935
   End
   Begin VB.Label Label8 
      Caption         =   "Width"
      Height          =   255
      Left            =   0
      TabIndex        =   12
      Top             =   1440
      Width           =   1935
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Label3.Caption = Form1.Left
Label4.Caption = Form1.Top
ScrXpos.Value = Int(Form1.Left / 15)
ScrYpos.Value = Int(Form1.Top / 15)
Label6.Caption = Form1.Width
Label5.Caption = Form1.Height
ScrWidth.Value = Int(Form1.Width / 15)
ScrHeight.Value = Int(Form1.Height / 15)
End Sub

Private Sub ScrHeight_Change()
Form1.Height = ScrHeight.Value * 15
Label5.Caption = ScrHeight.Value
End Sub

Private Sub ScrHeight_Scroll()
Form1.Height = ScrHeight.Value * 15
Label5.Caption = ScrHeight.Value
End Sub

Private Sub ScrHeight_GotFocus()
dummy.SetFocus
End Sub

Private Sub ScrWidth_Change()
Form1.Width = ScrWidth.Value * 15
Label6.Caption = ScrWidth.Value
End Sub

Private Sub ScrWidth_Scroll()
Form1.Width = ScrWidth.Value * 15
Label6.Caption = ScrWidth.Value
End Sub

Private Sub ScrWidth_GotFocus()
dummy.SetFocus
End Sub

Private Sub ScrXpos_Change()
Form1.Left = ScrXpos.Value * 15
Label3.Caption = ScrXpos.Value
End Sub

Private Sub ScrXpos_GotFocus()
dummy.SetFocus
End Sub

Private Sub ScrXpos_Scroll()
Form1.Left = ScrXpos.Value * 15
Label3.Caption = ScrXpos.Value
End Sub

Private Sub ScrYpos_Change()
Form1.Top = ScrYpos.Value * 15
Label4.Caption = ScrYpos.Value
End Sub

Private Sub ScrYpos_GotFocus()
dummy.SetFocus
End Sub

Private Sub ScrYpos_Scroll()
Form1.Top = ScrYpos.Value * 15
Label4.Caption = ScrYpos.Value
End Sub
