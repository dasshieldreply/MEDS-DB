Attribute VB_Name = "Module5"
'Display on screen information about a point.
'Routine makes use of the USER_TAB_COLUMNS to fetch the appropriate column names for the tables
'and the SQLLayerInfo array which contains relevant table information.
'The point selected is 'unwrapped' from the MapX feature selection

'Written by:
'Date:          25/02/02
'Version:       1.0
'Ammendments:

Option Explicit


Public Sub GeomDetails(ByVal Map1 As Map, ByVal SelectedLayer As String, FeatureRef As Integer)

Dim Lat As Double, Lon As Double
Dim JobNumber As Long
Dim JobDetails(6) As String
Dim FlagStatus As String

    'First collect position and the job number
    
    Call RetrievePosition(Lat, Lon, JobNumber, SelectedLayer, Map1, FeatureRef)
    
    'Collect Job details
    
    Call RetrieveJobDetails(JobDetails, JobNumber)
    
    'Test if flag is set
    
    Call FlagSearch(JobNumber, FlagStatus, Map1, SelectedLayer)
    
    'Populate and display form
    If Not PointInformationIsLoaded Then
        Call PopulateForm(Lat, Lon, JobNumber, JobDetails, FlagStatus)
        PointInformationIsLoaded = True
    Else
        MsgBox "Close the existing Data Point Information Dialog first"
    End If
    
End Sub

Private Sub RetrievePosition(ByRef Lat As Double, ByRef Lon As Double, ByRef JobNumber As Long, _
                            ByVal SelectedLayer As String, ByVal Map1 As Map, ByVal FeatureRef As Integer)
    
    'MapX structures to fetch current selection

    Dim fs As Features
    Dim F As Feature
    Dim Querydata As Dataset
    Dim IdNum As Long
    'MapX to fetch the Position of the point
    If Map1.Layers.Item(SelectedLayer).Selection.Count = 0 Then
        MsgBox "No Items selected"
    End If
    If Map1.Layers.Item(SelectedLayer).Selection.Count = 0 Then Exit Sub
    Set fs = Map1.Layers.Item(SelectedLayer).Selection
    Set F = fs(FeatureRef)
    Set Querydata = Map1.Datasets.Item(Main.DatasetNameFromLayer(Map1.Layers.Item(SelectedLayer)))
    
    'Test if point data
    
    If F.Type = miFeatureTypeSymbol Then
        'Capture the location of the feature

        Lat = F.Point.Y
        Lon = F.Point.X

    Else
    
        'Line or Polygon - do not display location.......
        
        Lat = -999
        Lon = -999
    
    End If
    
    'Now set Job number
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        Dim jobNumberLookup As String
        jobNumberLookup = SQLDict.Item(Main.txtSelectableLayer.Text & "JobColumn")
        JobNumber = Querydata.value(F, jobNumberLookup)
        IdNum = Querydata.value(F, "grid_index")
    Else
        JobNumber = Querydata.value(F, "MEDS_JOB_NUMBER")
        If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 8 Then
             IdNum = Querydata.value(F, "MEDS_TRACK_NUMBER")
        Else
            IdNum = Querydata.value(F, "MEDS_OBSERVATION_NUMBER")
        End If
    End If
 
    PointInformation.HiddenText.Text = IdNum
    
End Sub

Private Sub RetrieveJobDetails(JobDetails, JobNumber)
Dim Results As Object
Dim JobQuery As String

    'Retrieve job information
    JobQuery = "SELECT * From meds_processing_job WHERE job_number = " & JobNumber
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    'Store Results in array
        
    JobDetails(0) = Results("ARCHIVE_DATE")
    JobDetails(1) = Results("DATA_USE_CODE")
    JobDetails(2) = Results("DATA_TYPE")
    JobDetails(3) = Results("PROCESSOR")
    JobDetails(4) = Results("PROTECTION")
    If Results("INSTRUMENT_CODE") <> "" Then
        JobDetails(5) = Results("INSTRUMENT_CODE")
    Else
        JobDetails(5) = ""
    End If
    Results.Close
    
    If JobDetails(2) = "Observed Physical Data" Then
        'Retrieve instrument information
        JobQuery = "SELECT description From instrument WHERE ocean = " & JobDetails(5)
        Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
        JobDetails(5) = Results("DESCRIPTION")
        Results.Close
    End If
      
End Sub

    
Private Sub PopulateForm(Lat, Lon, JobNumber, JobDetails, FlagStatus)

    If Lat < -90.1 Then
        PointInformation.PointText(0).Caption = "Line or region geometry"
        PointInformation.Textbox(0).Text = " "
        PointInformation.PointText(1).Caption = " "
        PointInformation.Textbox(1).Text = " "
    Else
        PointInformation.PointText(0).Caption = "Latitude:"
        PointInformation.Textbox(0).Text = Format(Lat, "###.000")
        PointInformation.PointText(1).Caption = "Longitude:"
        PointInformation.Textbox(1).Text = Format(Lon, "####.000")
    End If
    
    PointInformation.PointText(2).Caption = _
        "Data Type: "
    PointInformation.Textbox(2).Text = _
        JobDetails(2)
    
    If JobDetails(5) = " " Then
        PointInformation.PointText(3).Caption = " "
        PointInformation.Textbox(3).Text = " "
    Else
        PointInformation.PointText(3).Caption = "Instrument type:"
        PointInformation.Textbox(3).Text = JobDetails(5)
    End If
    
    PointInformation.PointText(4).Caption = "MEDS Job load number"
    PointInformation.Textbox(4).Text = JobNumber
    
    PointInformation.PointText(5).Caption = "Database entry date:"
    PointInformation.Textbox(5).Text = JobDetails(0)
    
    PointInformation.PointText(6).Caption = "Data Use Code:"
    PointInformation.Textbox(6).Text = JobDetails(1)
    
    PointInformation.PointText(7).Caption = "Classification:"
    PointInformation.Textbox(7).Text = JobDetails(4)
    
    PointInformation.PointText(8).Caption = "Data Processor:"
    PointInformation.Textbox(8).Text = JobDetails(3)
    
    PointInformation.PointText(9).Caption = "Flags ?: "
    PointInformation.Textbox(9).Text = FlagStatus
    
    PointInformation.Show
    
End Sub

Private Sub FlagSearch(JobNumber, FlagStatus, Map1, SelectedLayer)
Dim Results As Object
Dim JobQuery As String

    FlagStatus = ""
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        JobQuery = "SELECT distinct category From meds_flags WHERE  " & _
                   "GRID_INDEX = " & PointInformation.HiddenText.Text & " AND " & _
                   "MEDS_JOB_NUMBER = " & JobNumber
    Else
        JobQuery = "SELECT distinct category From meds_flags WHERE " & _
                   "MEDS_OBSERVATION_NUMBER = " & PointInformation.HiddenText.Text & " AND " & _
                   "MEDS_JOB_NUMBER = " & JobNumber
    End If
    
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

    While Not Results.EOF
        
        If Results("CATEGORY") <> "" Then
            FlagStatus = FlagStatus & " " & Results("CATEGORY").value
        End If
        
        Results.MoveNext
        
    Wend
    
    Results.Close
    
    If FlagStatus = "" Then FlagStatus = "Nothing set"
    
End Sub
