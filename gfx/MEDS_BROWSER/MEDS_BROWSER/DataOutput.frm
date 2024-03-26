VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{092B5AF5-C0DE-11D5-AE8D-00A0C9EACF36}#1.0#0"; "Shape File Control.ocx"
Begin VB.Form DataOutput 
   Caption         =   "Data Output"
   ClientHeight    =   7725
   ClientLeft      =   5820
   ClientTop       =   4170
   ClientWidth     =   11355
   LinkTopic       =   "Form1"
   ScaleHeight     =   7725
   ScaleWidth      =   11355
   Begin VB.Frame Frame4 
      Caption         =   "Actions"
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
      Left            =   6600
      TabIndex        =   9
      Top             =   6240
      Width           =   4575
      Begin VB.CommandButton MEICBttn 
         Caption         =   "MEIC Format"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   14
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton OutputBtn 
         Caption         =   "Output"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   12
         Top             =   720
         Width           =   1695
      End
      Begin VB.CommandButton ShapeFileBtn 
         Caption         =   "Shape File"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   11
         Top             =   240
         Width           =   1695
      End
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
         Height          =   375
         Left            =   480
         TabIndex        =   10
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Data Seperator"
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
      Top             =   6240
      Width           =   3255
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   2520
         Top             =   600
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.OptionButton SpaceOption 
         Caption         =   "Space"
         Height          =   375
         Left            =   240
         TabIndex        =   8
         Top             =   720
         Width           =   1695
      End
      Begin VB.OptionButton CSVOption 
         Caption         =   "Comma (CSV format)"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Value           =   -1  'True
         Width           =   2535
      End
      Begin ArcViewShapeFile.ShapeFiles ShapeFiles1 
         Left            =   2400
         Top             =   120
         _ExtentX        =   953
         _ExtentY        =   953
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Column Selection"
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
      TabIndex        =   0
      Top             =   240
      Width           =   11055
      Begin VB.ListBox DataList 
         Height          =   4545
         Left            =   6120
         MultiSelect     =   2  'Extended
         TabIndex        =   13
         Top             =   720
         Visible         =   0   'False
         Width           =   4815
      End
      Begin VB.CheckBox DataAll 
         Alignment       =   1  'Right Justify
         Caption         =   "Select all"
         Height          =   375
         Left            =   6000
         TabIndex        =   5
         Top             =   5400
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.CheckBox IndexAll 
         Alignment       =   1  'Right Justify
         Caption         =   "Select all"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   5280
         Width           =   975
      End
      Begin VB.ListBox IndexList 
         Height          =   4545
         ItemData        =   "DataOutput.frx":0000
         Left            =   240
         List            =   "DataOutput.frx":0002
         MultiSelect     =   2  'Extended
         TabIndex        =   1
         Top             =   720
         Width           =   5415
      End
      Begin VB.Label Label1 
         Caption         =   "Data Columns"
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
         Left            =   6120
         TabIndex        =   3
         Top             =   360
         Visible         =   0   'False
         Width           =   2175
      End
      Begin VB.Label Label1 
         Caption         =   "Select Ouput Columns"
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
         TabIndex        =   2
         Top             =   360
         Width           =   2175
      End
   End
End
Attribute VB_Name = "DataOutput"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim CurrentLayer As String
'MAPX variables
Dim Querydata As Dataset
Dim fs As Features
Dim Map1 As Map
Dim NumIndexCols As Integer, NumDataCols As Integer
Dim NumberOfPoints As Integer

Private Sub CancelBtn_Click()
    
    Unload Me
    
End Sub


Private Sub Form_Load()
Dim DataTable As String, JobQuery As String
Dim Results As Object
Dim DepthPtr As Integer, i As Integer
Dim ColumnNames() As String, TempCol As String
    'set values selected
    
    Set Map1 = Main.Map1
    CurrentLayer = Main.txtSelectableLayer
    Set fs = Map1.Layers.Item(CurrentLayer).Selection
    NumberOfPoints = Map1.Layers.Item(CurrentLayer).Selection.Count
    If NumberOfPoints = 0 Then
        MsgBox ("No Features selected")
        Exit Sub
    End If
        
    If CurrentLayer = "User" Then
        Unload Me
        Exit Sub
    End If
        
    Set Querydata = Map1.Datasets.Item(Main.DatasetNameFromLayer(Map1.Layers.Item(CurrentLayer)))
    'Now add the name of the columns to the list
    
    JobQuery = "SELECT TABLE_NAME, FIELD_NAME From Field_lookup " & _
               "WHERE data_type_index = " & _
                SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & " and " & _
               "column_name is not null  and " & _
               "field_name <> 'DUC' and " & _
               "field_name <> 'LOCATION' and " & _
               "field_name <> 'ENVELOPE' order by field_position"
   
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

'Add column names to the array

    IndexHdr = SQLDict.Item(Main.txtSelectableLayer.Text & "ObsTable")

    NumIndexCols = 0
    
    While Not Results.EOF
        Dim StrName As String
        
        If left(Results("TABLE_NAME"), 14) = "REPRES_PROFILE" Then
            StrName = IndexHdr & "." & Results("FIELD_NAME")
        Else
            StrName = Results("TABLE_NAME") & "." & Results("FIELD_NAME")
        End If
        IndexList.AddItem StrName
        Results.MoveNext
        NumIndexCols = NumIndexCols + 1
    Wend
    
    JobQuery = "SELECT count(FIELD_NAME) From Field_lookup WHERE data_type_index = " _
                & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & " and column_name is not null"
     
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    ReDim ColumnNames(0 To Results("Count(FIELD_NAME)"))
    
    JobQuery = "SELECT FIELD_NAME From Field_lookup WHERE data_type_index = " _
                & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex") & " and column_name is not null"
                
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

'Add column names to the array
    
    NumDataCols = 0
    DepthPtr = -1
    
    'test for depth in results
    While Not Results.EOF
        ColumnNames(NumDataCols) = Results("FIELD_NAME")
        If ColumnNames(NumDataCols) = "DEPTH" Then DepthPtr = NumDataCols
        Results.MoveNext
        NumDataCols = NumDataCols + 1
    Wend
    
    If DepthPtr > -1 Then
        'need to swop depth col in position 0
        TempCol = ColumnNames(0)
        ColumnNames(0) = "DEPTH"
        ColumnNames(DepthPtr) = TempCol
    End If
    
    For i = 0 To NumDataCols - 1
        DataList.AddItem ColumnNames(i)
    Next
    
End Sub

Private Sub IndexAll_Click()
Dim i As Integer
'Select all columns

    If IndexAll.value = 1 Then
        For i = 0 To NumIndexCols - 1
            IndexList.Selected(i) = True
        Next
    Else
        For i = 0 To NumIndexCols - 1
            IndexList.Selected(i) = False
        Next
    End If
End Sub

Private Sub DataAll_Click()
Dim i As Integer
'Select all columns

    If DataAll.value = 1 Then
        For i = 0 To NumDataCols - 1
            DataList.Selected(i) = True
        Next
    Else
        For i = 0 To NumDataCols - 1
            DataList.Selected(i) = False
        Next
    End If
End Sub




Private Sub MEICBttn_Click()
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        MsgBox ("Climatology cannot be exported using the MEIC Format")
        Exit Sub
    End If
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 8 Then
        MsgBox ("Track features cannot be exported using the MEIC Format")
        Exit Sub
    End If

    Call Main.OutputCSVFile
End Sub

Private Sub OutputBtn_Click()
Dim SelectSQL As String
Dim DataCols() As String, IndexCols() As String
Dim FeatureArray() As String
Dim DataColCount As Integer, IndexColCount As Integer

'Output data in ASCII format

ReDim FeatureArray(1 To NumberOfPoints, 1 To 2)

    DataExtraction SelectSQL, DataCols, IndexCols, DataColCount, IndexColCount, FeatureArray
    Debug.Print SelectSQL
    If (IndexColCount + DataColCount > 0) Or (NumIndexCols + NumDataCols = 0) Then
        OutputTextFile SelectSQL, DataCols, IndexCols, DataColCount, IndexColCount
    End If
    
    Unload Me
    
End Sub

Private Sub ShapeFileBtn_Click()
Dim SelectSQL As String
Dim DataCols() As String, IndexCols() As String
Dim FeatureArray() As String
Dim DataColCount As Integer, IndexColCount As Integer

'Output data in shapefile format

ReDim FeatureArray(1 To NumberOfPoints, 1 To 2)

    DataExtraction SelectSQL, DataCols, IndexCols, DataColCount, IndexColCount, FeatureArray

    If (IndexColCount + DataColCount > 0) Or (NumIndexCols + NumDataCols = 0) Then
        OutputShapeFile SelectSQL, DataCols, IndexCols, DataColCount, IndexColCount, FeatureArray
    End If
    
End Sub

Private Sub GetDataTypeDetails(ByVal TableName As String, ByVal ColumnName As String, _
                                ByRef DataType As eFieldType, ByRef length As Integer)

    Dim ColumnsQuery As String
    Dim ColumnsResults As Object

    ColumnsQuery = "SELECT a.column_name, a.data_length, a.data_precision, a.data_scale, a.data_type " & _
                    "FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                    TableName & "' AND a.column_name = '" & ColumnName & "'"
                    
    '
    'most of this code is commented out to be done later when the full request comes in
    'Set ColumnsResults = OraDatabase.CreateDynaset(ColumnsQuery, 0&)
                
    ' set default in the most unlikely event of the lookup failing this will be used.
    DataType = shptext
    length = 200
    
    Set ColumnsResults = OraDatabase.CreateDynaset(ColumnsQuery, 0&)
    
    If Not ColumnsResults.EOF Then
       If ColumnsResults("data_type") = "VARCHAR2" Or ColumnsResults("data_type") = "CHAR" Then
            DataType = shptext
            length = ColumnsResults("data_length")
        End If
    End If
    '    ElseIf ColumnsResults("data_type") = "NUMBER" & ColumnsResults("data_scale") <> "" And ColumnsResults("data_scale") <> "0" Then
    '        DataType = shpDouble
    '        length = 1
    '    ElseIf ColumnsResults("data_type") = "NUMBER" Then
    '        DataType = shpLong
    '        length = 1
    '    End If
    'End If
End Sub
                                

Private Sub OutputShapeFile(SelectSQL As String, ByRef DataCols() As String, ByRef IndexCols() As String, _
                            DataPtr As Integer, IndexPtr As Integer, ByRef FeatureArray() As String)

'Shape files output

Dim newfield As ShapeFile
Dim newVert As Vertice
'VB strings
Dim i As Integer, j As Integer
Dim Sfile As String
'Mapx feature
Dim F As Feature
'String for data out of database
Dim Latitude As Double, Longitude As Double
Dim Results As Object
Dim Found As Boolean
Dim TableName As String
Dim ColumnName As String
Dim DataType As eFieldType
Dim length As Integer
Dim MedsSecondaryKey As String
    
    ' when outputting Track data, the secondary key is MEDS_TRACK_NUMBER
    ' other data uses MEDS_OBSERVATION_NUMBER
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") <> 8 Then
        MedsSecondaryKey = "MEDS_OBSERVATION_NUMBER"
    Else
        MedsSecondaryKey = "MEDS_TRACK_NUMBER"
    End If
    
    On Error GoTo label
    
    With CommonDialog1
        .DialogTitle = "Shapefile name"
        .Flags = 0
        .FileName = ""
        .CancelError = True
        .InitDir = OutputFilePath
        .Filter = "Shapefile (*.shp)|*.shp"
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName
    End With
   
   'Fetch the data
   Debug.Print SelectSQL
    Set Results = OraDatabase.CreateDynaset(SelectSQL, 0&)

    'Set mouse to hourglass
    
    Screen.MousePointer = vbHourglass

    'Determine data type

    Select Case fs(1).Type
    
    Case miFeatureTypeSymbol
    
    With ShapeFiles1

    'Open the shape file
    
        .OpenShape Sfile, shpCreate, shpPoint
    
        With .ShapeFields
            'Create named shapefields
    
            For i = 0 To DataPtr - 1
                TableName = SelectDataForm.GetTableName(DataCols(i))
                ColumnName = SelectDataForm.GetFieldName(DataCols(i))
                
                Call GetDataTypeDetails(TableName, ColumnName, DataType, length)
            
                Set newfield = .CreateField(CreateUniqueFieldName(DataCols(i)), DataType, length)
            Next
            
            For i = 0 To IndexPtr - 1
                TableName = SelectDataForm.GetTableName(IndexCols(i))
                ColumnName = SelectDataForm.GetFieldName(IndexCols(i))
                
                Call GetDataTypeDetails(TableName, ColumnName, DataType, length)
            
                Set newfield = .CreateField(CreateUniqueFieldName(IndexCols(i)), DataType, length)
            Next
            
        End With
    
    'Add the fields to the shape file definition
    
        .AppendFieldDefs
    
        While Not Results.EOF
        
            'Add the data attributes to the shapefields
            
            For i = 0 To DataPtr - 1
                .ShapeFields(CreateUniqueFieldName(DataCols(i))).value = Results(CreateUniqueFieldName(DataCols(i)))
            Next
            
            For i = 0 To IndexPtr - 1
                .ShapeFields(CreateUniqueFieldName(IndexCols(i))).value = Results(CreateUniqueFieldName(IndexCols(i)))
            Next
            
            'Retrieve position from MAPX fields
            
            If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
                'i = 1
                'While FeatureArray(i, 1) <> Results("GRID_INDEX")
                '    i = i + 1
                'Wend
                i = 1
                Found = False
                
                While Not Found
                
                    If (FeatureArray(i, 1) = Results("GRID_INDEX")) Then
                        'Set latitude and longitude from the MapX layer
                        Latitude = Format(fs(i).Point.Y, "###.0000")
                        Longitude = Format(fs(i).Point.X, "####.0000")
                        Found = True
                    Else
                        i = i + 1
                    End If
                Wend
                
            Else
                i = 1
                Found = False
                
                While Not Found
                
                    If (FeatureArray(i, 2) = Results("MEDS_JOB_NUMBER")) And _
                        (FeatureArray(i, 1) = Results(MedsSecondaryKey)) Then
                        'Set latitude and longitude from the MapX layer
                        Latitude = Format(fs(i).Point.Y, "###.0000")
                        Longitude = Format(fs(i).Point.X, "####.0000")
                        Found = True
                    Else
                        i = i + 1
                    End If
                Wend
            End If

            
            'Set position verticies
            
            Set newVert = .Vertices.AddVertice(Longitude, Latitude)
            
            'Create shapefile entry
            
            .CreateShape
        
            'Move to next record in the dynaset
            
            Results.MoveNext
        Wend
    
    End With
    
    'For a region
    
    Case miFeatureTypeRegion
        
    With ShapeFiles1

    'Open the shape file
    
        .OpenShape Sfile, shpCreate, shpPolygon
    
        With .ShapeFields
            'Create named shapefields
    
            For i = 0 To DataPtr - 1
                TableName = SelectDataForm.GetTableName(DataCols(i))
                ColumnName = SelectDataForm.GetFieldName(DataCols(i))
                
                Call GetDataTypeDetails(TableName, ColumnName, DataType, length)
            
                Set newfield = .CreateField(CreateUniqueFieldName(DataCols(i)), DataType, length)
           Next
            
            For i = 0 To IndexPtr - 1
                TableName = SelectDataForm.GetTableName(IndexCols(i))
                ColumnName = SelectDataForm.GetFieldName(IndexCols(i))
                
                Call GetDataTypeDetails(TableName, ColumnName, DataType, length)
            
                Set newfield = .CreateField(CreateUniqueFieldName(IndexCols(i)), DataType, length)
            Next
            
        End With
    
    'Add the fields to the shape file definition
    
        .AppendFieldDefs
    
        While Not Results.EOF
        
            'Add the data attributes to the shapefields
            
            For i = 0 To DataPtr - 1
                .ShapeFields(CreateUniqueFieldName(DataCols(i))).value = Results(CreateUniqueFieldName(DataCols(i)))
            Next
            
            For i = 0 To IndexPtr - 1
                .ShapeFields(CreateUniqueFieldName(IndexCols(i))).value = Results(CreateUniqueFieldName(IndexCols(i)))
            Next
            
            'Retrieve position from MAPX fields

            i = 1
            Found = False
                
            While Not Found
                
                If (FeatureArray(i, 2) = Results("MEDS_JOB_NUMBER")) And _
                    (FeatureArray(i, 1) = Results(MedsSecondaryKey)) Then
      
                    For j = 1 To fs(i).Parts.Item(1).Count
                        'Set latitude and longitude from the MapX layer
                    
                        Latitude = Format(fs(i).Parts.Item(1).Item(j).Y, "###.0000")
                        Longitude = Format(fs(i).Parts.Item(1).Item(j).X, "####.0000")
                        'Set position verticies
            
                        Set newVert = .Vertices.AddVertice(Longitude, Latitude, i)
            
                    Next
                    Found = True
                Else
                    i = i + 1
                End If
            Wend
            
            'Create shapefile entry
            
            .CreateShape
        
            'Move to next record in the dynaset
            
            Results.MoveNext
        Wend
    
    End With
    
    Case miFeatureTypeLine
        With ShapeFiles1

    'Open the shape file
    
        .OpenShape Sfile, shpCreate, shpPolyLine
    
        With .ShapeFields
            'Create named shapefields
    
            For i = 0 To DataPtr - 1
                Set newfield = .CreateField(CreateUniqueFieldName(DataCols(i)), shptext, 20)
            Next
            
            For i = 0 To IndexPtr - 1
                Set newfield = .CreateField(CreateUniqueFieldName(IndexCols(i)), shptext, 20)
            Next
            
        End With
    
    'Add the fields to the shape file definition
    
        .AppendFieldDefs
    
        While Not Results.EOF
        
            'Add the data attributes to the shapefields
            
            For i = 0 To DataPtr - 1
                .ShapeFields(CreateUniqueFieldName(DataCols(i))).value = Results(CreateUniqueFieldName(DataCols(i)))
            Next
            
            For i = 0 To IndexPtr - 1
                .ShapeFields(CreateUniqueFieldName(IndexCols(i))).value = Results(CreateUniqueFieldName(IndexCols(i)))
            Next
            
            'Retrieve position from MAPX fields

            i = 1
            Found = False
                
            While Not Found
                
                If (FeatureArray(i, 2) = Results("MEDS_JOB_NUMBER")) And _
                    (FeatureArray(i, 1) = Results(MedsSecondaryKey)) Then
      
                    For j = 1 To fs(i).Parts.Item(1).Count
                        'Set latitude and longitude from the MapX layer
                    
                        Latitude = Format(fs(i).Parts.Item(1).Item(j).Y, "###.0000")
                        Longitude = Format(fs(i).Parts.Item(1).Item(j).X, "####.0000")
                        'Set position verticies
            
                        Set newVert = .Vertices.AddVertice(Longitude, Latitude, i)
            
                    Next
                    Found = True
                Else
                    i = i + 1
                End If
            Wend
            
            'Create shapefile entry
            
            .CreateShape
        
            'Move to next record in the dynaset
            
            Results.MoveNext
        Wend
    
    End With
    Case Else
        
        MsgBox "Data type not recognised"
    
    End Select
    
    'tidy up
    
    Screen.MousePointer = vbDefault
    
    Close #fnum

    Unload Me
    
    Exit Sub
    
label:

     MsgBox err.description
     
    'Reset mouse to hourglass
    
    Screen.MousePointer = vbDefault
    
    Close #fnum

    Unload Me

End Sub

' Make a unique field name up by putting a X_ on the field name where
' the X is determined by the order of the tables in the select
Private Function CreateUniqueFieldName(ByVal TableNameDotColumnName As String) As String
    Dim TableName As String
    Dim FieldName As String
    Dim UniqueFieldName As String
    Dim k
    Dim AChar As Integer
    
    AChar = 65 ' Ascii A
    TableName = SelectDataForm.GetTableName(TableNameDotColumnName)
    FieldName = SelectDataForm.GetFieldName(TableNameDotColumnName)
    
    UniqueFieldName = FieldName
    
    k = Tables.keys
    For i = 0 To Tables.Count - 1
        If k(i) = TableName Then
            UniqueFieldName = Chr(AChar + i) & "_" & FieldName
        End If
    Next
                                   
   CreateUniqueFieldName = UniqueFieldName
   
End Function

Private Sub DataExtraction(ByRef SelectSQL As String, ByRef DataCols() As String, ByRef IndexCols() As String, _
                           ByRef DataColCount As Integer, ByRef IndexColCount As Integer, ByRef FeatureArray() As String)

Dim i As Integer
Dim WhereSQL As String, OrderSQL As String
Dim IndexHdr As String, DataHdr As String
'Output data from the database to file
Dim RowPtr As Long
Dim DepthIndicator As Boolean, MonthIndicator As Boolean
Dim Dyn As Object
Dim strSQL As String
Dim strColumn As String
Dim strTmp As String
Dim k
Dim strDepthColumn As String
Dim DataTable As String
Dim MedsSecondaryKey As String

'MAPX variables
Dim objectid1 As Variant, objectid2 As Variant
Dim F As Feature

If NumDataCols > 0 Then
    ReDim DataCols(0 To NumDataCols - 1)
End If
If NumIndexCols > 0 Then
    ReDim IndexCols(0 To NumIndexCols - 1)
End If

    ' when outputting Track data, the secondary key is MEDS_TRACK_NUMBER
    ' other data uses MEDS_OBSERVATION_NUMBER
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") <> 8 Then
        MedsSecondaryKey = "MEDS_OBSERVATION_NUMBER"
    Else
        MedsSecondaryKey = "MEDS_TRACK_NUMBER"
    End If
    
    Columns.RemoveAll
    Tables.RemoveAll
    
    IndexHdr = SQLDict.Item(Main.txtSelectableLayer.Text & "ObsTable")
    
    strSQL = "select * from field_lookup where column_name is not null and data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        If left(IndexHdr, 14) = "REPRES_PROFILE" Then
            strTmp = IndexHdr & "." & Dyn("field_name")
        Else
            strTmp = Dyn("table_name") & "." & Dyn("field_name")
        End If
        strColumn = Dyn("column_name")
        If Columns.Exists(strColumn) = False Then
            Columns.Add strColumn, strTmp
        End If
        Dyn.MoveNext
    Wend
    
    'Initialise select clause
    
    SelectSQL = "Select "
   
    'Ensure foreign key(s) is retrived - this allows later link to feature selected (MAPX)
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        SelectSQL = SelectSQL & IndexHdr & ".GRID_INDEX, "
    Else
        SelectSQL = SelectSQL & IndexHdr & "." & MedsSecondaryKey & "," & _
                        IndexHdr & ".MEDS_JOB_NUMBER,"
    End If
    
    'Create SQL for index extraction
    IndexColCount = 0
    DepthIndicator = False
    MonthIndicator = False
    
    Tables.Add IndexHdr, True
    Fields.RemoveAll
    For i = 0 To NumIndexCols - 1
        If IndexList.Selected(i) = True Then
            If IndexList.List(i) <> "LOCATION" Then
                If IndexList.List(i) = "Depth" Then
                    DepthIndicator = True
                    strDepthColumn = Columns.Item(IndexList.List(i))
                End If
                IndexCols(IndexColCount) = IndexList.List(i)
                If Fields.Exists(IndexList.List(i)) = False Then
                    Fields.Add IndexList.List(i), IndexList.List(i)
                End If
                
                If left(IndexHdr, 14) <> "REPRES_PROFILE" Then
                    If Tables.Exists(SelectDataForm.GetTableName(IndexList.List(i))) = False Then
                        Tables.Add SelectDataForm.GetTableName(IndexList.List(i)), True
                    End If
                End If
                IndexColCount = IndexColCount + 1
            End If
        End If
    Next
        
    'If 1 or greater columns selected for output continue with the data extraction
    
    If (IndexColCount + DataColCount < 1) And (NumIndexCols > 0) Then
        MsgBox "You must select at least one field to output"
    Else
    
    'Build the select statement
    'Index table
        For i = 0 To IndexColCount - 1
            SelectSQL = SelectSQL & IndexCols(i) & " as " & CreateUniqueFieldName(IndexCols(i))
            
            If (i = IndexColCount - 1) And (DataColCount > 0) Then
                SelectSQL = SelectSQL & ","
            ElseIf (i <> IndexColCount - 1) Then
                SelectSQL = SelectSQL & ","
            Else
                SelectSQL = SelectSQL & " "
            End If
        Next
        
    'Data Table
        For i = 0 To DataColCount - 1
            SelectSQL = SelectSQL & DataHdr & "." & DataCols(i) & " as " & CreateUniqueFieldName(DataCols(i)) & " "
            If (i <> DataColCount - 1) Then SelectSQL = SelectSQL & ","
        Next
    
    ' fix up statement for 'no data' case (geometry only)
        If IndexColCount + DataColCount < 1 Then
            SelectSQL = left(SelectSQL, Len(SelectSQL) - 1)
            SelectSQL = SelectSQL & " "
        End If
            
    'Construct the Select component of the statement
    
        SelectSQL = SelectSQL & "FROM "
        k = Tables.keys
        For i = 0 To Tables.Count - 1
            SelectSQL = SelectSQL + k(i)
            If i <> Tables.Count - 1 Then
                SelectSQL = SelectSQL + ", "
            End If
        Next
        
    'Add column names to the array
    
        RowPtr = 0
        
    'Select SQL built - now fetch the where component
    
        If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
            Dim t
        'For Gridded data foreign key is the grid index number
        
            If Tables.Count > 1 Then
                WhereSQL = " where "
                k = Tables.keys
                For i = 1 To Tables.Count - 1
                    If k(i) <> strTable Then
                        WhereSQL = " WHERE " & k(0) & ".GRID_INDEX = " & k(i) & ".GRID_INDEX  AND "
                    End If
                Next
            End If
            If WhereSQL = "" Then
                WhereSQL = " where "
            End If
            
            WhereSQL = WhereSQL & IndexHdr & ".GRID_INDEX IN ("
        
            For RowPtr = 1 To NumberOfPoints
                Set F = fs(RowPtr)
                objectid1 = Querydata.value(F, "grid_index")
            
                WhereSQL = WhereSQL & objectid1
            
                If RowPtr = NumberOfPoints Then
                    WhereSQL = WhereSQL & ")"
                Else
                    WhereSQL = WhereSQL & ","
                End If
                
                'Store foreign key and MAPX feature number
                
                FeatureArray(RowPtr, 1) = objectid1
                
             Next
             
          ' select the correct column of data, for representative data
            If (SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5) Then
                Dim Dt As String
                Dt = SQLDict.Item(Main.txtSelectableLayer.Text & "SelectDataType")
                
                WhereSQL = WhereSQL & " and datatype = '" & Dt & "' "
            End If
            
            k = Criteria.keys
            t = Tables.keys
            For i = 0 To Tables.Count - 1
                For C = 0 To Criteria.Count - 1
                    If InStr(1, Criteria.Item(k(C)), t(i)) > 0 Then
                        WhereSQL = WhereSQL & " and " & Criteria.Item(k(C))
                    End If
                Next
            Next
        'Set order by section
        
            If DepthIndicator Then
                OrderSQL = " ORDER BY GRID_INDEX, DEPTH"
            ElseIf MonthIndicator = True Then
                OrderSQL = " ORDER BY GRID_INDEX, MONTH_ID"
            Else
                OrderSQL = " ORDER BY GRID_INDEX"
            End If
        Else
    
    'All other data uses meds_processing_job and meds_observation_number
            If Tables.Count > 1 Then
                WhereSQL = " where "
                k = Tables.keys
                For i = 1 To Tables.Count - 1
                    If k(i) <> strTable Then
                        WhereSQL = WhereSQL & k(0) & ".meds_job_number = " & _
                                              k(i) & ".meds_job_number and " & _
                                              k(0) & "." & MedsSecondaryKey & " = " & _
                                              k(i) & "." & MedsSecondaryKey
                        WhereSQL = WhereSQL & " and "
                    End If
                Next i
            End If
            
            If WhereSQL = "" Then
                WhereSQL = " where ("
            Else
                WhereSQL = WhereSQL + " ("
            End If
            Dim InSQL As String
            
            For RowPtr = 1 To NumberOfPoints
                Set F = fs(RowPtr)
                objectid1 = Querydata.value(F, MedsSecondaryKey)
                objectid2 = Querydata.value(F, "MEDS_Job_Number")
                InSQL = InSQL & "," & objectid2
            
                WhereSQL = WhereSQL & "(" & IndexHdr & ".MEDS_JOB_NUMBER = " & objectid2 & " AND " & _
                            IndexHdr & "." & MedsSecondaryKey & " = " & objectid1 & ")"
            
                If RowPtr <> NumberOfPoints Then
                    WhereSQL = WhereSQL & " OR "
                End If
            
        
        'Store foreign keys and MAPX feature number
                
                FeatureArray(RowPtr, 1) = objectid1
                FeatureArray(RowPtr, 2) = objectid2
            Next
            WhereSQL = WhereSQL + ") "
        End If
        'Set order by selection
        If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then 'Climatology
            If DepthIndicator Then
                OrderSQL = " ORDER BY " & IndexHdr & ".GRID_INDEX, " & strDepthColumn
            Else
                OrderSQL = " ORDER BY " & IndexHdr & ".GRID_INDEX"
            End If
        Else
            If DepthIndicator Then
                OrderSQL = " ORDER BY " & IndexHdr & ".MEDS_JOB_NUMBER, " & IndexHdr & "." & MedsSecondaryKey & ", " & strDepthColumn
            Else
                OrderSQL = " ORDER BY " & IndexHdr & ".MEDS_JOB_NUMBER, " & IndexHdr & "." & MedsSecondaryKey
            End If
        End If
        
        'BUILD THE FULL STATEMENT
        
        SelectSQL = SelectSQL & WhereSQL & OrderSQL
        Debug.Print SelectSQL
    End If


End Sub

Private Sub OutputTextFile(SelectSQL As String, ByRef DataCols() As String, ByRef IndexCols() As String, _
                            DataPtr As Integer, IndexPtr As Integer)
'SQL Variables
Dim Results As Object
Dim Sfile As String, ReturnValue As String, FilterText As String
Dim IndexCounter As Integer, DataCounter As Integer, fnum As Integer
Dim TempString As String, Seperator As String
Dim strSQL As String
    On Error GoTo Error_Handler
    Screen.MousePointer = vbHourglass
    
    'Set the seperator
    If CSVOption.value = True Then
        Seperator = ","
        FilterText = "CSV (*.csv)|*.csv"
    Else
        Seperator = " "
        FilterText = "Text (*.txt)|*.txt"
    End If
    'Get filename
    
    With CommonDialog1
        .DialogTitle = "Save data file"
        .Flags = 0
        .FileName = ""
        .CancelError = True
        .InitDir = OutputFilePath
        .Filter = FilterText
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName
     End With
     
        
    
    'Open file and output the column headings
    
    fnum = FreeFile()
    
    Open Sfile For Output As #fnum
    
    'Build indexheadings
    
    'Fetch the data
    Debug.Print SelectSQL
    Set Results = OraDatabase.CreateDynaset(SelectSQL, 0&)
    
    'Write column Headers
    k = Fields.Items
    For i = 0 To Fields.Count - 1
        TempString = TempString & k(i)
        If (i <> Fields.Count - 1) Then TempString = TempString & Seperator
    Next
    Print #fnum, TempString

    While Not Results.EOF
    'reset the output string
        
        TempString = ""
         
    'Build the index data
    
        For IndexCounter = 0 To IndexPtr - 1
            'Trap if data is NULL
            If Results(CreateUniqueFieldName(IndexCols(IndexCounter))) <> "" Then
                ReturnValue = Results(CreateUniqueFieldName(IndexCols(IndexCounter))).value
            Else
                ReturnValue = " "
            End If
            
            'add to the temporarystring
            
            TempString = TempString & ReturnValue
            
            'add correct data seperator
            
            If (IndexCounter = IndexPtr - 1) And (DataCounter > 0) Then
                TempString = TempString & Seperator
            ElseIf (IndexCounter <> IndexPtr - 1) Then
                TempString = TempString & Seperator
            End If
        Next
        
     'Build the data columns
        
        For DataCounter = 0 To DataPtr - 1
        'Trap Null values
            If Results(CreateUniqueFieldName(DataCols(DataCounter))) <> "" Then
                ReturnValue = Results(CreateUniqueFieldName(DataCols(DataCounter))).value
            Else
                ReturnValue = " "
            End If
            
            'add to the temporarystring
            
            TempString = TempString & ReturnValue

            If (DataCounter <> DataPtr - 1) Then TempString = TempString & Seperator
        Next
        
        'output the data
        Print #fnum, TempString
        
    'Move to next record
    
        Results.MoveNext
    Wend
    
    Screen.MousePointer = vbDefault
    
    Close #fnum

   
    Exit Sub
    
Error_Handler:

     MsgBox err.description
     
    'Reset mouse to hourglass
    
    Screen.MousePointer = vbDefault
    'on error do nothing
    
    Close #fnum
    
End Sub



