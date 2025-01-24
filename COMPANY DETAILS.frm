VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   Caption         =   "IRENEW - Company Manager"
   ClientHeight    =   9795
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16350
   LinkTopic       =   "Form1"
   ScaleHeight     =   9795
   ScaleWidth      =   16350
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command6 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Print All"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   13440
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   4800
      Width           =   1815
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Print"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   11280
      Style           =   1  'Graphical
      TabIndex        =   15
      Top             =   4800
      Width           =   2055
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "COMPANY DETAILS.frx":0000
      Height          =   2775
      Left            =   360
      TabIndex        =   14
      Top             =   6720
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   4895
      _Version        =   393216
      AllowUpdate     =   -1  'True
      HeadLines       =   1
      RowHeight       =   15
      FormatLocked    =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   "COMP_ID"
         Caption         =   "ID"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   "COMP_NM"
         Caption         =   "COMPANY NAME"
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
            ColumnWidth     =   840.189
         EndProperty
         BeginProperty Column01 
            ColumnWidth     =   1739.906
         EndProperty
      EndProperty
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   975
      Left            =   480
      Top             =   7680
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   1720
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDAORA.1;User ID=PRJ2432B/prj2432b;Persist Security Info=False"
      OLEDBString     =   "Provider=MSDAORA.1;User ID=PRJ2432B/prj2432b;Persist Security Info=False"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from company_details order by(comp_id)"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Frame Frame3 
      BackColor       =   &H00C0C0C0&
      Caption         =   "SEARCH"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   8160
      TabIndex        =   7
      Top             =   1440
      Width           =   7455
      Begin VB.TextBox Text3 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2400
         TabIndex        =   19
         Top             =   1680
         Width           =   4335
      End
      Begin VB.ComboBox Combo2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   2400
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   2280
         Width           =   4335
      End
      Begin VB.CommandButton Command4 
         BackColor       =   &H00C0C0C0&
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   1080
         Style           =   1  'Graphical
         TabIndex        =   13
         Top             =   3360
         Width           =   1935
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   3120
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   840
         Width           =   2895
      End
      Begin VB.Label Label8 
         Caption         =   "Search By"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1200
         TabIndex        =   8
         Top             =   840
         Width           =   1575
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   360
      TabIndex        =   1
      Top             =   1440
      Width           =   7815
      Begin VB.Frame Frame2 
         BackColor       =   &H8000000C&
         Height          =   975
         Left            =   120
         TabIndex        =   6
         Top             =   3120
         Width           =   6855
         Begin VB.CommandButton Command7 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Exit"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   13.5
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   5160
            Style           =   1  'Graphical
            TabIndex        =   17
            Top             =   360
            Width           =   1575
         End
         Begin VB.CommandButton Command3 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Update"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   13.5
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   3480
            Style           =   1  'Graphical
            TabIndex        =   12
            Top             =   360
            Width           =   1575
         End
         Begin VB.CommandButton Command2 
            BackColor       =   &H00C0C0C0&
            Caption         =   "Save"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   13.5
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   1800
            Style           =   1  'Graphical
            TabIndex        =   11
            Top             =   360
            Width           =   1575
         End
         Begin VB.CommandButton Command1 
            BackColor       =   &H00C0C0C0&
            Caption         =   "New"
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
            Left            =   120
            Style           =   1  'Graphical
            TabIndex        =   10
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.TextBox Text2 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3240
         TabIndex        =   5
         Top             =   1440
         Width           =   2775
      End
      Begin VB.TextBox Text1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3240
         Locked          =   -1  'True
         TabIndex        =   4
         Top             =   600
         Width           =   2775
      End
      Begin VB.Label Label3 
         Caption         =   "Company Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   3
         Top             =   1440
         Width           =   2535
      End
      Begin VB.Label Label2 
         Caption         =   "Company ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   2535
      End
   End
   Begin VB.Label Label1 
      BackColor       =   &H00800000&
      Caption         =   "                                                              COMPANY DETAILS"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   17655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub resetAll()
    Dim pre As String, counter As String
    
    sql = "select count(comp_id) from company_details"
    Set r = c.Execute(sql)
    counter = r.Fields(0) + 1
    pre = "CMP"
    For i = 1 To 3 - Len(counter)
        pre = pre & "0"
    Next i
    Text1.Text = pre & counter
    
    Text2.Text = ""
    Adodc1.RecordSource = "select * from company_details"
    Adodc1.Refresh
    Command2.Enabled = True
    Command3.Enabled = False
    Command5.Enabled = False
End Sub



Private Sub Combo1_Click()
Combo2.Clear
If Combo1.Text = "Id" Then
    sql = "select comp_id from company_details"


ElseIf Combo1.Text = "Name" Then
    sql = "select comp_nm from company_details"
End If
Set r = c.Execute(sql)
Do While Not r.EOF
    Combo2.AddItem (r.Fields(0))
    r.MoveNext
Loop
End Sub

Private Sub Combo2_Click()
    Command3.Enabled = True
    If Combo1.Text = "Name" Then
        sql = "select * from company_details where comp_nm like '%" + Combo2.Text + "%'"
    ElseIf Combo1.Text = "Id" Then
        sql = "select * from company_details where comp_id like '%" + Combo2.Text + "%'"
    Else
        MsgBox "Please choose the correct Feilds"
    End If
    Set r = c.Execute(sql)
    Text1.Text = r.Fields(0)
    Text2.Text = r.Fields(1)
    Adodc1.RecordSource = sql
    Adodc1.Refresh
    Command2.Enabled = False
    Command5.Enabled = True
End Sub

Private Sub Command1_Click()
    resetAll
    Text2.SetFocus
    Command2.Enabled = True
End Sub

Private Sub Command2_Click()
    If Text2.Text = "" Then
        temp = MsgBox("Please Enter the required details", vbOKOnly, "Warning")
        
    Else
    
        sql = "select count(comp_id) from company_details where comp_nm='" + Text2.Text + "'"
        Set r = c.Execute(sql)
        If r.Fields(0) <> 0 Then
            temp = MsgBox("Company Name Already Exist", vbOKOnly, "Warning")
        Else
            
            sql = "insert into company_details values('" + Text1.Text + "','" + UCase(Text2.Text) + "')"
            c.Execute (sql)
            temp = MsgBox("Record Saved", vbOKOnly, "Saved")
            resetAll
        End If
    End If
    
    
        
    Text2.SetFocus
        
    
    
End Sub

Private Sub Command3_Click()
    sql = "UPDATE company_details SET comp_nm = '" + UCase(Text2.Text) + "' WHERE comp_id='" + Text1.Text + "'"
    c.Execute (sql)
    temp = MsgBox("Record Updated", vbOKOnly, "Updated")
    resetAll
Command3.Enabled = False
End Sub

Private Sub Command4_Click()

    If Combo1.Text = "Name" Then
        sql = "select * from company_details where comp_nm like '%" + UCase(Text3.Text) + "%'"
        Set r = c.Execute(sql)
        If r.EOF And r.BOF Then
            t = MsgBox("No Record Found", vbOKOnly, "Not Found")
            resetAll
        Else
    
            Text1.Text = r.Fields(0)
            Text2.Text = r.Fields(1)
            Adodc1.RecordSource = sql
        Adodc1.Refresh
        Command2.Enabled = False
        Command3.Enabled = True
        Command5.Enabled = True
        End If
    
    ElseIf Combo1.Text = "Id" Then
        sql = "select * from company_details where comp_id like '%" + Text3.Text + "%'"
        Set r = c.Execute(sql)
        If r.EOF And r.BOF Then
            t = MsgBox("No Record Found", vbOKOnly, "Not Found")
            resetAll
        Else
    
            Text1.Text = r.Fields(0)
            Text2.Text = r.Fields(1)
    Adodc1.RecordSource = sql
    Adodc1.Refresh
    Command2.Enabled = False
    Command3.Enabled = True
    Command5.Enabled = True
        End If
    
    Else
        MsgBox "Please choose the correct Feilds"
    End If
    
End Sub

Private Sub Command5_Click()
    DataEnvironment1.Command2 Text1.Text
    DataReport2.Show
    Set DataEnvironment1 = Nothing
    
    
End Sub

Private Sub Command6_Click()
    DataReport1.Show
End Sub

Private Sub Command7_Click()
    d = MsgBox("Do you really want to Exit?", vbYesNo, "Exit")
    If d = vbYes Then
        sql = "COMMIT"
        c.Execute (sql)
        Unload Me
    End If

End Sub

Private Sub DataGrid1_Click()
    Command3.Enabled = True
    Command2.Enabled = False
    Command5.Enabled = True
    
    Text1.Text = DataGrid1.Columns(0).Value
    Text2.Text = DataGrid1.Columns(1).Value

End Sub

Private Sub text2_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
    Text2.Text = UCase(Text2.Text)
        
    End If
    
End Sub

Private Sub Form_Load()
Command3.Enabled = False
    conn
    sql = "select count(comp_id) from company_details"
    Set r = c.Execute(sql)
    Combo1.AddItem "Id"
    Combo1.AddItem "Name"
 
End Sub

