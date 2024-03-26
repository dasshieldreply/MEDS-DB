VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form NewJob 
   Caption         =   "New Job"
   ClientHeight    =   8850
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10980
   LinkTopic       =   "Form1"
   ScaleHeight     =   8850
   ScaleWidth      =   10980
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame OuterFrame 
      Caption         =   "New Job"
      Height          =   8775
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      Begin VB.CommandButton BulkImportButton 
         Caption         =   "Bulk Data Import"
         Height          =   375
         Left            =   5520
         TabIndex        =   44
         Top             =   8280
         Width           =   2655
      End
      Begin VB.TextBox OwnerAuthorityPrefix 
         Height          =   375
         Left            =   2280
         TabIndex        =   22
         Top             =   5520
         Width           =   3255
      End
      Begin VB.CommandButton AddToJobButton 
         Caption         =   "Add To Job"
         Height          =   375
         Left            =   120
         TabIndex        =   42
         Top             =   8280
         Width           =   1935
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit - Aborting "
         Height          =   375
         Left            =   8520
         TabIndex        =   45
         Top             =   8280
         Width           =   2175
      End
      Begin VB.ComboBox MEICNumber 
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   480
         Width           =   1335
      End
      Begin VB.ComboBox ProcessingJobDataType 
         Height          =   315
         ItemData        =   "NewJob.frx":0000
         Left            =   1800
         List            =   "NewJob.frx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   480
         Width           =   3735
      End
      Begin VB.TextBox Descriptor 
         Height          =   375
         Left            =   2280
         TabIndex        =   14
         Top             =   2640
         Width           =   3255
      End
      Begin VB.ComboBox DataUseCode 
         Height          =   315
         Left            =   2280
         TabIndex        =   21
         Top             =   5040
         Width           =   3255
      End
      Begin VB.ComboBox Protection 
         Height          =   315
         Left            =   2280
         TabIndex        =   12
         Top             =   1680
         Width           =   3255
      End
      Begin VB.ComboBox Processor 
         Height          =   315
         Left            =   2280
         TabIndex        =   11
         Top             =   1200
         Width           =   3255
      End
      Begin VB.ComboBox Caveat 
         Height          =   315
         Left            =   2280
         TabIndex        =   13
         Top             =   2160
         Width           =   3255
      End
      Begin VB.ComboBox IDO 
         Height          =   315
         Left            =   2280
         TabIndex        =   15
         Top             =   3120
         Width           =   3255
      End
      Begin VB.ComboBox LocalDatum 
         Height          =   315
         Left            =   2280
         TabIndex        =   19
         Top             =   4560
         Width           =   3255
      End
      Begin VB.ComboBox DatumTransform 
         Height          =   315
         Left            =   2280
         TabIndex        =   17
         Top             =   4080
         Width           =   3255
      End
      Begin VB.ComboBox Quality 
         Height          =   315
         Left            =   2280
         TabIndex        =   16
         Top             =   3600
         Width           =   3255
      End
      Begin VB.TextBox Comments 
         Height          =   975
         Left            =   2280
         TabIndex        =   26
         Top             =   6600
         Width           =   8295
      End
      Begin VB.Frame CruiseFrame 
         Caption         =   "Cruise"
         Height          =   3855
         Left            =   5760
         TabIndex        =   1
         Top             =   1200
         Width           =   5055
         Begin VB.ComboBox Cruise 
            Height          =   315
            Left            =   1560
            TabIndex        =   28
            Top             =   240
            Width           =   3375
         End
         Begin VB.TextBox StartPort 
            Height          =   285
            Left            =   1560
            TabIndex        =   30
            Top             =   720
            Width           =   3375
         End
         Begin VB.TextBox EndPort 
            Height          =   285
            Left            =   1560
            TabIndex        =   32
            Top             =   1200
            Width           =   3375
         End
         Begin VB.TextBox CruiseDescriptor 
            Height          =   285
            Left            =   1560
            TabIndex        =   38
            Top             =   2760
            Width           =   3375
         End
         Begin VB.CommandButton AddCruiseButton 
            Caption         =   "AddNewCruise"
            Height          =   375
            Left            =   240
            TabIndex        =   40
            Top             =   3360
            Width           =   2295
         End
         Begin MSComCtl2.DTPicker EndDate 
            Height          =   375
            Left            =   1560
            TabIndex        =   36
            Top             =   2160
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   48758785
            CurrentDate     =   38512
         End
         Begin MSComCtl2.DTPicker StartDate 
            Height          =   375
            Left            =   1560
            TabIndex        =   34
            Top             =   1680
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   48758785
            CurrentDate     =   38512
         End
         Begin VB.Label Label13 
            Caption         =   "Cruise"
            Height          =   255
            Left            =   120
            TabIndex        =   7
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label19 
            Caption         =   "Start Port"
            Height          =   255
            Left            =   120
            TabIndex        =   6
            Top             =   720
            Width           =   1335
         End
         Begin VB.Label Label20 
            Caption         =   "EndPort"
            Height          =   255
            Left            =   120
            TabIndex        =   5
            Top             =   1200
            Width           =   1215
         End
         Begin VB.Label Label21 
            Caption         =   "Start Date"
            Height          =   255
            Left            =   120
            TabIndex        =   4
            Top             =   1680
            Width           =   1215
         End
         Begin VB.Label Label22 
            Caption         =   "End Date"
            Height          =   375
            Left            =   120
            TabIndex        =   3
            Top             =   2160
            Width           =   1215
         End
         Begin VB.Label Label23 
            Caption         =   "CruiseDescriptor"
            Height          =   255
            Left            =   120
            TabIndex        =   2
            Top             =   2760
            Width           =   1215
         End
      End
      Begin VB.ComboBox Originator 
         Height          =   315
         Left            =   2280
         TabIndex        =   24
         Top             =   6000
         Width           =   3255
      End
      Begin MSComCtl2.DTPicker DateOfReceipt 
         Height          =   375
         Left            =   7680
         TabIndex        =   10
         Top             =   480
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         CheckBox        =   -1  'True
         Format          =   48758785
         CurrentDate     =   38496
      End
      Begin VB.Label Label14 
         Caption         =   "Owner Authority Prefix"
         Height          =   255
         Left            =   240
         TabIndex        =   47
         Top             =   5580
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   240
         TabIndex        =   46
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label Label2 
         Caption         =   "Data Type"
         Height          =   255
         Left            =   1800
         TabIndex        =   43
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label3 
         Caption         =   "Datum Transformation"
         Height          =   375
         Left            =   240
         TabIndex        =   41
         Top             =   4080
         Width           =   1935
      End
      Begin VB.Label Label4 
         Caption         =   "LocalDatum"
         Height          =   255
         Left            =   240
         TabIndex        =   39
         Top             =   4560
         Width           =   1815
      End
      Begin VB.Label Label6 
         Caption         =   "Processor"
         Height          =   255
         Left            =   240
         TabIndex        =   37
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label Label7 
         Caption         =   "Date Of Receipt"
         Height          =   255
         Left            =   6000
         TabIndex        =   35
         Top             =   600
         Width           =   1335
      End
      Begin VB.Label Label8 
         Caption         =   "Protection"
         Height          =   255
         Left            =   240
         TabIndex        =   33
         Top             =   1800
         Width           =   1575
      End
      Begin VB.Label Label9 
         Caption         =   "Caveat"
         Height          =   255
         Left            =   240
         TabIndex        =   31
         Top             =   2280
         Width           =   1215
      End
      Begin VB.Label Label10 
         Caption         =   "Descriptor"
         Height          =   255
         Left            =   240
         TabIndex        =   29
         Top             =   2760
         Width           =   1695
      End
      Begin VB.Label Label11 
         Caption         =   "IDO"
         Height          =   255
         Left            =   240
         TabIndex        =   27
         Top             =   3150
         Width           =   1815
      End
      Begin VB.Label Label12 
         Caption         =   "Data Quality"
         Height          =   255
         Left            =   240
         TabIndex        =   25
         Top             =   3600
         Width           =   1695
      End
      Begin VB.Label Label15 
         Caption         =   "Originator"
         Height          =   255
         Left            =   240
         TabIndex        =   23
         Top             =   6000
         Width           =   1695
      End
      Begin VB.Label Label17 
         Caption         =   "Data Use Code"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   5040
         Width           =   1455
      End
      Begin VB.Label Label5 
         Caption         =   "Comments"
         Height          =   375
         Left            =   240
         TabIndex        =   18
         Top             =   6600
         Width           =   1575
      End
   End
End
Attribute VB_Name = "NewJob"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private EnableCruiseFrame As Boolean
Private MEICNumbers As Collection
Private DataTypes As Collection
Private InitialMEICNumber As String
Private JobCaption As String
Private NameOfDateField As String
Private DataHasTime As Boolean
Private DateIsMandatory As Boolean
Private HasTrackData As Boolean
Private NextFrame As String
Private BulkLoadType As Long


Public Function SetData(MEICNumber As String, _
                        ByRef MeicNumbersToSet As Collection, _
                        CaptionToSet As String, _
                        ByRef DataTypesToSet As Collection, _
                        RequireCruiseFrame As Boolean, _
                        DateField As String, _
                        AllowTime As Boolean, _
                        RequireDate As Boolean, _
                        GotTrackData As Boolean, _
                        ByVal BulkLoad As Long, _
                        FollowingFrame As String) As Boolean
                      
    Dim Index As Long
    Dim Ok As Boolean
    
    ' do not allow a MEICNumber that is not in the list of Meic
    ' numbers, unless it is ""
    
    Ok = (MEICNumber = "")
    Index = 0
    
    While Not Ok And (Index < MeicNumbersToSet.Count)
        Index = Index + 1
        Ok = (MeicNumbersToSet(Index) = MEICNumber)
    Wend
    
    If (Not Ok) Then
        MsgBox "Problem with MEIC number " & MEICNumber & " for " _
                & CaptionToSet & vbCrLf & _
                "Please check Job_Tracking for this number"
        SetData = False
        Exit Function
    End If
    
    Set MEICNumbers = New Collection
    Set DataTypes = New Collection
    
    InitialMEICNumber = MEICNumber
    JobCaption = CaptionToSet
    EnableCruiseFrame = RequireCruiseFrame
    NameOfDateField = DateField
    DataHasTime = AllowTime
    DateIsMandatory = RequireDate
    HasTrackData = GotTrackData
    BulkLoadType = BulkLoad
    NextFrame = FollowingFrame

    For Index = 1 To MeicNumbersToSet.Count
        MEICNumbers.Add MeicNumbersToSet(Index)
    Next
                              
    For Index = 1 To DataTypesToSet.Count
        DataTypes.Add DataTypesToSet(Index)
    Next
    
    SetData = True
End Function

Private Function DBString(str As String) As String
    If str = "" Or IsNull(str) Then
        DBString = "NULL"
    Else
        DBString = "'" & str & "'"
    End If
End Function

Private Sub InitialiseDataType(ByRef box As ComboBox)

    Dim Index As Long

    box.Clear
        
    For Index = 1 To DataTypes.Count
        box.AddItem DataTypes(Index)
    Next

    box.Text = DataTypes(1)
    
End Sub


Private Sub InitialiseMeicNumber(ByRef box As ComboBox)

    Dim Index, boxIndex As Long

    box.Clear
    
    ' add a empty string to the combo box, in case the
    ' Initial Meic Number is null
    
    box.AddItem ("")
        
    For Index = 1 To MEICNumbers.Count
        box.AddItem MEICNumbers(Index)
    Next

    ' set the Initial Meic Number in the box, if possible

    boxIndex = -1
    Index = 0
    
    While (boxIndex < 0) And (Index < box.ListCount)
        If InitialMEICNumber = box.List(Index) Then boxIndex = Index
        Index = Index + 1
    Wend
    
    If (boxIndex < 0) Then boxIndex = 0
    
    box.ListIndex = boxIndex

    
End Sub


Private Sub InitialiseFromJobLookups(ByRef box As ComboBox, FieldType As String)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "Select description from job_lookups where type = '" & FieldType & "'"

    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("description") <> "" Then
            box.AddItem Results("description")
        End If
        Results.MoveNext
    Wend
    
End Sub

Private Sub InitialiseCruiseName(ByRef box As ComboBox)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "Select cruise_name from cruise_layer"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("cruise_name") <> "" Then
            box.AddItem Results("cruise_name")
        End If
        Results.MoveNext
    Wend
    
End Sub

Private Sub InitialiseOriginator(ByRef box As ComboBox)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "Select distinct originator from meds_processing_job where data_type <> 'Observed Physical Data'" & _
               "order by originator asc"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("originator") <> "" Then
            box.AddItem Results("originator")
        End If
        Results.MoveNext
    Wend
    
End Sub


Private Sub LoadCruiseFromCruiseNumber(CruiseNumber As String)

    Dim SQLQuery As String
    Dim Results As Object

    SQLQuery = "select cruise_name, start_port, end_port, cruise_descriptor, " & _
                 " TO_CHAR(start_date, 'DD' ) day_start, TO_CHAR(start_date, 'MM') month_start, TO_CHAR(start_date, 'YYYY') year_start," & _
                 " TO_CHAR(end_date, 'DD' ) day_end, TO_CHAR(end_date, 'MM') month_end, TO_CHAR(end_date, 'YYYY') year_end " & _
                " from cruise_layer where meds_cruise_number = " & CruiseNumber & ""
            
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Not Results.EOF Then
        Cruise.Text = Results("cruise_name")
        StartPort.Text = ""
        If Results("start_port") <> "" Then
            StartPort.Text = Results("start_port")
        End If
        EndPort.Text = ""
        If Results("end_port") <> "" Then
            EndPort.Text = Results("end_port")
        End If
        CruiseDescriptor.Text = ""
        If Results("cruise_descriptor") <> "" Then
            CruiseDescriptor.Text = Results("cruise_descriptor")
        End If
        Call EditJobTracking.SetDateFromDB(Results, StartDate, "start")
        Call EditJobTracking.SetDateFromDB(Results, EndDate, "end")
    End If

End Sub
Private Sub SetDefaults()
    Dim Temp As String
    
    Temp = "[NOT ASSESSED]"
    DateOfReceipt = Null
    Caveat.Text = Temp
    Descriptor.Text = Temp
    IDO.Text = Temp
    Quality.Text = Temp
    DatumTransform.Text = Temp
    LocalDatum.Text = Temp
    Protection.Text = "UNCLASSIFIED"
    
    Descriptor.Text = Temp
    DatumTransform.Text = Temp
    Protection.Text = Temp
    Comments.Text = ""
    Processor.Text = ""
    DataUseCode.Text = ""
    Cruise.Text = ""
    OwnerAuthorityPrefix.Text = ""
    Originator.Text = ""
    StartDate = ""
    EndDate = ""
    CruiseDescriptor = ""
    StartPort = ""
    EndPort = ""
End Sub

Private Sub ToggleEnableStates(state As Boolean)
    ProcessingJobDataType.Enabled = state
    DateOfReceipt.Enabled = state
    Caveat.Enabled = state
    LocalDatum.Enabled = state
    Descriptor.Enabled = state
    IDO.Enabled = state
    Quality.Enabled = state
    DatumTransform.Enabled = state
    Protection.Enabled = state
    Comments.Enabled = state
    Processor.Enabled = state
    DataUseCode.Enabled = state

    Cruise.Enabled = state
    OwnerAuthorityPrefix.Enabled = state
    Originator.Enabled = state
    StartDate.Enabled = state
    EndDate.Enabled = state
    CruiseDescriptor.Enabled = state
    StartPort.Enabled = state
    EndPort.Enabled = state
    AddCruiseButton.Enabled = state
End Sub

Private Sub ToggleControlStates(state As Boolean)
    ProcessingJobDataType.Visible = state
    DateOfReceipt.Visible = state
    Caveat.Visible = state
    LocalDatum.Visible = state
    Descriptor.Visible = state
    IDO.Visible = state
    Quality.Visible = state
    DatumTransform.Visible = state
    Protection.Visible = state
    Comments.Visible = state
    Processor.Visible = state
    DataUseCode.Visible = state

    Cruise.Visible = state
    OwnerAuthorityPrefix.Visible = state
    Originator.Visible = state
    
    Label2.Visible = state
    Label3.Visible = state
    Label4.Visible = state
    Label5.Visible = state
    Label6.Visible = state
    Label7.Visible = state
    Label8.Visible = state
    Label9.Visible = state
    Label10.Visible = state
    Label11.Visible = state
    Label12.Visible = state
    Label13.Visible = state
    Label14.Visible = state
    Label15.Visible = state
    Label17.Visible = state
    Label20.Visible = state
    Label21.Visible = state
    Label22.Visible = state
    Label23.Visible = state
    StartDate.Visible = state
    EndDate.Visible = state
    CruiseDescriptor.Visible = state
    StartPort.Visible = state
    EndPort.Visible = state
    CruiseFrame.Visible = state And EnableCruiseFrame
End Sub

Public Function SafeString(Results As Object, str As String) As String
    If IsNull(Results(str)) Then
        SafeString = ""
    Else
        SafeString = Results(str)
    End If
End Function

Private Sub AddCruiseButton_Click()
    Dim SQLQuery As String
    Dim Results As Object
    
    If Cruise.Text <> "" Then
        SQLQuery = "select count(*) row_count from cruise_layer where cruise_name = '" & _
                    Replace(Cruise.Text, "'", "''") & "'"
        
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Results("row_count") = 0 Then
            OraDatabase.BeginTrans

            SQLQuery = "select max(meds_cruise_number) + 1 as new_cruise_number from cruise_layer"
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
                  
            SQLQuery = "INSERT INTO Cruise_Layer ( meds_cruise_number, cruise_name, start_port, start_date, end_port, end_date, cruise_descriptor ) VALUES ( " & _
                        Results("new_cruise_number") & "," & _
                        DBString(Replace(Cruise.Text, "'", "''")) & "," & _
                        DBString(StartPort.Text) & ","
                        
            Call EditJobTracking.AddDatePickerField(SQLQuery, StartDate)
            
            SQLQuery = SQLQuery & DBString(EndPort.Text) & ","
            
            Call EditJobTracking.AddDatePickerField(SQLQuery, EndDate)
            
            SQLQuery = SQLQuery & DBString(CruiseDescriptor.Text) & ")"
                        
            OraDatabase.ExecuteSQL (SQLQuery)
            
            OraDatabase.CommitTrans
        Else
            MsgBox "Cruise Already Entered - Editing is not possible from here"
        End If
    Else
        MsgBox "A new cruise name must be entered"
    End If
End Sub

Private Sub AddToJobButton_Click()
    Dim SQLQuery As String
    Dim SQLKeyQuery As String
    Dim Results As Object
    Dim medsCruiseNumber As Integer
    Dim medsShipNumber As Integer
    Dim medsDataType As String
    Dim DUC As String
    Dim Index As Long
    Dim Ok As Boolean
    
    If MEICNumber.Text = "" Then
        MsgBox "You must select a MEIC Number before a new job can be entered"
        Exit Sub
    End If
    
    ' check that the text value is in the list of MEIC Numbers
    
    Index = 0
    Ok = False
    
    While Not Ok And (Index < MEICNumber.ListCount)
        Ok = (MEICNumber.Text = MEICNumber.List(Index))
        Index = Index + 1
    Wend
    
    If Not Ok Then
        MsgBox "You must select a valid MEIC Number before a new job can be entered"
        Exit Sub
    End If
      
    On Error GoTo AddToJobButton_Error
    
    SQLQuery = "Select * from meds_processing_job where meic_number = " & MEICNumber.Text
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Results.EOF Then
        ' This is new data that must be entered
        
        If ProcessingJobDataType.Text = "" Then
            MsgBox "You must select a data type before a new job can be entered"
            Exit Sub
        End If
        
        If Protection.Text = "" Then
            MsgBox "You must select a Classification before a new job can be entered"
            Exit Sub
        End If
        
        If EnableCruiseFrame And Cruise.Text = "" Then
            MsgBox "You must select a Cruise before a new job can be entered"
            Exit Sub
        End If
        
        If IsNull(DateOfReceipt) Then
            MsgBox "You must select a date of receipt before a new job can be entered"
            Exit Sub
        End If
        
        If DataUseCode = "" Then
            MsgBox "You must select a Data Use Code before a new job can be entered"
            Exit Sub
        End If

        
        If ProcessingJobDataType.Text <> "" Then
            SQLQuery = "Select * from tab_columns where upper(table_name) like upper('" & ProcessingJobDataType.Text & "%')"
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
            
            If Results.EOF Then
                MsgBox "Data Type must be set up for generic edit in TAB_COLUMS : '" & _
                        ProcessingJobDataType.Text & "' does not exist"
                Exit Sub
            Else
                medsDataType = ProcessingJobDataType.Text
            End If
        End If
        
        DUC = DataUseCode.Text
        If IsNumeric(left(DUC, 1)) Then
            DUC = left(DUC, 1)
        End If
       
        OraDatabase.BeginTrans
    
        SQLQuery = "INSERT INTO meds_processing_job ( archive_date, datum_transformation, local_datum, job_number, meic_number, data_type," & _
                "date_of_receipt, protection, caveat, descriptor, ido, data_quality," & _
                "owner_authority_prefix, comments, meds_cruise_number, processor, data_use_code, originator"
                
        If EnableCruiseFrame Then
            SQLKeyQuery = "SELECT meds_cruise_number from cruise_layer where cruise_name = '" & _
            Replace(Cruise.Text, "'", "''") & "'"
            Set Results = OraDatabase.CreateDynaset(SQLKeyQuery, 0&)
        
            If Results.EOF Then
                ' Insert a new cruise layer into the database
                SQLKeyQuery = "select max( meds_cruise_number ) as new_cruise_number from cruise_layer"
                Set Results = OraDatabase.CreateDynaset(SQLKeyQuery, 0&)
            
                medsCruiseNumber = Results("new_cruise_number")
                SQLKeyQuery = "INSERT INTO Cruise_Layer (meds_cruise_number, cruise_name ) VALUES ( " & medsCruiseNumber & ",'" & Cruise.Text & "')"
                OraDatabase.ExecuteSQL (SQLKeyQuery)
            Else
                medsCruiseNumber = Results("meds_cruise_number")
            End If
        End If
        SQLKeyQuery = "select max(job_number)+1 as new_job_number from meds_processing_job"
        Set Results = OraDatabase.CreateDynaset(SQLKeyQuery, 0&)
        
        SQLQuery = SQLQuery & ") " & _
               "VALUES( TO_DATE('" & Day(Now) & "/" & Month(Now) & "/" & Year(Now) & "','DD/MM/YYYY'),'" & _
                DatumTransform.Text & "','" & LocalDatum.Text & "'," & _
                Results("new_job_number") & "," & MEICNumber.Text & ",'" & _
                medsDataType & "'," & _
                "TO_DATE('" & DateOfReceipt.Day & "/" & DateOfReceipt.Month & "/" & DateOfReceipt.Year & "','DD/MM/YYYY')," & _
                "'" & Protection.Text & "','" & Caveat.Text & "','" & Descriptor.Text & "','" & IDO.Text & "'," & _
                "'" & Quality.Text & "','" & OwnerAuthorityPrefix.Text & "','" & _
                Replace(Comments.Text, "'", "''") & "'," & medsCruiseNumber & ",'" & _
                Processor.Text & "','" & DUC & "','" & Originator.Text & "')"
        
        OraDatabase.ExecuteSQL (SQLQuery)
        OraDatabase.CommitTrans
    End If
    
    If NextFrame = "DataEdit" Then
        Call StartDataEdit
    ElseIf NextFrame = "TrackEdit" Then
        Call StartTrackEdit
    End If
    
Exit Sub
AddToJobButton_Error:
If (err.Number <> 32755) And (err.Number <> 364) Then
    MsgBox "Error while processing save :" & err.Number & " " & err.description
End If

End Sub

Private Sub BulkImportButton_Click()

    Dim msg As String
    ' Call appropriate code for the generic bulk import that has been set
    
    Select Case BulkLoadType
        
        Case 100
        
            If DataSearch.TestForBulkImport(BulkLoadType) Then
                Call MarineLifeNewJob.BulkSecchiImport(InitialMEICNumber)
            Else
                
                msg = "Bulk Import Code " & BulkLoadType & " not valid for " & _
                      JobCaption & " data"
                        
                MsgBox msg
            End If
   
        Case Else
            
            msg = "No code available for bulk import of " & _
                  JobCaption & " data"
            
           MsgBox msg
    End Select
           
End Sub

Private Sub Cruise_Click()

    If Cruise.Text <> "" Then
        Dim SQLQuery As String
        Dim Results As Object

        SQLQuery = "select start_port, end_port, cruise_descriptor, " & _
                 " TO_CHAR(start_date, 'DD' ) day_start, TO_CHAR(start_date, 'MM') month_start, TO_CHAR(start_date, 'YYYY') year_start," & _
                 " TO_CHAR(end_date, 'DD' ) day_end, TO_CHAR(end_date, 'MM') month_end, TO_CHAR(end_date, 'YYYY') year_end " & _
                " from cruise_layer where cruise_name = '" & _
                Replace(Cruise.Text, "'", "''") & "'"
            
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
        If Not Results.EOF Then
            If Results("start_port") <> "" Then
                StartPort.Text = Results("start_port")
            End If
            If Results("end_port") <> "" Then
                EndPort.Text = Results("end_port")
            End If
            If Results("cruise_descriptor") <> "" Then
                CruiseDescriptor.Text = Results("cruise_descriptor")
            End If
            Call EditJobTracking.SetDateFromDB(Results, StartDate, "start")
            Call EditJobTracking.SetDateFromDB(Results, EndDate, "end")
        End If
    Else
        StartPort.Text = ""
        EndPort.Text = ""
        CruiseDescriptor.Text = ""
        StartDate = ""
        EndDate = ""
    End If

End Sub


Private Sub ExitButton_Click()
    ' Tell the calling frame that there have been no changes made to the database
    ' before returning to it
    DataSearch.AlteredData (False)
    
    Unload Me
End Sub

Private Sub Form_Load()
    Caption = JobCaption
    Call InitialiseMeicNumber(MEICNumber)
    Call InitialiseDataType(ProcessingJobDataType)
    Call JobTracking.InitialiseClassificationField(Protection)
    Call JobTracking.InitialiseAssignedField(Processor)
    Call InitialiseFromJobLookups(Caveat, "Caveat")
    Call InitialiseFromJobLookups(IDO, "IDO")
    Call InitialiseFromJobLookups(LocalDatum, "Local Datum")
    Call InitialiseFromJobLookups(DatumTransform, "Datum Transform")
    Call InitialiseFromJobLookups(Quality, "Quality")
    Call InitialiseFromJobLookups(DataUseCode, "DUC")
    Call InitialiseCruiseName(Cruise)
    Call JobTracking.InitialiseDatePicker(StartDate)
    Call JobTracking.InitialiseDatePicker(EndDate)
    Call InitialiseOriginator(Originator)
    
    BulkImportButton.Visible = False  ' usually this will be the case
    BulkImportButton.Caption = "Bulk " & JobCaption & " Load"
    
    Call MEICNumber_Click

End Sub

Private Sub MEICNumber_Click()
    Dim SQLQuery As String
    Dim Results As Object
    
    If MEICNumber.Text <> "" Then
        Call SetDefaults
        Call ToggleControlStates(True)
    
        SQLQuery = "Select meds_cruise_number,caveat, local_datum, descriptor, ido, " & _
                   "data_quality, datum_transformation, protection, " & _
                   "comments, processor, instrument_code, data_use_code, " & _
                   "owner_authority_prefix, originator " & _
                   "from meds_processing_job " & _
                   "where meic_number = " & MEICNumber.Text
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
        If Not Results.EOF Then
            'DateOfReceipt.Visible = State
            Caveat.Text = SafeString(Results, "Caveat")
            LocalDatum.Text = SafeString(Results, "Local_Datum")
            Descriptor.Text = SafeString(Results, "Descriptor")
            IDO.Text = SafeString(Results, "IDO")
            Quality.Text = SafeString(Results, "Data_Quality")
            DatumTransform.Text = SafeString(Results, "Datum_Transformation")
            Protection.Text = SafeString(Results, "Protection")
            Comments.Text = SafeString(Results, "Comments")
            Processor.Text = SafeString(Results, "Processor")
            DataUseCode.Text = SafeString(Results, "Data_Use_Code")
            If Not IsNull(Results("meds_cruise_number")) Then
                Call LoadCruiseFromCruiseNumber(Results("meds_cruise_number"))
            Else
               
                Cruise.Text = ""
                StartPort.Text = ""
                EndPort.Text = ""
                Call JobTracking.InitialiseDatePicker(StartDate)
                Call JobTracking.InitialiseDatePicker(EndDate)
                CruiseDescriptor.Text = ""
            End If
            OwnerAuthorityPrefix.Text = SafeString(Results, "Owner_Authority_Prefix")
            Originator.Text = SafeString(Results, "Originator")
'            ProcessingJobDataType.Text = Results("data_type")
            
            Call ToggleEnableStates(False) ' set read only
            OuterFrame.Caption = "Meds Processing Job already entered"
            AddToJobButton.Caption = "Use Existing Job"
            BulkImportButton.Visible = (BulkLoadType > 0)
        Else
            ' can now set some of the fields based on values in the Job Tracking
            ' table for this MEICNumber
            Call SetDefaults
            Call ToggleEnableStates(True) ' set writable
            OuterFrame.Caption = "Add New Meds Processing Job"
            AddToJobButton.Caption = "Add New Job"
            SQLQuery = "select TO_CHAR(date_received, 'DD') day_received, " & _
                    "TO_CHAR(date_received, 'MM') month_received, " & _
                    "TO_CHAR(date_received, 'YYYY') year_received, " & _
                    "comments, classification, assigned " & _
                   "from job_tracking where meic_number = " & MEICNumber.Text
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
            If Not Results.EOF Then
                If Results("day_received") <> "" Then
                    Call EditJobTracking.SetDateFromDB(Results, DateOfReceipt, "received")
                   DateOfReceipt.Enabled = False
                End If
                If Results("Comments") <> "" Then
                    Comments.Text = SafeString(Results, "Comments")
                    Comments.Enabled = False
                End If
                If Results("Classification") <> "" Then
                    Protection.Text = SafeString(Results, "classification")
                    Protection.Enabled = False
                End If
                If Results("assigned") <> "" Then
                    Processor.Text = SafeString(Results, "assigned")
                    Processor.Enabled = False
                End If
            End If
        End If
    Else    ' Null string selected
        Call SetDefaults
        Call ToggleControlStates(False)
        Call ToggleEnableStates(False)
    End If

End Sub


Private Sub StartDataEdit()
    Dim SQLQuery As String
    Dim Results  As Object
    Dim JobNos As Collection
    Dim ObsNos As Collection
    Dim MEICNos As Collection
    Dim Data_Type As String
    Dim Ok As Boolean
       
    Set JobNos = New Collection
    Set ObsNos = New Collection
    Set MEICNos = New Collection
    
    ObsNos.Add -1   ' this tells the edit form that this is a new entry
    
    If MEICNumber.Text <> "" And ProcessingJobDataType.Text <> "" Then
    
        SQLQuery = "SELECT job_number from meds_processing_job where meic_number = " & MEICNumber.Text
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
            JobNos.Add Results("job_number")
        End If
        
        MEICNos.Add MEICNumber.Text
        Ok = DataEdit.SetEditDetails(EDIT_MODE_NEW, _
                                     MEICNos, _
                                     JobNos, _
                                     ObsNos, _
                                     ProcessingJobDataType.Text, _
                                     JobCaption, _
                                     NameOfDateField, _
                                     DataHasTime, _
                                     DateIsMandatory, _
                                     HasTrackData)
        
        ' destroy collections
        Set MEICNos = Nothing
        Set JobNos = Nothing
        Set ObsNos = Nothing
        
        If Not Ok Then
            MsgBox "Unexpected mismatch in size of collections", vbExclamation
            Exit Sub
        End If
        
        DataEdit.Show (1)
        
        Unload Me
    Else
        MsgBox "Select a job number and data type to add data for"
    End If
End Sub

Private Sub StartTrackEdit()
    Dim SQLQuery As String
    Dim Results  As Object
    Dim JobNo As Long
    Dim TrackNo As Long
    Dim MEICNo As Long
    Dim Data_Type As String
    Dim Ok As Boolean
    
    TrackNo = -1 ' this tells the edit form that this is a new entry
    
    If MEICNumber.Text <> "" And ProcessingJobDataType.Text <> "" Then
    
        SQLQuery = "SELECT job_number from meds_processing_job where meic_number = " & MEICNumber.Text
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
            JobNo = Results("job_number")
        End If
        
        MEICNo = MEICNumber.Text

        Ok = TrackEdit.SetEditDetails(EDIT_MODE_NEW, _
                                     MEICNo, _
                                     JobNo, _
                                     TrackNo, _
                                     ProcessingJobDataType.Text, _
                                     JobCaption, _
                                     0#, _
                                     0#, _
                                     0#, _
                                     0#, _
                                     "1/1/2000", _
                                     "00:00:00", _
                                     "1/1/2001", _
                                     "00:00:00", _
                                     0#, _
                                     0#, _
                                     "", _
                                     "", _
                                     "V", _
                                     0#, _
                                     "", _
                                     "")
        If Not Ok Then
            MsgBox "Unexpected mismatch in size of collections", vbExclamation
            Exit Sub
        End If
        
        TrackEdit.Show (1)
    
    Else
        MsgBox "Select a job number and data type to add data for"
    End If
End Sub


