VERSION 5.00
Begin VB.Form QueryBuilder 
   Caption         =   "Query Builder"
   ClientHeight    =   10095
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8220
   LinkTopic       =   "Form1"
   ScaleHeight     =   10095
   ScaleWidth      =   8220
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton resetbutton 
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3480
      TabIndex        =   24
      Top             =   9120
      Width           =   1335
   End
   Begin VB.CommandButton fetchData 
      Caption         =   "Fetch data"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5640
      TabIndex        =   11
      Top             =   9120
      Width           =   1335
   End
   Begin VB.CommandButton Cancel 
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
      Height          =   735
      Left            =   1440
      TabIndex        =   10
      Top             =   9120
      Width           =   1335
   End
   Begin VB.Frame QueryDescription 
      Caption         =   "Build Query"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5895
      Left            =   120
      TabIndex        =   1
      Top             =   3000
      Width           =   7935
      Begin VB.CommandButton LikeButton 
         Caption         =   "LIKE"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3840
         TabIndex        =   26
         Top             =   480
         Width           =   615
      End
      Begin VB.CommandButton BetweenButton 
         Caption         =   "BTWN"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3000
         TabIndex        =   25
         Top             =   480
         Width           =   615
      End
      Begin VB.CommandButton LessEqual 
         Caption         =   "<="
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
         Left            =   3840
         TabIndex        =   23
         Top             =   2880
         Width           =   615
      End
      Begin VB.CommandButton GreaterEqual 
         Caption         =   ">="
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
         Left            =   3840
         TabIndex        =   22
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton Equal 
         Caption         =   "="
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
         Left            =   3840
         TabIndex        =   21
         Top             =   1680
         Width           =   615
      End
      Begin VB.CommandButton Notequal 
         Caption         =   "<>"
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
         Left            =   3000
         TabIndex        =   20
         Top             =   1680
         Width           =   615
      End
      Begin VB.CommandButton LessThan 
         Caption         =   "<"
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
         Left            =   3000
         TabIndex        =   19
         Top             =   2880
         Width           =   615
      End
      Begin VB.CommandButton GreaterThan 
         Caption         =   ">"
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
         Left            =   3000
         TabIndex        =   18
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton OrButton 
         Caption         =   "OR"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3840
         TabIndex        =   17
         Top             =   1080
         Width           =   615
      End
      Begin VB.CommandButton AndButton 
         Caption         =   "AND"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3000
         TabIndex        =   16
         Top             =   1080
         Width           =   615
      End
      Begin VB.ListBox SampleValues 
         Height          =   2790
         Left            =   4800
         TabIndex        =   12
         Top             =   600
         Width           =   2415
      End
      Begin VB.ListBox SQLCols 
         Height          =   2790
         Left            =   240
         TabIndex        =   9
         Top             =   600
         Width           =   2415
      End
      Begin VB.TextBox Query 
         Height          =   1455
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   8
         Top             =   4080
         Width           =   7095
      End
      Begin VB.Label SampleLabel 
         Caption         =   "SampleValues"
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
         Left            =   4800
         TabIndex        =   15
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Attributelabel 
         Caption         =   "Attributes"
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
         TabIndex        =   14
         Top             =   360
         Width           =   1455
      End
      Begin VB.Label SQLSelect 
         Height          =   375
         Left            =   240
         TabIndex        =   13
         Top             =   3600
         Width           =   6975
      End
   End
   Begin VB.Frame LayerDetails 
      Caption         =   "Current Layer Details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   7935
      Begin VB.TextBox DataTypeLabel 
         Height          =   375
         Left            =   2400
         TabIndex        =   6
         Top             =   1680
         Width           =   5055
      End
      Begin VB.TextBox DataClassLabel 
         Height          =   375
         Left            =   2400
         TabIndex        =   4
         Top             =   1080
         Width           =   5055
      End
      Begin VB.TextBox Layername 
         Height          =   375
         Left            =   2400
         TabIndex        =   2
         Top             =   480
         Width           =   5055
      End
      Begin VB.Label DataTypeText 
         Caption         =   "Data Type"
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
         Left            =   480
         TabIndex        =   7
         Top             =   1800
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "Data Class"
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
         Left            =   480
         TabIndex        =   5
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label LayerLabel 
         Caption         =   "Selected Layer"
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
         Left            =   480
         TabIndex        =   3
         Top             =   600
         Width           =   1335
      End
   End
End
Attribute VB_Name = "QueryBuilder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'The Query builder form is designed to work with any layer creaed by the layer extraction wizard
'It relies on information stored in global variable array SQLLayerInfo to construct SQL querues
'It is designed to create a 'sub' layer based on the data attributes of the chosen layer.
'It makes use of (foreign) keys extracted from the data set header table (the table that contains
'location, position etc.) to locate required data in the attribute tables
'The foreign keyed stored in the layer (via the SELECT portion of the where command) are
'               DATA CLASS                   KEYS
'               ----------                   ----
'               Representative              Grid_Index
'               All others                  Observation_num, Job_num


'Author:           Nigel Rees
'Date:             23/01/02
'Version:          1.0
'Ammendments:

Dim FetchLayerFs As Boolean         'Flag to indicate if data of chosen layer has been accessed
Dim fs As Features                  'The feature collection of features of (on screen) chosen layer
Dim PointsSelected As Integer       'Number of features on screen
Dim WhereText As String             'SQLWhere clause
Dim Querydata As Dataset            'Data set belonging to On screen features (contains foregin keys)


Private Sub Form_Load()
'On initial load set Fetch Layer to true

    FetchLayerFs = True
    
End Sub

Private Sub SetupFs()
'On first time through (with new selected region) create a feature selection containing the
'Feature set containing current screen from chosen layer
'Store all Features on screen values in data set array

    Dim LyrSource As Layer
    Dim i As Long
    
    'Store current layer in LyrSource
    
    Set LyrSource = Main.Map1.Layers(SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx))
 
    'Find geometries inside current window
    
    Set fs = LyrSource.SearchWithinRectangle(Main.Map1.Bounds, miSearchTypePartiallyWithin)
    
    'SetPoint counted to total number of features
    PointsSelected = (fs.Count)
    
    Set Querydata = Main.Map1.Datasets.Item(LyrSource)
     
    'Set Fetch data to false
    FetchLayerFs = False
    
End Sub


Private Sub Query_Change()
'User entered text

    WhereText = Query.Text
    
End Sub

Private Sub SampleValues_Click()
'Add values clicked on to text box

    Dim Value As String
    
    Value = SampleValues.List(SampleValues.ListIndex)
    
    WhereText = WhereText & " " & Value
    Query.Text = WhereText
    
End Sub

Private Sub SQLCols_DblClick()
'If double click on parameter name add it to the text box

    Dim Param As String

    Param = SQLCols.List(SQLCols.ListIndex)
    
    WhereText = WhereText & " " & SQLAttributeAlias & "." & Param
    
    Query.Text = WhereText
    
End Sub

'Series of Buttons which add appropriate operator to the text box

Private Sub ResetButton_Click()
    WhereText = ""
    Query.Text = WhereText
End Sub

Private Sub AndButton_Click()
    WhereText = WhereText & " AND "
    Query.Text = WhereText
End Sub

Private Sub GreaterEqual_Click()
    WhereText = WhereText & " >= "
    Query.Text = WhereText
End Sub

Private Sub GreaterThan_Click()
    WhereText = WhereText & " > "
    Query.Text = WhereText
End Sub

Private Sub LessEqual_Click()
   WhereText = WhereText & " <= "
   Query.Text = WhereText
End Sub

Private Sub LessThan_Click()
    WhereText = WhereText & " < "
    Query.Text = WhereText
End Sub

Private Sub OrButton_Click()
    WhereText = WhereText & " OR "
    Query.Text = WhereText
End Sub

Private Sub NotEqual_Click()
    WhereText = WhereText & " <> "
    Query.Text = WhereText
End Sub

Private Sub Equal_Click()
    WhereText = WhereText & " = "
    Query.Text = WhereText
End Sub

Private Sub BetweenButton_Click()
    WhereText = WhereText & " BETWEEN "
    Query.Text = WhereText
End Sub

Private Sub LikeButton_Click()
    WhereText = WhereText & " LIKE "
    Query.Text = WhereText
End Sub

Private Sub SQLCols_Click()

'Subroute to display sample values of a parameter in the SampleValues text box

    Dim Param As String         'Parameter chosen
    Dim JobQuery As String      'SQL query sent to database
    Dim Results As Object       'Dynaset containing results
    Dim F As Feature            'Current feature from the layer
    Dim RecordCount As Integer  'Current feature used
    Dim object_id As Variant    'Foreign Key
    Dim object_id2 As Variant   'Secondary Key
    Dim Result As String        'Result of Dynaset query
    
    'On first time through setup the feature selection
    
    If (FetchLayerFs) Then SetupFs
    
    'First set local variable Param = to selected parameter
    
    Param = SQLCols.List(SQLCols.ListIndex)
   
    'Clear the current drop down list
    SampleValues.Clear
    
   'loop through to fetch a sub-sample of values from the selection
           
    If (PointsSelected = 0) Then        'No on screen data for selected layer
        MsgBox "No layer data visible in the current window"
        Cancel_Click
    Else                                'Data available for this layer
        RecordCount = 1                 'Only load one feature data set for profile data
        Set F = fs(RecordCount)         'f is first feature in dataset
    
        'Collect the foreign key and build the query - based on different data classes
        'See comments at top
    
        Select Case SQLLayerInfo(SQLCurrentPointer, SQLDataClassIdx)
        
        Case "REPRESENTATIVE"
        
            '   Extract value of the foreign key from the record (grid index) from f
            
            object_id = Querydata.Value(F, "grid_index")
       
            'Create Query
            
            JobQuery = "SELECT " & Param & " From " & SQLLayerInfo(SQLCurrentPointer, SQLAttributeTableIdx) _
                    & " WHERE GRID_INDEX = " & object_id
      
    
        Case "OBSERVED"
        
         '   Extract value of the foreign key from the record (grid index) from f
            
            object_id = Querydata.Value(F, "MEDS_JOB_NUMBER")
            object_id2 = Querydata.Value(F, "MEDS_OBSERVATION_NUMBER")
       
            'Create Query
            
            JobQuery = "SELECT " & Param & " From " & SQLLayerInfo(SQLCurrentPointer, SQLAttributeTableIdx) _
                    & " WHERE MEDS_JOB_NUMBER = " & object_id _
                    & " AND MEDS_OBSERVATION_NUMBER = " & object_id2
            
        End Select
        
        Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
   
        'Add column names to selection list
    
        While Not Results.EOF
            If Results(Param).Value <> "" Then SampleValues.AddItem Results(Param).Value
            Results.MoveNext
        Wend
    End If
  
End Sub

Private Sub fetchData_Click()
    Dim JobQuery As String
    Dim AttributeQuery As String
    Dim Layername As String
    Dim Results As Object
    Dim OldLyr As Layer
    Dim F As Feature
    Dim i As Integer
    Dim object_id As Variant    'Foreign Key
    Dim bitmapFile As String
    Dim Colour As Integer
    
    On Error GoTo err
    
    Screen.MousePointer = vbHourglass
    JobQuery = SQLLayerInfo(SQLCurrentPointer, SQLStatementIdx) & " AND " & WhereText
    MsgBox JobQuery
    If SQLLayerInfo(SQLCurrentPointer, SQLParentLayerIdx) = "PARENT LAYER" Then
  
    
      'For first sub query insert the name of the attribute table into query
      
        AttributeQuery = Replace(JobQuery, "FROM", "FROM " _
                    & SQLLayerInfo(SQLCurrentPointer, SQLAttributeTableIdx) & " " & SQLAttributeAlias & ",")
        
        If SQLDict.Item(Main.txtSelectableLayer & "GenericIndex") = 5 Then
          AttributeQuery = AttributeQuery & " AND " & SQLHeaderAlias & ".GRID_INDEX = " _
                    & SQLAttributeAlias & ".GRID_INDEX"
        Else
            AttributeQuery = AttributeQuery & " AND " & _
                            SQLHeaderAlias & ".MEDS_JOB_NUMBER = " & SQLAttributeAlias & ".MEDS_JOB_NUMBER AND " & _
                            SQLHeaderAlias & ".MEDS_OBSERVATION_NUMBER = " & SQLAttributeAlias & ".MEDS_OBSERVATION_NUMBER AND "
                    
        End If
    Else
        AttributeQuery = JobQuery
    End If

    MsgBox AttributeQuery
    'First test if there is 'room' to add a new layer
    
    If SQLCurrentPointer < SQLMAXLAYERS - 1 Then
        
        'Generate the name using the source layer as a base name
        
        While Main.LayerExists(SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx) & "_" & i) And i < SQLMAXLAYERS
            i = i + 1
        Wend
    
        Layername = SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx) & "_" & i
        
        'Set default colour and file type for child layers
        
        Colour = 255
        bitmapFile = "cross.bmp"
    
        'Now add new layer using addlayer routine in main
        
        If (Main.AddLayer(AttributeQuery, Layername, bitmapFile, Colour) = True) Then
            'Store layer details for use at a later stage
        
            For i = 1 To SQLConstructCols
                SQLLayerInfo(SQLLayerCount, i) = SQLLayerInfo(SQLCurrentPointer, i)
            Next
            
            'Store layer name, the query and the name of the parent layer
            
            SQLLayerInfo(SQLLayerCount, SQLLayerNameIdx) = Layername
            SQLLayerInfo(SQLLayerCount, SQLStatementIdx) = AttributeQuery
            SQLLayerInfo(SQLLayerCount, SQLParentLayerIdx) = SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx)
            SQLLayerCount = SQLLayerCount + 1
            
        End If

    Else
    'Maximum number of SQL layers has been constructed
    
        MsgBox "Max number of SQL layers reached please delete some layers "
    End If
    
    'reset mouse
    Screen.MousePointer = vbDefault
    
    'reset screen
    Reset
    
    'hide the form
    Unload Me
    
    Exit Sub

err:
   MsgBox err.Description
End Sub

Private Sub Reset()

    'reset Query text
    WhereText = ""
    
    'reset fetch layer to true
    FetchLayerFs = True
    
    'Clear drop down lists
    
    SQLCols.Clear
    
    SampleValues.Clear

    Query.Text = WhereText
    
End Sub

Private Sub Cancel_Click()

    'Reset fields and hide form
    
    Reset
    
    'Hide form
    Unload Me
    
End Sub

