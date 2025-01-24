VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H8000000A&
   Caption         =   "PRODUCT DETAILS"
   ClientHeight    =   9810
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   18705
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   ScaleHeight     =   9810
   ScaleWidth      =   18705
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox Combo2 
      Height          =   405
      Left            =   2400
      TabIndex        =   44
      Text            =   "Combo1"
      Top             =   5520
      Width           =   3975
   End
   Begin VB.ComboBox Combo1 
      Height          =   405
      Left            =   2400
      TabIndex        =   43
      Text            =   "Combo1"
      Top             =   1920
      Width           =   3975
   End
   Begin VB.TextBox Text20 
      Height          =   615
      Left            =   9120
      TabIndex        =   42
      Text            =   "Text1"
      Top             =   7680
      Width           =   3975
   End
   Begin VB.TextBox Text19 
      Height          =   615
      Left            =   9120
      TabIndex        =   41
      Text            =   "Text1"
      Top             =   6960
      Width           =   3975
   End
   Begin VB.TextBox Text18 
      Height          =   615
      Left            =   9120
      TabIndex        =   40
      Text            =   "Text1"
      Top             =   6240
      Width           =   3975
   End
   Begin VB.TextBox Text17 
      Height          =   615
      Left            =   9120
      TabIndex        =   39
      Text            =   "Text1"
      Top             =   5520
      Width           =   3975
   End
   Begin VB.TextBox Text16 
      Height          =   615
      Left            =   9120
      TabIndex        =   38
      Text            =   "Text1"
      Top             =   4800
      Width           =   3975
   End
   Begin VB.TextBox Text15 
      Height          =   615
      Left            =   9120
      TabIndex        =   37
      Text            =   "Text1"
      Top             =   4080
      Width           =   3975
   End
   Begin VB.TextBox Text14 
      Height          =   615
      Left            =   9120
      TabIndex        =   36
      Text            =   "Text1"
      Top             =   3360
      Width           =   3975
   End
   Begin VB.TextBox Text13 
      Height          =   615
      Left            =   9120
      TabIndex        =   35
      Text            =   "Text1"
      Top             =   2640
      Width           =   3975
   End
   Begin VB.TextBox Text12 
      Height          =   615
      Left            =   9120
      TabIndex        =   34
      Text            =   "Text1"
      Top             =   1920
      Width           =   3975
   End
   Begin VB.TextBox Text11 
      Height          =   615
      Left            =   9120
      TabIndex        =   33
      Text            =   "Text1"
      Top             =   1200
      Width           =   3975
   End
   Begin VB.TextBox Text10 
      Height          =   615
      Left            =   2400
      TabIndex        =   32
      Text            =   "Text1"
      Top             =   7680
      Width           =   3975
   End
   Begin VB.TextBox Text9 
      Height          =   615
      Left            =   2400
      TabIndex        =   31
      Text            =   "Text1"
      Top             =   6960
      Width           =   3975
   End
   Begin VB.TextBox Text7 
      Height          =   615
      Left            =   2400
      TabIndex        =   30
      Text            =   "Text1"
      Top             =   6240
      Width           =   3975
   End
   Begin VB.TextBox Text6 
      Height          =   615
      Left            =   2400
      TabIndex        =   29
      Text            =   "Text1"
      Top             =   4800
      Width           =   3975
   End
   Begin VB.TextBox Text5 
      Height          =   615
      Left            =   2400
      TabIndex        =   28
      Text            =   "Text1"
      Top             =   4080
      Width           =   3975
   End
   Begin VB.TextBox Text4 
      Height          =   615
      Left            =   2400
      TabIndex        =   27
      Text            =   "Text1"
      Top             =   3360
      Width           =   3975
   End
   Begin VB.TextBox Text3 
      Height          =   615
      Left            =   2400
      TabIndex        =   26
      Text            =   "Text1"
      Top             =   2640
      Width           =   3975
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   2400
      TabIndex        =   25
      Text            =   "Text1"
      Top             =   1200
      Width           =   3975
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0C0C0&
      Caption         =   "DELETE"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6720
      Style           =   1  'Graphical
      TabIndex        =   24
      Top             =   8880
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0C0&
      Caption         =   "UPDATE"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   23
      Top             =   8880
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "SAVE"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      Style           =   1  'Graphical
      TabIndex        =   22
      Top             =   8880
      Width           =   1695
   End
   Begin VB.CommandButton cmdnew 
      BackColor       =   &H00C0C0C0&
      Caption         =   "NEW"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1320
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   8880
      Width           =   1695
   End
   Begin VB.Label Label20 
      Caption         =   "Graphics"
      Height          =   495
      Left            =   6960
      TabIndex        =   21
      Top             =   7680
      Width           =   2055
   End
   Begin VB.Label Label19 
      Caption         =   "USB Type"
      Height          =   495
      Left            =   6960
      TabIndex        =   20
      Top             =   6960
      Width           =   2055
   End
   Begin VB.Label Label18 
      Caption         =   "Bluetooth Support"
      Height          =   495
      Left            =   6960
      TabIndex        =   19
      Top             =   6240
      Width           =   2055
   End
   Begin VB.Label Label17 
      Caption         =   "Network Type"
      Height          =   495
      Left            =   6960
      TabIndex        =   18
      Top             =   5520
      Width           =   2055
   End
   Begin VB.Label Label16 
      Caption         =   "MRP"
      Height          =   495
      Left            =   6960
      TabIndex        =   17
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label Label15 
      Caption         =   "Manufactured Date"
      Height          =   495
      Left            =   6960
      TabIndex        =   16
      Top             =   4080
      Width           =   2055
   End
   Begin VB.Label Label14 
      Caption         =   "Battery"
      Height          =   495
      Left            =   6960
      TabIndex        =   15
      Top             =   3360
      Width           =   2055
   End
   Begin VB.Label Label13 
      Caption         =   "Front Camera"
      Height          =   495
      Left            =   6960
      TabIndex        =   14
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label12 
      Caption         =   "Rear Camera"
      Height          =   495
      Left            =   6960
      TabIndex        =   13
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label Label11 
      Caption         =   "OS"
      Height          =   495
      Left            =   6960
      TabIndex        =   12
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Label Label10 
      Caption         =   "Processor"
      Height          =   495
      Left            =   240
      TabIndex        =   11
      Top             =   7680
      Width           =   2055
   End
   Begin VB.Label Label9 
      Caption         =   "Display Type"
      Height          =   495
      Left            =   240
      TabIndex        =   10
      Top             =   6960
      Width           =   2055
   End
   Begin VB.Label Label8 
      Caption         =   "Display Size"
      Height          =   495
      Left            =   240
      TabIndex        =   9
      Top             =   6240
      Width           =   2055
   End
   Begin VB.Label Label7 
      Caption         =   "Company ID"
      Height          =   495
      Left            =   240
      TabIndex        =   8
      Top             =   5520
      Width           =   2055
   End
   Begin VB.Label Label6 
      Caption         =   "Rom"
      Height          =   495
      Left            =   240
      TabIndex        =   7
      Top             =   4800
      Width           =   2055
   End
   Begin VB.Label Label5 
      Caption         =   "Ram"
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   4080
      Width           =   2055
   End
   Begin VB.Label Label4 
      Caption         =   "Product Color"
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   3360
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "Model Name"
      Height          =   495
      Left            =   240
      TabIndex        =   4
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label2 
      Caption         =   "Product Type"
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   1920
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   "Product ID"
      Height          =   495
      Left            =   240
      TabIndex        =   2
      Top             =   1200
      Width           =   2055
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00800000&
      BorderWidth     =   3
      X1              =   0
      X2              =   6840
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Label head 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "PRODUCT DETAILS"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   18615
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Cmdexit_Click()

End Sub

