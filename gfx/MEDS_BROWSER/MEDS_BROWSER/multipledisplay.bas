Attribute VB_Name = "Module10"
'Display graphics on screen for a group of points.
'Routine makes use of the CLASS INFORMATION TABLE to fetch the appropriate column names for the tables
'and the SQLLayerInfo array which contains relevant table information.
'The points selected are 'unwrapped' from the MapX feature selection and a dynaset is created to
'fetch the relevant data

'Written by:
'Date:          25/02/02
'Version:       1.0
'Ammendments:

Option Explicit

'Global variables used by form

Dim DataPoints() As Double                  'Original data from the database
Dim NumCols As Integer                      'Number of columns in the repeat data table
Dim ColNames() As String                    'Array of colnames from the repeat data table
Dim DepthArray() As Double                  'Array of depths set to standard levels
Dim NumOfProfiles As Integer                'Store number of profiles to display
Dim ProfStartPoint() As Long                'Store the start location of each profile
Dim KeyPtr As Integer, KeyPtr2 As Integer   'Store the location of the key fields

Public Sub MultipleDetails(ByVal Map1 As Map, ByVal SelectedLayer As String, ByVal NumberOfPoints As Integer)
Dim MaxPoints As Integer
    
    NumOfProfiles = NumberOfPoints 'Global value is used later on return from a form
    
    If DataRepeat() Then
        MaxPoints = 500
    Else
        MaxPoints = 800
    End If
    
    'First see if data set has a repeat field table
    If NumberOfPoints < MaxPoints Then
                    
        'Fetch data from the repeat tables
        
        Call FetchRepeatData(DataPoints, NumCols, ColNames, NumberOfPoints)
               
        'Display the form which allows the creation of multiple point graphs
            
        Call DisplayMultipleForm(NumberOfPoints, NumCols, ColNames)

    ElseIf NumberOfPoints < 800 Then
    
        DataOutput.Show
    
    Else
        MsgBox "A maximum of 800 Points permitted, you have selected " _
                & Map1.Layers.Item(SelectedLayer).Selection.Count
                
        Map1.Layers.Item(Main.txtSelectableLayer).Selection.ClearSelection
    End If
       
End Sub

Private Sub FetchRepeatData(ByRef DataPoints() As Double, ByRef NumCols As Integer, _
                             ByRef ColNames() As String, ByVal NumberOfPoints As Integer)
                             
' Fetch repeated data from the data base

Dim DataTable As String
Dim RowPtr As Long, ColPtr As Integer, ProfileCount As Integer
Dim OldVal As Double, OldVal2 As Double
Dim NumberOfRows As Long
Dim DepthIndicator As Boolean, MonthIndicator As Boolean
'SQL Variables
Dim Results As Object
Dim WhereClause As String
Dim JobQuery As String
Dim OrderClause As String
'MAPX variables
Dim Querydata As Dataset
Dim objectid1 As Variant, objectid2 As Variant
Dim fs As Features, F As Feature
Dim bFlag As Boolean
Dim strObsTable As String
Dim Flds As Fields
Dim Fld As Field
Dim i As Integer
Dim strTmp As String
Dim IsRepeat As Boolean
Dim FieldLookupTableName As String


IsRepeat = False
'Set the features to be investigated

    Set fs = Main.Map1.Layers.Item(Main.txtSelectableLayer).Selection
     
    Set Querydata = Main.Map1.Datasets.Item(Main.DatasetNameFromLayer(Main.Map1.Layers.Item(Main.txtSelectableLayer)))
    
'Build SQL using the global array SQLLayerInfo and the Current Layer Pointer

    DataTable = MultipleSelect.SourceTable.Text
     
    ' If we are reading REPRES_PROFILES ( GPPDB ) then use the definition
    ' for the REPRES_PROFILE_L1_JAN in field lookup as this will do for all the
    ' data.

    FieldLookupTableName = DataTable
    
    If left(DataTable, 14) = "REPRES_PROFILE" Then
        FieldLookupTableName = "REPRES_PROFILE_L1_JAN"
    End If
     
'First collect all columns from the attribute table
    
    JobQuery = "SELECT Count(distinct field_name) From field_lookup WHERE Table_Name = " _
                & "'" & FieldLookupTableName & "'" & " and repeat_count <> 0"
                
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    If Results.EOF = True Or Results("Count(distinctfield_name)") = 0 Then
        JobQuery = "SELECT Count(distinct field_name) From field_lookup WHERE Table_Name = " _
                    & "'" & FieldLookupTableName & "'" & " and field_name <> 'LOCATION' and include_in_output = 1"
        Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
        DataTable = MultipleSelect.SourceTable.Text
    Else
        IsRepeat = True
    End If
    
    strObsTable = SQLDict.Item(Main.txtSelectableLayer.Text & "ObsTable")
    NumCols = Results("Count(distinctfield_name)")
    
    If (NumCols = 0) Then
        MsgBox "No entries found in field_lookup for " & FieldLookupTableName & "contact your system administrator for a fix"
        Error = True
        Exit Sub
    End If
    ReDim ColNames(0 To NumCols - 1)
    JobQuery = "SELECT distinct field_name From field_lookup WHERE Table_Name = " _
            & "'" & FieldLookupTableName & "'" & " and field_name <> 'LOCATION' and include_in_output = 1"
   
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

'Add column names to the array
    
    RowPtr = 0
    DepthIndicator = False
    MonthIndicator = False
    
    While Not Results.EOF
        ColNames(RowPtr) = Results("FIELD_NAME")
        If ColNames(RowPtr) = "DEPTH" Then DepthIndicator = True
        If ColNames(RowPtr) = "MONTH_ID" Then MonthIndicator = True
        Results.MoveNext
        RowPtr = RowPtr + 1
    Wend
    
'Count the number of rows to return

'Start to build SQL for the count
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        Dim Dt As String
        Dt = SQLDict.Item(Main.txtSelectableLayer.Text & "SelectDataType")

'For Gridded data forign key is the grid index number
        WhereClause = " WHERE DATATYPE = '" & Dt & "' AND GRID_INDEX IN ("
        
        For RowPtr = 1 To NumberOfPoints
            Set F = fs(RowPtr)
            objectid1 = Querydata.value(F, "grid_index")
            
            WhereClause = WhereClause & objectid1
            
            If RowPtr = NumberOfPoints Then
                WhereClause = WhereClause & ")"
            Else
                WhereClause = WhereClause & ","
            End If
        Next
        
        If DepthIndicator Then
            OrderClause = " ORDER BY GRID_INDEX, DEPTH"
        ElseIf MonthIndicator = True Then
            OrderClause = " ORDER BY GRID_INDEX, MONTH_ID"
        Else
            OrderClause = " ORDER BY GRID_INDEX"
        End If
    Else
    
        If IsRepeat = False Then
            WhereClause = " where (Concat(To_Char(" & DataTable & ".meds_job_number),LPAD(To_Char(" & DataTable & ".meds_observation_number),6,'0'))) in ('"
            For RowPtr = 1 To NumberOfPoints
                Set F = fs(RowPtr)
                objectid1 = Querydata.value(F, "MEDS_OBSERVATION_NUMBER")
                objectid2 = Querydata.value(F, "MEDS_JOB_NUMBER")
                strTmp = "000000" & objectid1
                WhereClause = WhereClause & objectid2 & Right(strTmp, 6)
                If RowPtr <> NumberOfPoints Then
                    WhereClause = WhereClause & "', '"
                End If
            Next
                WhereClause = WhereClause & "') and meds_processing_job.job_number = " & DataTable & ".meds_job_number "
                Debug.Print WhereClause
        
        Else
        
            'All other data uses meds_processing_job and meds_observation_number
            WhereClause = " WHERE ("
                
            For RowPtr = 1 To NumberOfPoints
                Set F = fs(RowPtr)
                objectid1 = Querydata.value(F, "MEDS_OBSERVATION_NUMBER")
                objectid2 = Querydata.value(F, "MEDS_JOB_NUMBER")
                WhereClause = WhereClause & "( " & DataTable & ".MEDS_JOB_NUMBER = " & objectid2 & " AND " & DataTable & ".MEDS_OBSERVATION_NUMBER = " & objectid1 & ")"
                
                WhereClause = WhereClause & " OR "
                
               
            Next
            WhereClause = left(WhereClause, Len(WhereClause) - 4)
            WhereClause = WhereClause & ")" & " and MEDS_PROCESSING_JOB.JOB_NUMBER = " & DataTable & ".MEDS_JOB_NUMBER"
        End If
        
        If DepthIndicator Then
            OrderClause = " ORDER BY " & DataTable & ".MEDS_JOB_NUMBER," & DataTable & ".MEDS_OBSERVATION_NUMBER,DEPTH"
        Else
            OrderClause = " ORDER BY " & DataTable & ".MEDS_JOB_NUMBER," & DataTable & ".MEDS_OBSERVATION_NUMBER"
        End If
    End If
    
'Build the SQL to count the number of rows
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        JobQuery = "SELECT COUNT(ROWID) From " & DataTable & WhereClause
    Else
        JobQuery = "SELECT COUNT(" & DataTable & ".ROWID) From MEDS_PROCESSING_JOB, " & DataTable & WhereClause
    End If
    
'Fetch the count
    Debug.Print JobQuery
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
 
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        NumberOfRows = Results("COUNT(ROWID)")
    Else
        NumberOfRows = Results("COUNT(" & DataTable & ".ROWID)")
    End If

're dimension array

    ReDim DataPoints(0 To NumberOfRows - 1, 0 To NumCols - 1)

'Fetch the data
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        JobQuery = "SELECT * FROM " & DataTable & WhereClause & OrderClause
    Else
        JobQuery = "SELECT * FROM MEDS_PROCESSING_JOB," & DataTable & WhereClause & OrderClause
    End If
 
    Debug.Print JobQuery
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    RowPtr = 0
 
    While Not Results.EOF
        For ColPtr = 0 To NumCols - 1
        'Store Dynaset results
        
            If Results(ColNames(ColPtr)) <> "" And IsNumeric(Results(ColNames(ColPtr))) Then
                DataPoints(RowPtr, ColPtr) = Results(ColNames(ColPtr)).value
            Else
                DataPoints(RowPtr, ColPtr) = -9999
            End If

        Next
        
        Results.MoveNext
        RowPtr = RowPtr + 1
    Wend

    'Set the start point for each profile
    
    ReDim ProfStartPoint(0 To NumOfProfiles - 1)

    'First data starts at zero
    
    ProfStartPoint(0) = 0
    ProfileCount = 1
    
    'Use Grid Index for Representative data
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        For ColPtr = 0 To NumCols - 1
            If ColNames(ColPtr) = "GRID_INDEX" Then KeyPtr = ColPtr
        Next
        
        OldVal = DataPoints(0, KeyPtr)
    
    'Find break points
    
        For RowPtr = 1 To NumberOfRows - 1
            If OldVal <> DataPoints(RowPtr, KeyPtr) Then
                ProfStartPoint(ProfileCount) = RowPtr
                ProfileCount = ProfileCount + 1
                OldVal = DataPoints(RowPtr, KeyPtr)
            End If
        Next
    Else
    
    'Use Job number and Observation number for Observed stuff
    
        For ColPtr = 0 To NumCols - 1
            If ColNames(ColPtr) = "MEDS_JOB_NUMBER" Then KeyPtr = ColPtr
            If ColNames(ColPtr) = "MEDS_OBSERVATION_NUMBER" Then KeyPtr2 = ColPtr
        Next

        OldVal = DataPoints(0, KeyPtr)
        OldVal2 = DataPoints(0, KeyPtr2)
       
    'Find break points
        
        For RowPtr = 1 To NumberOfRows - 1
            If OldVal2 <> DataPoints(RowPtr, KeyPtr2) Or OldVal <> DataPoints(RowPtr, KeyPtr) Then
                
                ProfStartPoint(ProfileCount) = RowPtr
                ProfileCount = ProfileCount + 1
                OldVal = DataPoints(RowPtr, KeyPtr)
                OldVal2 = DataPoints(RowPtr, KeyPtr2)
            
            End If
        Next
    End If

End Sub

Public Function DataRepeat() As Boolean

'Find the data style of the selected layer and return the layer number pt

Dim Result As Boolean

    Result = False

    If SQLLayerInfo(SQLCurrentPointer, SQLDataStyleIdx) = "REPEAT" Then Result = True
    
    DataRepeat = Result
    
End Function

'the main piece of code to process the data and add it the chart
Public Sub BuildGraph(ByVal Graph As MSChart, ByVal Xparam As String, ByVal Yparam As String)
'On entry all of the global arrays should have been initiated

'DataPoints() As Double         - Original data from the database
'NumCols As Integer             - Number of columns in the repeat data table
'ColNames() As String           - Array of colnames from the repeat data table
'DepthArray() As Double         - Array of depths set to standard levels
'NumOfProfiles As Integer       - Number of repeat data sets
'ProfStartPoint() As Integer    - Store the start location of each profile

Dim GraphPtr As Integer, ProfCount As Integer
Dim ColPtr As Integer, Xcol As Integer, Ycol As Integer, NumRows As Integer, ProfPtr As Integer, Diff As Integer
Dim DepthFlag As Boolean, ShowMarker As Boolean, PenColor As Boolean, WashingLine As Boolean
Dim StartPosn As Long, EndPosn As Long, MaxRows As Long
    
       
    'Initialsie the graph
    
    Call InitialiseGraph(Graph, Xparam, Yparam)
    
    'determine the column location of the dataset
    
    For ColPtr = 0 To NumCols - 1
        If ColNames(ColPtr) = Xparam Then Xcol = ColPtr
        If ColNames(ColPtr) = Yparam Then Ycol = ColPtr
    Next
    
    'If there is depth data
    DepthFlag = False
    If (Yparam = "DEPTH") Or (MultipleSelect.NegYCol.value = 1) Then DepthFlag = True
    
    'Set defualt settings for the graph
    
    If (MultipleSelect.XYScatter.value) Then
    
    'If type is scatter then plot all values on screen
        
        WashingLine = False
        ShowMarker = True
        PenColor = False
        
        'Plot all at once hence maxrows = all rows
        MaxRows = UBound(DataPoints, 1)
        StartPosn = 1
        EndPosn = MaxRows
        ProfPtr = 1
        
        Call CreateGraph(DataPoints, Xcol, Ycol, StartPosn, EndPosn, MaxRows, ProfPtr, Graph, _
                         PenColor, WashingLine, ShowMarker, DepthFlag)
    Else
        
    'Set values for a line plot
        If (MultipleSelect.WashingLine.value) Then
            WashingLine = True
        Else
            WashingLine = False
        End If
            
        'Set defaults for normal plotting
            
        ShowMarker = False
        PenColor = True
                        
        'Find the profile with the largest number of rows
            
        For ProfCount = 0 To NumOfProfiles - 1
                
            'Determine the individual number of rows per profile
                
            If ProfCount = NumOfProfiles - 1 Then
                Diff = UBound(DataPoints, 1) - ProfStartPoint(ProfCount)
            Else
                Diff = (ProfStartPoint(ProfCount + 1) - ProfStartPoint(ProfCount))
            End If
             
            Diff = Diff + 1
            'Test if greater than previous maximum
            'on first time through number of levels is diff + 1 (as array is subscripted to 0)
            If (ProfCount = 0) Then
                MaxRows = Diff
            ElseIf Diff > MaxRows Then
                MaxRows = Diff
            End If
        
        Next
          
        For ProfCount = 0 To NumOfProfiles - 1
                
            'Determine the start and end positions
            If ProfCount = NumOfProfiles - 1 Then
                StartPosn = ProfStartPoint(ProfCount)
                EndPosn = UBound(DataPoints, 1)
            Else
                StartPosn = ProfStartPoint(ProfCount)
                EndPosn = ProfStartPoint(ProfCount + 1) - 1
            End If

            'Add to graph
                
            Call CreateGraph(DataPoints, Xcol, Ycol, StartPosn, EndPosn, MaxRows, ProfCount + 1, Graph, _
                         PenColor, WashingLine, ShowMarker, DepthFlag)

        Next
            
    End If


End Sub


'Display multiple form shows data on graphs

Public Sub DisplayMultipleForm(ByVal Points As Integer, ByVal ColTotal As Integer, ByRef ColNames() As String)
Dim ColCounter As Integer, ListCount As Integer

    'Set the information box
    
    MultipleSelect.Recordlabel.Caption = "Number of Profiles Selected is " & Points
    'MultipleSelect.SourceLabel.Caption = "Data Type is " & SQLLayerInfo(SQLCurrentPointer, SQLDataTypeIdx)
    'MultipleSelect.NameLabel.Caption = "Layer Name is " & SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx)
    MultipleSelect.LevelsLabel.Caption = "Total levels to display " & UBound(DataPoints, 1) + 1
  
    'Test to see number of levels and points is below critical display levels
    'Do not allow line graphs for over 100 profiles or more than 5000 data levels
    
    If Points > 100 Or UBound(DataPoints, 1) > 5000 Then
        MultipleSelect.LinePlot.Enabled = False
        MultipleSelect.WashingLine.Enabled = False
    Else
        MultipleSelect.LinePlot.Enabled = True
        MultipleSelect.WashingLine.Enabled = True
    End If
    
    'Set the drop down list boxes with the repeat parameters
    
    'Clear old information and do not display graphs
    
    For ListCount = 0 To 3
        MultipleSelect.Graph(ListCount).Visible = False
        MultipleSelect.XParamList(ListCount).Clear
        MultipleSelect.YParamList(ListCount).Clear
    Next
    
    'Add N/A to the list
    
    For ListCount = 0 To 3
        MultipleSelect.XParamList(ListCount).AddItem "N/A"
        MultipleSelect.YParamList(ListCount).AddItem "N/A"
        MultipleSelect.YParamList(ListCount).ListIndex = 0
        MultipleSelect.XParamList(ListCount).ListIndex = 0
    Next
    
    'Add repeat data fields
    
    For ColCounter = 0 To ColTotal - 1
        If Not (ColNames(ColCounter) = "GRID_INDEX" Or ColNames(ColCounter) = "MEDS_OBSERVATION_NUMBER" _
                Or ColNames(ColCounter) = "MEDS_JOB_NUMBER" Or ColNames(ColCounter) = "LATITUDE" Or ColNames(ColCounter) = "LONGITUDE") Then
            For ListCount = 0 To 3
                MultipleSelect.XParamList(ListCount).AddItem (ColNames(ColCounter))
                MultipleSelect.YParamList(ListCount).AddItem (ColNames(ColCounter))
            Next
        End If
    Next
    
    'Set form to correct position and display
    
    MultipleSelect.top = 10
    MultipleSelect.left = 10
    MultipleSelect.ZOrder (0)
    MultipleSelect.Show
    
End Sub


Public Sub HighlightPoint(Series As Integer)
Dim DataPtsPtr As Long
Dim RowPtr As Integer
Dim Querydata As Dataset
Dim objectid1 As Variant, objectid2 As Variant
Dim fs As Features, F As Feature
Dim ptClickPoint As New Point
Dim ftrSymbol As Feature
Dim ftrFactory As FeatureFactory
    
    Set ftrFactory = Main.Map1.FeatureFactory

    'Set the features to be investigated

    Set fs = Main.Map1.Layers.Item(Main.txtSelectableLayer).Selection
    
    Set Querydata = Main.Map1.Datasets.Item(Main.DatasetNameFromLayer(Main.Map1.Layers.Item(Main.txtSelectableLayer)))
    
    'Selected graph
    
    DataPtsPtr = ProfStartPoint(Series - 1)
   
    'For representative data
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        For RowPtr = 1 To NumOfProfiles
            Set F = fs(RowPtr)
            objectid1 = Querydata.value(F, "grid_index")
            If objectid1 = DataPoints(DataPtsPtr, KeyPtr) Then
           
                Call GeomDetails(Main.Map1, Main.txtSelectableLayer, RowPtr)
                
                ptClickPoint.Set F.CenterX, F.CenterY
                Set ftrSymbol = ftrFactory.CreateSymbol(ptClickPoint, UserPointStyle)
                Main.Map1.Layers("User").AddFeature ftrSymbol
                Set ftrSymbol = Nothing
            
            End If
        Next

    Else
    'All other data uses meds_processing_job and meds_observation_number
        For RowPtr = 1 To NumOfProfiles
            Set F = fs(RowPtr)
            objectid1 = Querydata.value(F, "MEDS_Observation_Number")
            objectid2 = Querydata.value(F, "MEDS_Job_Number")
            If objectid1 = DataPoints(DataPtsPtr, KeyPtr2) And objectid2 = DataPoints(DataPtsPtr, KeyPtr) Then

                Call GeomDetails(Main.Map1, Main.txtSelectableLayer, RowPtr)
              
                ptClickPoint.Set F.CenterX, F.CenterY
                Set ftrSymbol = ftrFactory.CreateSymbol(ptClickPoint, UserPointStyle)
                Main.Map1.Layers("User").AddFeature ftrSymbol
                Set ftrSymbol = Nothing
            End If
        Next
    
    End If
         

End Sub

Public Sub SetupGraphTables()
    Dim strSQL As String
    Dim Dyn As Object
    Dim TableList As Object
    Dim k, i
    Dim strObsTable As String
    Dim DataTypeIndex As Long
    
    ' Find the current data type index and work out what tables should
    ' be present for that data type
    
    strObsTable = SQLDict.Item(Main.txtSelectableLayer.Text & "ObsTable")
    DataTypeIndex = SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    
    Set TableList = CreateObject("Scripting.Dictionary")
    strSQL = "select distinct table_name from field_lookup where data_type_index = " & DataTypeIndex & " and repeat_count <> 0 "
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Dyn.EOF Then
        strSQL = "select distinct table_name from field_lookup where data_type_index = " & DataTypeIndex
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        While Not Dyn.EOF
            If left(strObsTable, 14) = "REPRES_PROFILE" Then
                If left(Dyn("table_name"), 14) = "REPRES_PROFILE" Then
                    ' only add one REPRES_PROFILE to the list of tables
                    ' and thats the original table
                    MultipleSelect.SourceTable.AddItem strObsTable
                End If
            Else
                MultipleSelect.SourceTable.AddItem Dyn("table_name")
            End If

            Dyn.MoveNext
        Wend
        
    Else
        
        While Not Dyn.EOF
              If left(strObsTable, 14) = "REPRES_PROFILE" Then
                If left(Dyn("table_name"), 14) = "REPRES_PROFILE" Then
                    ' only add one REPRES_PROFILE to the list of tables
                    ' and thats the original table
                    MultipleSelect.SourceTable.AddItem strObsTable
                End If
            Else
                MultipleSelect.SourceTable.AddItem Dyn("table_name")
            End If

            Dyn.MoveNext
        Wend
    End If
    MultipleSelect.SourceTable.ListIndex = 0
    
    Call MultipleDetails(Main.Map1, Main.txtSelectableLayer.Text, Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count)
    
End Sub
