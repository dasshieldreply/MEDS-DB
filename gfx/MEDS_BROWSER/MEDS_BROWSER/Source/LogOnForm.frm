VERSION 5.00
Begin VB.Form LogOnForm 
   Caption         =   "Log on"
   ClientHeight    =   4035
   ClientLeft      =   3045
   ClientTop       =   2040
   ClientWidth     =   5100
   LinkTopic       =   "Form1"
   ScaleHeight     =   4035
   ScaleWidth      =   5100
   Begin VB.TextBox DatabaseString 
      Height          =   285
      Left            =   2040
      TabIndex        =   2
      Text            =   "MEDSPROD"
      Top             =   2280
      Width           =   2775
   End
   Begin VB.CommandButton EnterButton 
      Caption         =   "Enter"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Top             =   3240
      Width           =   1455
   End
   Begin VB.CommandButton CancelButton 
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3480
      TabIndex        =   4
      Top             =   3240
      Width           =   1455
   End
   Begin VB.TextBox PasswordText 
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   2040
      TabIndex        =   1
      Top             =   1500
      Width           =   2775
   End
   Begin VB.TextBox NameText 
      Height          =   285
      Left            =   2040
      TabIndex        =   0
      Text            =   "MEDSUSER"
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label Password 
      Caption         =   "Database"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   7
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Please enter your user id and password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   8
      Top             =   120
      Width           =   5055
   End
   Begin VB.Label Password 
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   6
      Top             =   1500
      Width           =   1575
   End
   Begin VB.Label Username 
      Caption         =   "User Id"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   720
      Width           =   1575
   End
End
Attribute VB_Name = "LogOnForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CancelButton_Click()

    'Cancel actions and leave app.
    
    Unload Me
    Unload Main
    
End Sub

Private Function UserHasWritePrivileges(Username As String) As Boolean
    Dim SQLQuery As String
    Dim Results As Object
    
    SQLQuery = "SELECT * FROM access_control where upper(USER_NAME) = '" & UCase(Username) & "'"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    If Not Results.EOF Then
        'Currently only if the user has 'MARINE_LIFE' access is 'Write' access necessary
        UserHasWritePrivileges = True
    Else
        UserHasWritePrivileges = False
    End If
    
End Function

Private Sub EnterButton_Click()
Dim LogOn As String


    'Set log on string to Password and User Id
    
    LogOn = NameText.Text & "/" & PasswordText.Text
    
    Database = DatabaseString.Text
    'On sql connect error jump to error trapping
    
    On Error GoTo err:
    
    'Initiate the connection to the database
    
    Set OraSession = CreateObject("OracleInProcServer.XOraSession")
    Set OraDatabase = OraSession.OpenDatabase(Database, LogOn, 0&)
    
    'set global variables ready for use
    
    Passwd = PasswordText.Text
    UID = NameText.Text
    
    'Reset and hide the form
    
    PasswordText.Text = ""
    NameText.Text = ""
    
    LogOnForm.Hide
    
    'Test if the user is meds admin
    
    If UCase$(UID) = "{insert-admin-user}" Then
        Main.menuRegisterTable.Enabled = True
    Else
        If UserHasWritePrivileges(UCase$(UID)) Then
            ' Has to be done as the only user in system who can write to most tables
            ' is {insert-admin-user} and the MAPX part of browser logs on as {insert-admin-user} anyhow.
            Dim strSQL As String
            Dim strPass As String
            Dim Results As Object
            
            strSQL = "select * from meds_flags where flags_index = 1 and data_type = 'MEDS Procesing Job'"
            Set Results = OraDatabase.CreateDynaset(strSQL, 0&)
            strPass = Main.Encode(Results("flag_value"))
            
            LogOn = "{insert-admin-user}" & "/" & strPass
            Set OraDatabase = OraSession.OpenDatabase(Database, LogOn, 0&)
        End If
    End If
    
    'Inialise the main screen
    
    Main.Initialise
    Unload Me
    
    Exit Sub
err:
    'Trap error and send error message to the user
    
    MsgBox err.description
    'PasswordText.Text = ""
    'NameText.Text = ""
    
End Sub

Private Sub Form_Load()
    Dim Username As String
    Username = Environ("USERNAME")
    
    'Set password to display *
    PasswordText.PasswordChar = "*"
 
    ' shortcut for developer
    If ((Username = "{insert-tester1}") Or (Username = "{insert-tester2}")) Then
        NameText.Text = "{insert-admin-user}"
        DatabaseString.Text = "{insert-test}"
        PasswordText.Text = "{insert-test_pwd}"
    Else
        NameText.Text = Username
        PasswordText.Text = ""
        PasswordText.TabIndex = 0   ' take user straight to password field
    End If
    
    'Set form to the front
    PasswordText.ZOrder (0)
End Sub

