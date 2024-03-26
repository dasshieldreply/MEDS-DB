VERSION 5.00
Begin VB.Form ChangeDirectory 
   Caption         =   "Change working directory"
   ClientHeight    =   5145
   ClientLeft      =   7740
   ClientTop       =   6075
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   ScaleHeight     =   5145
   ScaleWidth      =   5370
   Begin VB.Frame Frame1 
      Caption         =   "Alter working directory"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5055
      Begin VB.CommandButton CancelBtn 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2880
         TabIndex        =   6
         Top             =   3960
         Width           =   1215
      End
      Begin VB.CommandButton OkBtn 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   840
         TabIndex        =   5
         Top             =   3960
         Width           =   1215
      End
      Begin VB.DirListBox Dir1 
         Height          =   1890
         Left            =   240
         TabIndex        =   4
         Top             =   1680
         Width           =   4455
      End
      Begin VB.DriveListBox Drive1 
         Height          =   315
         Left            =   240
         TabIndex        =   3
         Top             =   1200
         Width           =   4455
      End
      Begin VB.OptionButton DirectoryType 
         Caption         =   "Import directory (charts and tab files)"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   2
         Top             =   720
         Width           =   3615
      End
      Begin VB.OptionButton DirectoryType 
         Caption         =   "Export directory (images and data)"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Value           =   -1  'True
         Width           =   3615
      End
   End
End
Attribute VB_Name = "ChangeDirectory"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CancelBtn_Click()

    Unload Me

End Sub


Private Sub DirectoryType_Click(Index As Integer)

    If Index = 0 Then
        Dir1.Path = OutputFilePath
    Else
        Dir1.Path = InputFilePath
    End If
    
End Sub

Private Sub Drive1_Change()

    Dir1.Path = Drive1.Drive
        
End Sub

Private Sub Form_Load()

    Dir1.Path = OutputFilePath
    
End Sub

Private Sub OkBtn_Click()
    Dim strSQL As String
    Dim strUser As String
    Dim Dyn As Object
    
    strUser = UCase$(UID)
         
    If DirectoryType(0).Value = True Then
        OutputFilePath = Dir1.Path
        
        'Add on last \ if not present
        If Mid(OutputFilePath, Len(OutputFilePath), 1) <> "\" Then
            OutputFilePath = OutputFilePath & "\"
        End If
        
        strSQL = "select * from DIRECTORY_LOOKUP where user_name = '" & strUser & "' and lookup_type='OUTPUT' "
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        If Not Dyn.EOF Then
            strSQL = "update directory_lookup set file_path = '" & OutputFilePath & "' where user_name = '" & strUser & "' and lookup_type='OUTPUT'"
            OraDatabase.ExecuteSQL (strSQL)
        Else
            strSQL = "insert into directory_lookup (file_path,user_name,lookup_type) values ('" & OutputFilePath & "','" & strUser & "','OUTPUT')"
            OraDatabase.ExecuteSQL (strSQL)
        End If
    Else
        InputFilePath = Dir1.Path
        
        'Add on last \ if not present
        
        If Mid(InputFilePath, Len(InputFilePath), 1) <> "\" Then
            InputFilePath = InputFilePath & "\"
        End If

        strSQL = "select * from DIRECTORY_LOOKUP where user_name = '" & strUser & "' and lookup_type='INPUT' "
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        If Not Dyn.EOF Then
            strSQL = "update directory_lookup set file_path = '" & InputFilePath & "' where user_name = '" & strUser & "' and lookup_type='INPUT'"
            OraDatabase.ExecuteSQL (strSQL)
        Else
            strSQL = "insert into directory_lookup (file_path,user_name,lookup_type) values ('" & InputFilePath & "','" & strUser & "','INPUT')"
            OraDatabase.ExecuteSQL (strSQL)
        End If
        
    End If
    
    Unload Me

End Sub
