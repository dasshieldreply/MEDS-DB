VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form PointInformation 
   Caption         =   "Data Point information"
   ClientHeight    =   7005
   ClientLeft      =   7095
   ClientTop       =   5025
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   ScaleHeight     =   467
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   358
   Begin VB.CommandButton FlagBtn 
      Caption         =   "Edit Flag"
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
      Left            =   1920
      TabIndex        =   26
      Top             =   6240
      Width           =   1695
   End
   Begin VB.TextBox HiddenText 
      BackColor       =   &H80000004&
      Height          =   285
      Left            =   120
      TabIndex        =   25
      Top             =   6240
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton ViewData 
      Caption         =   "View Attributes"
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
      Left            =   120
      TabIndex        =   24
      Top             =   6240
      Width           =   1695
   End
   Begin VB.CommandButton ExitButton 
      Caption         =   "Exit"
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
      Left            =   3720
      TabIndex        =   12
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Frame Frame2 
      Caption         =   "Job Details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3255
      Left            =   120
      TabIndex        =   5
      Top             =   2640
      Width           =   5175
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   9
         Left            =   2400
         TabIndex        =   23
         Top             =   2640
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   8
         Left            =   2400
         TabIndex        =   22
         Top             =   2184
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   7
         Left            =   2400
         TabIndex        =   21
         Top             =   1728
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   6
         Left            =   2400
         TabIndex        =   20
         Top             =   1272
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   5
         Left            =   2400
         TabIndex        =   19
         Top             =   816
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   4
         Left            =   2400
         TabIndex        =   18
         Top             =   360
         Width           =   2535
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   11
         Top             =   360
         Width           =   4335
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   10
         Top             =   825
         Width           =   4335
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   6
         Left            =   240
         TabIndex        =   9
         Top             =   1290
         Width           =   4335
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   7
         Left            =   240
         TabIndex        =   8
         Top             =   1755
         Width           =   4335
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   8
         Left            =   240
         TabIndex        =   7
         Top             =   2220
         Width           =   4335
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   9
         Left            =   240
         TabIndex        =   6
         Top             =   2700
         Width           =   4335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Instrument"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   2
      Top             =   1440
      Width           =   5175
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   3
         Left            =   2400
         TabIndex        =   17
         Top             =   720
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   2
         Left            =   2400
         TabIndex        =   16
         Top             =   360
         Width           =   2535
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   4
         Top             =   720
         Width           =   2535
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Frame PointInform 
      Caption         =   "Position"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5175
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   0
         Left            =   2400
         TabIndex        =   15
         Top             =   360
         Width           =   2535
      End
      Begin VB.TextBox Textbox 
         BackColor       =   &H80000004&
         Height          =   285
         Index           =   1
         Left            =   2400
         TabIndex        =   13
         Top             =   720
         Width           =   2535
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   4320
         Top             =   5760
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   14
         Top             =   360
         Width           =   2175
      End
      Begin VB.Label PointText 
         Caption         =   "Label1"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   1
         Top             =   720
         Width           =   2055
      End
   End
End
Attribute VB_Name = "PointInformation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Form to display information about a point
'Called from PointInfo module with header information pre-loaded
'Generic form for all data types some buttons enabled depending on data type



'Author:
'Date:          25/02/2002
'Verison:        1.0
'Ammendments:


Private Sub ExitButton_Click()
    
'Exit options
    
    'Hide the form
    Unload Me
End Sub


Private Sub FlagBtn_Click()
    Dim Aqua As Object
    Dim DataTypeIndex As Long
    
    Set Aqua = CreateObject("ITA_Aqua.MEDSGenericInterface")
    Aqua.User = UID
    Aqua.Password = Passwd
    Aqua.Database = Database
    Aqua.Init
    Aqua.MEDSJobForFlags = Textbox(4).Text
    Aqua.MEDSObsForFlags = HiddenText.Text
    DataTypeIndex = SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    Aqua.DataTypeIndex = DataTypeIndex
    Aqua.SetFlags
    Aqua.Close
End Sub



Private Sub SetTablesForCurrentLayer()

    ' Find the current data type index and work out what tables should
    ' be present for that data type
    Dim strObsTable As String
    Dim DataTypeIndex As Long
    Dim SQLStatement As String
    Dim OraDynaset As Object
    
    strObsTable = SQLDict.Item(Main.txtSelectableLayer.Text & "ObsTable")
    DataTypeIndex = SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    
    Tables.RemoveAll
            
    SQLStatement = "select distinct table_name,repeat_count from field_lookup where data_type_index = " & DataTypeIndex & " and table_name <> '" & strObsTable & "' order by repeat_count"
    Debug.Print SQLStatement
    Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
    Tables.Add strObsTable, True
    While Not OraDynaset.EOF
        Dim strTmp As String
    
        strTmp = OraDynaset("table_name")
        If Tables.Exists(strTmp) = False Then
            If left(strObsTable, 14) = "REPRES_PROFILE" Then
                If left(strTmp, 14) <> "REPRES_PROFILE" Then
                    ' only add one REPRES_PROFILE to the list of tables
                    Tables.Add strTmp, True
                End If
            Else
                Tables.Add strTmp, True
            End If
                        
        End If
        OraDynaset.MoveNext
    Wend
    OraDynaset.Close
    
End Sub


Private Sub Form_Unload(Cancel As Integer)
    PointInformationIsLoaded = False
End Sub

Private Sub ViewData_Click()

Dim Data() As String, ColsNames() As String
Dim DataTable As String
Dim NumberOfRows As Long
Dim k, i
Dim Error As Boolean

    If Not ShowAttributesIsLoaded Then
        Call SetTablesForCurrentLayer

        'View data attributes
        'Add to the msfexgridcontrol values stored in the header and attribute tables
        'Build SQL using the global array SQLLayerInfo and the Current Layer Pointer

        'Fetch header table information

        k = Tables.keys
        DataTable = k(0)
        displayGrid.TabStrip1.Tabs(1).Caption = k(0)
        For i = 1 To Tables.Count - 1
            If k(i) <> "MEDS_PROCESSING_JOB" And k(i) <> "DIR_AMBIENT_REPEAT" Then
                displayGrid.TabStrip1.Tabs.Add i + 1, , k(i)
            End If
        Next i
    
        Call FetchDataFromDB(DataTable, Data, ColsNames, NumberOfRows, Error)
    
        If Error = False Then
    
            Call AddToGrid(displayGrid.HeaderTable(1), Data, ColsNames, UBound(ColsNames), NumberOfRows)
    
            displayGrid.Show
            ShowAttributesIsLoaded = True
        End If
    Else
        MsgBox "Close the existing Attributes Dialog box"
    End If
End Sub

Public Sub FetchDataFromDB(DataTable As String, _
                           ByRef DataPoints() As String, _
                           ByRef ColNames() As String, _
                           ByRef NumberOfRows As Long, _
                           ByRef Error As Boolean)

'Ptrs for arrays
Dim RowPtr As Long, ColPtr As Integer, NumCols As Integer
'SQL Variables
Dim Results As Object
Dim WhereClause As String
Dim JobQuery As String
Dim OrderClause As String
Dim FieldLookupTableName As String
Dim i As Long

Dim JobNum As Long, IdNum
Dim RepresData As Boolean

'MAPX variables
Dim Querydata As Dataset
Dim objectid1 As Variant, objectid2 As Variant

    Error = False
    JobNum = Textbox(4).Text
    IdNum = HiddenText.Text
  
    'First collect all columns from the attribute table
    '
    ' If we are reading REPRES_PROFILES ( GPPDB ) then use the definition
    ' for the REPRES_PROFILE_L1_JAN in field lookup as this will do for all the
    ' data.

    RepresData = (left(DataTable, 14) = "REPRES_PROFILE")
    FieldLookupTableName = DataTable
    
    If RepresData Then
        FieldLookupTableName = "REPRES_PROFILE_L1_JAN"
    End If
        
    
    JobQuery = "SELECT Count(FIELD_NAME) From FIELD_LOOKUP WHERE Table_Name = '" _
                & FieldLookupTableName & "' and data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & " and (include_in_input = 1 or table_name = 'ASRAP_POINT_OBSERVATION')"
                
    Debug.Print JobQuery
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    NumCols = Results("Count(FIELD_NAME)")
    Results.Close
    If NumCols > 0 Then
        ReDim ColNames(0 To NumCols - 1)
    Else
        MsgBox ("Internal Error : No columns found for table " & FieldLookupTableName & " data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex"))
        Error = True
        Exit Sub
    End If
    
    JobQuery = "SELECT FIELD_NAME From FIELD_LOOKUP WHERE Table_Name = '" _
                & FieldLookupTableName & "' and data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & " and (include_in_input = 1 or table_name = 'ASRAP_POINT_OBSERVATION')"
   
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

'Add column names to the array
    
    RowPtr = 0
    
    While Not Results.EOF
        ColNames(RowPtr) = Results("FIELD_NAME")
        Results.MoveNext
        RowPtr = RowPtr + 1
    Wend
    Results.Close
'Count the number of rows to return

'Start to build SQL for the count
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        Dim k
'For Gridded data foreign key is the grid index number and sometimes the DATATYPE
        
        If RepresData Then
            Dim Dt As String
            Dt = SQLDict.Item(Main.txtSelectableLayer.Text & "SelectDataType")
            WhereClause = " WHERE GRID_INDEX = " & IdNum & " AND DATATYPE = '" & Dt & "'"
        Else
            WhereClause = " WHERE GRID_INDEX = " & IdNum
        End If
        
        k = Criteria.keys
        
        For i = 0 To Criteria.Count - 1
            If InStr(1, Criteria.Item(k(i)), DataTable) > 0 Then
                WhereClause = WhereClause & " and " & Criteria.Item(k(i))
            End If
        Next
    Else
'Most other data uses meds_processing_job and meds_observation_number
        If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") <> 8 Then
            WhereClause = " WHERE MEDS_JOB_NUMBER = " & JobNum & " AND MEDS_OBSERVATION_NUMBER = " & IdNum
        Else
             WhereClause = " WHERE MEDS_JOB_NUMBER = " & JobNum & " AND MEDS_TRACK_NUMBER = " & IdNum
        End If
    End If
    
    OrderClause = " "
    If DataTable = "AQUA2081_LINE_DATA" Or DataTable = "AQUA2081_LINE_DATA" Then
        OrderClause = " ORDER BY date_recorded "
    Else
        If RepresData Then
            OrderClause = " Order by depth asc "
        Else
        ' if there are any values of 'SORT_ORDER' > 0 in the Field_lookup table for
        ' this table, order by these fields
            
            JobQuery = "SELECT FIELD_NAME From FIELD_LOOKUP WHERE Table_Name = '" _
                       & FieldLookupTableName & "' and data_type_index = " _
                       & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & _
                    " and sort_order > 0 order by sort_order"
     
            Debug.Print JobQuery
            
            Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

            'Add column names to the order clause
    
            If Not Results.EOF Then
                OrderClause = " ORDER BY "
       
                While Not Results.EOF
                    OrderClause = OrderClause & Results("FIELD_NAME") & ","
                    Results.MoveNext
                Wend
                OrderClause = left(OrderClause, Len(OrderClause) - 1)
                OrderClause = OrderClause & "  "
            End If
            Results.Close
        End If
    End If
    

'Build the SQL to count the number of rows
   
    JobQuery = "SELECT COUNT(ROWID) From " & DataTable & WhereClause
    Debug.Print JobQuery
    
'Fetch the count
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
 
    NumberOfRows = Results("COUNT(ROWID)")
    Results.Close
're dimension array

    If NumberOfRows <> 0 Then
        ReDim DataPoints(0 To NumberOfRows - 1, 0 To NumCols - 1)
    End If

'Fetch the data

    JobQuery = "SELECT * FROM " & DataTable & WhereClause & OrderClause
 
    Debug.Print JobQuery
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    RowPtr = 0
 
    While Not Results.EOF
        For ColPtr = 0 To NumCols - 1
        'Store Dynaset results
            If (ColNames(ColPtr) = "LOCATION") Or _
               (ColNames(ColPtr) = "ENVELOPE") Then
                DataPoints(RowPtr, ColPtr) = -9999
            ElseIf Results(ColNames(ColPtr)) <> "" Then
                DataPoints(RowPtr, ColPtr) = Results(ColNames(ColPtr)).value
            Else
                DataPoints(RowPtr, ColPtr) = -9999
            End If

        Next
        
        Results.MoveNext
        RowPtr = RowPtr + 1
    Wend
    Results.Close

End Sub

Public Sub AddToGrid(Grid As MSFlexGrid, ByRef DataArray() As String, _
                      ByRef headerArray() As String, NumCols As Integer, NumRows As Long)
Dim ColPtr As Integer, RowPtr As Integer
Dim ColHeadings As String

    'First setup grid
    Grid.Clear
    Grid.Cols = NumCols + 2
    Grid.Rows = NumRows + 1
    
    'Add column headings
    For ColPtr = 0 To NumCols
        ColHeadings = ColHeadings & " | " & headerArray(ColPtr)
    Next
    
    Grid.FormatString = ColHeadings
    
    'Place data onto the grid
    If NumRows > 0 Then
        For RowPtr = 0 To NumRows - 1
            Grid.Row = RowPtr + 1
            For ColPtr = 0 To ColPtr - 1
                Grid.col = ColPtr + 1
                If DataArray(RowPtr, ColPtr) <> "-9999" Then
                    Grid.Text = DataArray(RowPtr, ColPtr)
                End If
            Next
        Next
    End If

End Sub
