VERSION 5.00
Begin VB.Form RegisterTableForm 
   Caption         =   "Register a Spatial Table"
   ClientHeight    =   4635
   ClientLeft      =   6885
   ClientTop       =   6075
   ClientWidth     =   5385
   LinkTopic       =   "Form1"
   ScaleHeight     =   4635
   ScaleWidth      =   5385
   Begin VB.CommandButton OkBtn 
      Caption         =   "OK"
      Default         =   -1  'True
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
      Left            =   2040
      TabIndex        =   12
      Top             =   3840
      Width           =   1455
   End
   Begin VB.CommandButton CancelBtn 
      Caption         =   "CANCEL"
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
      Left            =   3840
      TabIndex        =   11
      Top             =   3840
      Width           =   1455
   End
   Begin VB.Frame Frame4 
      Caption         =   "Indexing Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   120
      TabIndex        =   6
      Top             =   2280
      Width           =   5175
      Begin VB.TextBox SDOInfo 
         Height          =   285
         Index           =   1
         Left            =   4320
         TabIndex        =   10
         Text            =   "1"
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox SDOInfo 
         Height          =   285
         Index           =   0
         Left            =   4320
         TabIndex        =   8
         Text            =   "6"
         Top             =   360
         Width           =   495
      End
      Begin VB.Label Label3 
         Caption         =   "SDO Number of Tiles (suggested level is 1)"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   9
         Top             =   720
         Width           =   3375
      End
      Begin VB.Label Label3 
         Caption         =   "SDO Number of levels (suggested level is 6)"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Width           =   3375
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Action"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      TabIndex        =   3
      Top             =   1200
      Width           =   5175
      Begin VB.CheckBox Check1 
         Caption         =   "Drop Spatial Index"
         Height          =   255
         Index           =   2
         Left            =   3240
         TabIndex        =   13
         Top             =   360
         Value           =   2  'Grayed
         Width           =   1695
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Create Index"
         Height          =   255
         Index           =   1
         Left            =   1680
         TabIndex        =   5
         Top             =   360
         Width           =   1335
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Register "
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   4
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Set Spatial Details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      Begin VB.ComboBox SpatialTable 
         Height          =   315
         Left            =   1200
         TabIndex        =   2
         Text            =   "Please Select"
         Top             =   360
         Width           =   3855
      End
      Begin VB.Label Label1 
         Caption         =   "Table Name"
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   975
      End
   End
End
Attribute VB_Name = "RegisterTableForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'option explicit

Dim TableArray() As String

Private Sub CancelBtn_Click()
    Unload Me
End Sub

Private Sub Form_Load()
Dim Results As Object
Dim JobQuery As String
Dim Count As Integer
Dim Counter As Integer

    'Retrieve the number of spatial tables
    
    JobQuery = "SELECT count(distinct(TABLE_NAME)) from FIELD_LOOKUP WHERE " & _
               "FIELD_TYPE = '11' OR FIELD_TYPE = '27' OR FIELD_TYPE = '28'"
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    Count = Results("Count(distinct(TABLE_NAME))").value + 2
    
    ReDim TableArray(1 To 3, 1 To Count)
    
    'Retrieve all tables names with spatial keys
    JobQuery = "SELECT distinct TABLE_NAME, FIELD_NAME,FIELD_TYPE FROM FIELD_LOOKUP WHERE " & _
               "FIELD_TYPE = '11' OR FIELD_TYPE = '27' OR FIELD_TYPE = '28'"
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

    'store results and poulate the drop array list
    
    Counter = 1
    
    While Not Results.EOF

        TableArray(1, Counter) = Results("TABLE_NAME")
        TableArray(2, Counter) = Results("FIELD_NAME")
        TableArray(3, Counter) = Results("FIELD_TYPE")
        
        SpatialTable.AddItem TableArray(1, Counter)
        Counter = Counter + 1
        
        Results.MoveNext
    Wend
    
    TableArray(1, Counter) = "AQUAPACK_LINE_OBSERVATION"
    TableArray(2, Counter) = "LOCATION"
    TableArray(3, Counter) = "11"
    SpatialTable.AddItem TableArray(1, Counter)
    Counter = Counter + 1
    TableArray(1, Counter) = "AQUAPACK_PROFILE_OBSERVATION"
    TableArray(2, Counter) = "LOCATION"
    TableArray(3, Counter) = "11"
    SpatialTable.AddItem TableArray(1, Counter)
End Sub

Private Sub OkBtn_Click()
Dim ptr As Integer
Dim OraDynaset As Object
Dim SQLStatement As String
Dim DataType As String
Dim PenDetails As String
Dim Gtype As String
Dim IndexName As String
Dim Items() As String
Dim i As Integer
  
  
  
    If left(SpatialTable.Text, 1) = "*" Then
        Dim strPassOld As String
        Dim strPassNew As String
        strPassOld = Mid(SpatialTable.Text, 2, InStr(1, SpatialTable.Text, "/") - 2)
        strSQL = "select * from meds_flags where flags_index = 1 and data_type = 'MEDS Procesing Job'"
        Set OraDynaset = OraDatabase.CreateDynaset(strSQL, 0&)
        If Main.Encode(OraDynaset("flag_value")) = strPassOld Then
            strPassNew = Mid(SpatialTable.Text, InStr(1, SpatialTable.Text, "/") + 1, Len(SpatialTable.Text))
            strPassNew = Main.Encode(strPassNew)
            strSQL = "update meds_flags set flag_value = '" & strPassNew & "' where flags_index = 1 and data_type = 'MEDS Procesing Job'"
            OraDatabase.ExecuteSQL (strSQL)
        Else
            MsgBox ("Invalid Password")
        End If
        OraDynaset.Close
        Unload Me
        Exit Sub
    End If
  
  
  
  
  
    On Error GoTo ErrorHandler
    
    ptr = SpatialTable.ListIndex + 1
    
    If ptr <> 0 Then

        If Check1(0).value = 1 Then
        'Register the table with Oracle Spatial
        
            SQLStatement = "INSERT INTO USER_SDO_GEOM_METADATA VALUES ('" & _
                        TableArray(1, ptr) & "','" & TableArray(2, ptr) & "',MDSYS.SDO_DIM_ARRAY(" & _
                        "MDSYS.SDO_DIM_ELEMENT('X',-180.0000, 180.0000,0.005)," & _
                        "MDSYS.SDO_DIM_ELEMENT('Y',-90.0000, 90.0000,0.005)), NULL)"
     
            OraDatabase.ExecuteSQL (SQLStatement)
        
            'Register the table with MapX
            
            If TableArray(3, ptr) = "11" Then
                DataType = "13"                     'point
                PenDetails = "'Symbol(35,0,12)'"
            ElseIf TableArray(3, ptr) = "27" Then
                DataType = "13.1"                   'line
                PenDetails = "'Pen (1,2,16711680)  Brush (1,16777215,16777215)'"
            Else
                DataType = "13.2"                    'polygon
                PenDetails = "'Pen (1,2,16711680)  Brush (1,16777215,16777215)'"
            End If
            
            SQLStatement = "insert into mapinfo.mapinfo_mapcatalog values(" & _
                    DataType & ",'" & TableArray(1, ptr) & "','{insert-admin-user}','" & TableArray(2, ptr) & _
                    "',-180,-90,180,90,'Earth Projection 1,104'," & PenDetails & "," & _
                    "'NO_COLUMN','NO_COLUMN')"
            
            OraDatabase.ExecuteSQL (SQLStatement)
       
        End If
        
        If Check1(2).value = 1 Then
            'Split the table name and use the first two sections to form the index name
            Items() = Split(TableArray(1, ptr), "_")
            
            IndexName = left$("SI_" & Items(0) & Items(1), 16)
       MsgBox IndexName
            SQLStatement = "DROP INDEX " & IndexName

            OraDatabase.ExecuteSQL (SQLStatement)
        
        End If
        'Create a new Spatial Index
        
        If Check1(1).value = 1 Then
            'Split the table name and use the first two sections to form the index name
            Items() = Split(TableArray(1, ptr), "_")
            
            IndexName = left$("SI_" & Items(0) & Items(1), 16)
         
            If TableArray(3, ptr) = "11" Then
                Gtype = "  LAYER_GTYPE=POINT')"
            Else
                Gtype = "')"
            End If
            
            SQLStatement = "CREATE INDEX " & IndexName & " ON " & TableArray(1, ptr) & "(" & TableArray(2, ptr) & ")" & _
                    " INDEXTYPE IS MDSYS.SPATIAL_INDEX PARAMETERS('SDO_LEVEL=" & SDOInfo(0).Text & _
                    " SDO_NUMTILES=" & SDOInfo(1).Text & Gtype

            OraDatabase.ExecuteSQL (SQLStatement)
        
        End If

    Else
        
        MsgBox "No table selected"
    
    End If
    
    Unload Me
    
    Exit Sub
    
ErrorHandler:

    MsgBox err.description
    
    Unload Me
    
    Exit Sub
    
        
End Sub

Private Sub SpatialTable_Click()
Dim ptr As Integer
Dim OraDynaset As Object
Dim SQLStatement As String
Dim DataType As String
Dim PenDetails As String
Dim Gtype As String
Dim IndexName As String
Dim Items() As String
Dim i As Integer
  
    'On Error GoTo ErrorHandler
    
    ptr = SpatialTable.ListIndex + 1
    
    Items() = Split(TableArray(1, ptr), "_")
            
    IndexName = left$("SI_" & Items(0) & Items(1), 16)
    
    'Check for spatial index on table
    
    SQLStatement = "select index_name from user_indexes where " & _
                   "index_name = '" & IndexName & "'"
    
    Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)

    If OraDynaset("INDEX_NAME").value <> "" Then
        Check1(2).value = 0
    Else
        Check1(2).value = 2
    End If

    Exit Sub
    
ErrorHandler:

    MsgBox err.description
    
End Sub
