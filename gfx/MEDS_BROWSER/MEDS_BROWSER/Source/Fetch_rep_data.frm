VERSION 5.00
Begin VB.Form FetchRepData 
   Caption         =   "Representative data set dialog"
   ClientHeight    =   5205
   ClientLeft      =   5400
   ClientTop       =   5655
   ClientWidth     =   9765
   LinkTopic       =   "Form1"
   ScaleHeight     =   5205
   ScaleWidth      =   9765
   Begin VB.Frame RepFetch 
      Caption         =   "MEIC Representative data wizard"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4575
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   9375
      Begin VB.Frame DataValidation 
         Caption         =   "Validate Query"
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
         Left            =   4800
         TabIndex        =   15
         Top             =   480
         Width           =   4215
         Begin VB.OptionButton Geometry 
            Caption         =   "Global total"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   1
            Left            =   240
            TabIndex        =   19
            Top             =   720
            Width           =   1815
         End
         Begin VB.OptionButton Geometry 
            Caption         =   "Current display area"
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   18
            Top             =   360
            Width           =   2055
         End
         Begin VB.TextBox Pointsbox 
            Alignment       =   1  'Right Justify
            Height          =   285
            Left            =   2640
            TabIndex        =   17
            Top             =   960
            Width           =   1455
         End
         Begin VB.Label Pointslabel 
            Caption         =   "Total"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   1920
            TabIndex        =   16
            Top             =   960
            Width           =   615
         End
      End
      Begin VB.ComboBox GridResolution 
         Height          =   315
         Left            =   240
         TabIndex        =   14
         Text            =   "Please select resolution"
         Top             =   3600
         Width           =   3615
      End
      Begin VB.ComboBox GridType 
         Height          =   315
         Left            =   240
         TabIndex        =   12
         Text            =   "Please select grid type"
         Top             =   2640
         Width           =   3615
      End
      Begin VB.CommandButton NextButton 
         Caption         =   "Next >"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   7920
         TabIndex        =   10
         Top             =   3720
         Width           =   975
      End
      Begin VB.CommandButton ButtonRepCancel 
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
         Height          =   615
         Left            =   6360
         TabIndex        =   9
         Top             =   3720
         Width           =   975
      End
      Begin VB.CommandButton ValidateButton 
         Caption         =   "Validate"
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4800
         TabIndex        =   8
         Top             =   3720
         Width           =   975
      End
      Begin VB.TextBox SelectionStatement 
         Height          =   1095
         Left            =   4800
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   7
         Text            =   "Fetch_rep_data.frx":0000
         Top             =   2400
         Width           =   4215
      End
      Begin VB.ComboBox TemporalPeriod 
         Height          =   315
         ItemData        =   "Fetch_rep_data.frx":0029
         Left            =   240
         List            =   "Fetch_rep_data.frx":002B
         TabIndex        =   4
         Text            =   "TemporalPeriod"
         Top             =   1680
         Width           =   3600
      End
      Begin VB.ComboBox RepListType 
         Height          =   315
         Left            =   240
         TabIndex        =   3
         Text            =   "Please select data type"
         Top             =   720
         Width           =   3600
      End
      Begin VB.Label Gridreso 
         Caption         =   "Grid Resolution"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   3240
         Width           =   1695
      End
      Begin VB.Label Label3 
         Caption         =   "Grid Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   2280
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "Label2"
         Height          =   135
         Left            =   5520
         TabIndex        =   6
         Top             =   2880
         Width           =   15
      End
      Begin VB.Label TemporalList 
         Caption         =   "Temporal Period"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   1935
      End
      Begin VB.Label Temporal 
         Caption         =   "Selection statement"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4800
         TabIndex        =   2
         Top             =   2040
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Data type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
End
Attribute VB_Name = "FetchRepData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Module to create an SQL statement for the representative class of data from the Oracle database.
'The form uses a combination of information from the user and the ORACLE Table CLASS_INFORMATION
'to construct the base sql query. All SQL query and Layer information is are stored in global variable
'array SQLCurrentLayer.
'This form is the First in a series of dialogs to create the SQL query this form produces the base information
'Required to create a query on a representative data sets.

'Oracle Tables accessed : CLASS_INFORMATION
'                       : MASTER_GRID_XN
'
'Master Grid is the base table for all representative data sets, it contains the foregin keys grid_index and
'Job_number and the spatial index.  The X component of the name is constructed by use of Grid Type L signifies
'Lattice grid and a D a Domain grid. The N component relates to the Grid resolution 1 - for 1 degree,
'2 for 1/2 a degree and 4 for 1/4 of a degree.
'Hence Master_Grid_L2 is the 1/2 degree Lattice master grid

'Author :
'Date   :       22/01/2002
'Version:       1.0
'Ammendments:

Option Explicit

'Set up global values

Dim Values(100, 10) As String    ' Set values array up to accept the information from the database
Dim JobColName As String        ' JobColName is constructed from user information and SQL Table information
Dim GridRes As String           ' Resolution of grid chosen
Dim GridStyle As String         ' Type of Grid Chosen
Dim ChosenType As Long          ' Integer pointing to current row in values array

Private Sub Form_Load()

'First time through collect required information from CLASS_INFORMATION table and pre-load data type drop down

    Dim JobQuery As String
    Dim Results As Object
    Dim SQlRows As Integer
    
    'Load data base information into values array

    JobQuery = "SELECT * FROM CLASS_INFORMATION WHERE DATA_CLASS = 'REPRESENTATIVE'"
      
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

    SQlRows = 0
    
    'split dynaset based on attributes
    
    While Not Results.EOF
        Values(SQlRows, 0) = (Results("DATA_TYPE"))     'Name of data type
        Values(SQlRows, 1) = (Results("TEMPORAL"))      'Temporal list of values
        Values(SQlRows, 2) = (Results("GRID"))          'Grid type used for data type
        Values(SQlRows, 3) = (Results("RESOLUTION"))    'Grid resolution for data type
        Values(SQlRows, 4) = (Results("JOB_COL"))       'Name of the Job column in the Master grid
        Values(SQlRows, 5) = (Results("TABLE_NAME"))    'Name of Table where Attribute data is held
        Values(SQlRows, 6) = (Results("FILE_NAME"))     'Name of the Bitmap to represent this data set
        Values(SQlRows, 7) = (Results("COLOR"))         'Colour code of the bitmap
        Values(SQlRows, 8) = (Results("HEADER_TABLE"))  'Name of the Header(index) table
        Values(SQlRows, 9) = (Results("DATA_STYLE"))    'Whether data is repeat or point only
        
        AdditionalInfo.BitmapBox.AddItem (Values(SQlRows, 6)) ' Load all bitmap into drop down list
        AdditionalInfo.ColorBox.AddItem (Values(SQlRows, 7)) ' Load all colours into drop down list
        RepListType.AddItem (Values(SQlRows, 0))        'Display Data type in drop down list
        
        Results.MoveNext
        SQlRows = SQlRows + 1
    Wend
    
End Sub

Private Sub ResetQuery()
'Reset the form with default values
   
   Dim i As Integer
 
    'Clear all drop down lists
    
    TemporalPeriod.Clear
    TemporalPeriod.Text = "Please select"
    
    GridResolution.Clear
    GridResolution.Text = "Please select"
    
    GridType.Clear
    GridType.Text = "Please select"
    
    'Show no points calculated
    
    Pointsbox.Text = "Not calculated"
    
    'Turn off validation portion until a temporal period (hence job number can be set)
    
    For i = 0 To 1
        Geometry(i).Enabled = False
    Next
    
    ValidateButton.Enabled = False
    NextButton.Enabled = False
    
    'Set type to not chosen

    ChosenType = -1

    'Reset Grid resolution and type

    GridRes = "1"
    GridStyle = "L"

    'Reset Sql Statements
    
    SQLBaseWhere = ""

    SQLBaseAttributes = SQLHeaderAlias & ".grid_index, " & SQLHeaderAlias & ".location "

    SQLBaseTable = "MASTER_GRID_" & GridStyle & GridRes
    
    'Update query on screen
    
    UpdateQuery
    
End Sub

Private Sub UpdateQuery()

'Update query based on the current settings
    
    Dim SQLQuery As String
    
    SQLQuery = "SELECT " & SQLBaseAttributes _
                & " FROM " & SQLBaseTable & " " & SQLHeaderAlias
    
    If Not (SQLBaseWhere = "") Then
        SQLQuery = SQLQuery & " WHERE " & SQLBaseWhere
    End If
    
    'Show query on screen
    
    SelectionStatement.Text = SQLQuery
    
End Sub



Private Sub UpdateTable()
'Construct table from base name and grid style and resolution

    SQLBaseTable = "MASTER_GRID_" & GridStyle & GridRes
        
    UpdateQuery

End Sub

Private Sub Gridtype_Click()
'Set grid type

    If GridType.List(GridType.ListIndex) = "LATTICE" Then
        GridStyle = "L"
    Else
        GridStyle = "D"
    End If
    
    UpdateTable
End Sub

Private Sub GridResolution_Click()
'Set resolution

    If GridResolution.List(GridResolution.ListIndex) = "one" Then
        GridRes = "1"
    ElseIf GridResolution.List(GridResolution.ListIndex) = "half" Then
        GridRes = "2"
    ElseIf GridResolution.List(GridResolution.ListIndex) = "quarter" Then
        GridRes = "4"
        ElseIf GridResolution.List(GridResolution.ListIndex) = "eigth" Then
        GridRes = "8"
    ElseIf GridResolution.List(GridResolution.ListIndex) = "sixteenth" Then
        GridRes = "16"
    Else
        GridRes = "?"
    End If
        
    UpdateTable
End Sub

Private Sub RepListType_Click()

'Display temporal ranges for the data type currently selected

    Dim Items() As String
    Dim i As Long
    
    'Reset screen to prepare for new query
    
    ResetQuery
       
    'First store index of type chosen by user
    ChosenType = RepListType.ListIndex
    
    'Load up list boxes based on choise of data type
    
    'Load temporal list
    
    Items() = Split(Values(ChosenType, 1), ";")
    
    For i = 0 To UBound(Items)
        TemporalPeriod.AddItem (Items(i))
    Next
    
    'load grid type list
    
    Items() = Split(Values(ChosenType, 2), ";")
    
    For i = 0 To UBound(Items)
        GridType.AddItem (Items(i))
    Next
    
    'load resolution type list
    
    Items() = Split(Values(ChosenType, 3), ";")
    
    For i = 0 To UBound(Items)
        GridResolution.AddItem (Items(i))
    Next
    
    
End Sub

Private Sub TemporalPeriod_Click()
'A temporal period has been selected so where portion of Query can be constructed based on the
'job number column

    Dim Items() As String
    Dim i As Integer
    
    'A temporal period has been choosen
    
    'Split the string into Job names
    Items() = Split(Values(ChosenType, 4), ";")
    
    'Multiple job names each identified by temporal information
    If Items(0) = "MULTIPLE" Then
        JobColName = "Job_" & Items(1) & "_" & TemporalPeriod.List(TemporalPeriod.ListIndex)
    Else
    'One job name specified so use it
        JobColName = "Job_" & Items(0)
    End If
    
    'Construct the base where clause
    
    SQLBaseWhere = " " & SQLHeaderAlias & "." & JobColName & " > 0"
    
    'Add Job column to the select portion of the query
    
    SQLBaseAttributes = SQLHeaderAlias & ".grid_index, " & SQLHeaderAlias & ".location, " _
        & SQLHeaderAlias & "." & JobColName
    
    'Enable fetch and next buttons
    
    For i = 0 To 1
        Geometry(i).Enabled = True
    Next
    
    ValidateButton.Enabled = True
    NextButton.Enabled = True
    
    'Update the query
    
    UpdateQuery
    
End Sub

Private Sub NextButton_Click()
'Store values into the Global SQL array

    SQLCurrentLayer(0) = "REPRESENTATIVE"                               'Data Class
    SQLCurrentLayer(1) = Values(ChosenType, 0)                          'Data Type
    SQLCurrentLayer(2) = TemporalPeriod.List(TemporalPeriod.ListIndex)  'Temporal period
    SQLCurrentLayer(3) = ConstructAttributeTable                        'Attribute table Name
    SQLCurrentLayer(4) = SQLBaseTable                                   'Header Table
    SQLCurrentLayer(5) = JobColName                                     'Name of the Job_column used
    SQLCurrentLayer(6) = Values(ChosenType, 9)                          'Data style
    
    'Store the Parent form of the current query
    
    SQLQueryParent = "REPRESENTATIVE"
    
    'Preload next form with details from this one
    
    AdditionalInfo.Layerbox.Text = Values(ChosenType, 0) & "_" & GridStyle & GridRes
    AdditionalInfo.BitmapBox.ListIndex = ChosenType
    AdditionalInfo.ColorBox.ListIndex = ChosenType
    AdditionalInfo.CruiseTick.Enabled = False
    AdditionalInfo.SQLSelect.Text = SelectionStatement.Text
    
    'Hide form and show next form
    Unload Me
    AdditionalInfo.Show
    
End Sub

Private Function ConstructAttributeTable() As String
'Construct the name of the attribute table from user information and SQL table
    
    Dim TableName As String
    
    'Store Base Name
    
    TableName = Values(ChosenType, 5)
    
    'Include Grid type and Grid resolution
    
    TableName = TableName & "_" & GridStyle & GridRes
    
    'If representative Physical profile then add temporal field to point to monthly tables
    If Values(ChosenType, 5) = "REPRES_PROFILE" Then
        TableName = TableName & "_" & TemporalPeriod.List(TemporalPeriod.ListIndex)
    End If
    
    'return name of the Attribute table
    
    ConstructAttributeTable = TableName

End Function

Private Sub ButtonRepCancel_Click()
'Reset the query and hide the form
    
    ResetQuery
    
    Unload Me
   
End Sub


Private Sub ValidateButton_Click()
'Validate the Base query and collect the number of geometeries for the data type

    Dim JobQuery As String
    Dim Results As Object
    Dim RecCount As Long
    Dim Xmin As Single
    Dim Ymin As Single
    Dim Xmax As Single
    Dim Ymax As Single
    Dim Rect As Rectangle

    Screen.MousePointer = vbHourglass
    Pointsbox.Text = "Calculating...."
    Pointsbox.Refresh
    
    'Fetch bounds of the current screen
    Set Rect = Main.Map1.Bounds
            
    Xmin = Rect.Xmin
    Ymin = Rect.Ymin
    Xmax = Rect.Xmax
    Ymax = Rect.Ymax

    'Build Sql statement Select component
  
    JobQuery = "SELECT COUNT(GRID_INDEX)" _
            & " FROM " & SQLBaseTable

    'Now add the Where component of the query

    If (Geometry(0).value) Then         'Approximate number so use SDO_FILTER
        JobQuery = JobQuery & " HDR WHERE " _
        & "latitude between " & Ymin & " AND " & Ymax & " AND LONGITUDE BETWEEN " & Xmin & " AND " & Xmax _
        & " AND " & SQLBaseWhere
    Else                                'Global Query do not use spatial query
        JobQuery = JobQuery & " HDR WHERE " & SQLBaseWhere
    End If

    On Error GoTo SQLerror:
      
    'Reults contain the dynaset of information
    
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

    RecCount = Results("COUNT(GRID_INDEX)")
    
    'reset mouse
    Screen.MousePointer = vbDefault
    
    'Display number of Points on screen
    Pointsbox.Text = RecCount
    
    Exit Sub

SQLerror:
    MsgBox err.description
    Pointsbox.Text = "Not loaded"
    Screen.MousePointer = vbDefault
    
End Sub
