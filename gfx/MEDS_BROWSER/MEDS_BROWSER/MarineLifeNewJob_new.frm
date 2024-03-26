VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form MarineLifeNewJob 
   Caption         =   "Marine Life Job"
   ClientHeight    =   8820
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10935
   LinkTopic       =   "Form1"
   ScaleHeight     =   8820
   ScaleWidth      =   10935
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox OwnerAuthorityPrefix 
      Height          =   375
      Left            =   2400
      TabIndex        =   19
      Top             =   5520
      Width           =   3255
   End
   Begin VB.Frame OuterFrame 
      Caption         =   "Marine Life Job"
      Height          =   8775
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      Begin VB.CommandButton AddAnotherJob 
         Caption         =   "ADD"
         Height          =   375
         Left            =   5640
         TabIndex        =   50
         Top             =   480
         Width           =   615
      End
      Begin VB.ComboBox Originator 
         Height          =   315
         Left            =   2280
         TabIndex        =   49
         Top             =   6000
         Width           =   3255
      End
      Begin VB.Frame Frame1 
         Caption         =   "Cruise"
         Height          =   3855
         Left            =   5760
         TabIndex        =   35
         Top             =   1200
         Width           =   5055
         Begin VB.CommandButton AddCruiseButton 
            Caption         =   "AddNewCruise"
            Height          =   375
            Left            =   240
            TabIndex        =   48
            Top             =   3360
            Width           =   2295
         End
         Begin VB.TextBox CruiseDescriptor 
            Height          =   285
            Left            =   1560
            TabIndex        =   47
            Top             =   2760
            Width           =   3375
         End
         Begin MSComCtl2.DTPicker EndDate 
            Height          =   375
            Left            =   1560
            TabIndex        =   44
            Top             =   2160
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   16842753
            CurrentDate     =   38512
         End
         Begin MSComCtl2.DTPicker StartDate 
            Height          =   375
            Left            =   1560
            TabIndex        =   42
            Top             =   1680
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   16842753
            CurrentDate     =   38512
         End
         Begin VB.TextBox EndPort 
            Height          =   285
            Left            =   1560
            TabIndex        =   40
            Top             =   1200
            Width           =   3375
         End
         Begin VB.TextBox StartPort 
            Height          =   285
            Left            =   1560
            TabIndex        =   39
            Top             =   720
            Width           =   3375
         End
         Begin VB.ComboBox Cruise 
            Height          =   315
            Left            =   1560
            TabIndex        =   37
            Top             =   240
            Width           =   3375
         End
         Begin VB.Label Label23 
            Caption         =   "CruiseDescriptor"
            Height          =   255
            Left            =   120
            TabIndex        =   46
            Top             =   2760
            Width           =   1215
         End
         Begin VB.Label Label22 
            Caption         =   "End Date"
            Height          =   375
            Left            =   120
            TabIndex        =   45
            Top             =   2160
            Width           =   1215
         End
         Begin VB.Label Label21 
            Caption         =   "Start Date"
            Height          =   255
            Left            =   120
            TabIndex        =   43
            Top             =   1680
            Width           =   1215
         End
         Begin VB.Label Label20 
            Caption         =   "EndPort"
            Height          =   255
            Left            =   120
            TabIndex        =   41
            Top             =   1200
            Width           =   1215
         End
         Begin VB.Label Label19 
            Caption         =   "Start Port"
            Height          =   255
            Left            =   120
            TabIndex        =   38
            Top             =   720
            Width           =   1335
         End
         Begin VB.Label Label13 
            Caption         =   "Cruise"
            Height          =   255
            Left            =   120
            TabIndex        =   36
            Top             =   240
            Width           =   735
         End
      End
      Begin MSComDlg.CommonDialog H635Finder 
         Left            =   2280
         Top             =   7680
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         DialogTitle     =   "Select a file in a directory full  H635 Files"
      End
      Begin VB.CommandButton BulkSecchiButton 
         Caption         =   "Bulk Secchi Import"
         Height          =   375
         Left            =   5520
         TabIndex        =   34
         Top             =   8280
         Width           =   2655
      End
      Begin VB.TextBox Comments 
         Height          =   975
         Left            =   2280
         TabIndex        =   32
         Top             =   6600
         Width           =   8295
      End
      Begin VB.ComboBox Quality 
         Height          =   315
         Left            =   2280
         TabIndex        =   31
         Top             =   3600
         Width           =   3255
      End
      Begin VB.ComboBox DatumTransform 
         Height          =   315
         Left            =   2280
         TabIndex        =   30
         Top             =   4080
         Width           =   3255
      End
      Begin VB.ComboBox LocalDatum 
         Height          =   315
         Left            =   2280
         TabIndex        =   29
         Top             =   4560
         Width           =   3255
      End
      Begin VB.ComboBox IDO 
         Height          =   315
         Left            =   2280
         TabIndex        =   28
         Top             =   3120
         Width           =   3255
      End
      Begin VB.ComboBox Caveat 
         Height          =   315
         Left            =   2280
         TabIndex        =   27
         Top             =   2160
         Width           =   3255
      End
      Begin VB.ComboBox Processor 
         Height          =   315
         Left            =   2280
         TabIndex        =   26
         Top             =   1200
         Width           =   3255
      End
      Begin VB.ComboBox Protection 
         Height          =   315
         Left            =   2280
         TabIndex        =   25
         Top             =   1680
         Width           =   3255
      End
      Begin VB.ComboBox Ship 
         Height          =   315
         Left            =   6840
         TabIndex        =   24
         Top             =   4560
         Width           =   2895
      End
      Begin VB.ComboBox DataUseCode 
         Height          =   315
         Left            =   2280
         TabIndex        =   22
         Top             =   5040
         Width           =   3255
      End
      Begin VB.TextBox Descriptor 
         Height          =   375
         Left            =   2280
         TabIndex        =   15
         Top             =   2640
         Width           =   3255
      End
      Begin MSComCtl2.DTPicker DateOfReceipt 
         Height          =   375
         Left            =   7680
         TabIndex        =   11
         Top             =   480
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   661
         _Version        =   393216
         CheckBox        =   -1  'True
         Format          =   16842753
         CurrentDate     =   38496
      End
      Begin VB.ComboBox ProcessingJobDataType 
         Height          =   315
         Left            =   1800
         TabIndex        =   6
         Top             =   480
         Width           =   3735
      End
      Begin VB.ComboBox MEICNumber 
         Height          =   315
         Left            =   240
         TabIndex        =   4
         Top             =   480
         Width           =   1335
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Exit - Aborting "
         Height          =   375
         Left            =   8520
         TabIndex        =   2
         Top             =   8280
         Width           =   2175
      End
      Begin VB.CommandButton SaveButton 
         Caption         =   "Add To Job"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   8280
         Width           =   1935
      End
      Begin VB.Label Label5 
         Caption         =   "Comments"
         Height          =   375
         Left            =   240
         TabIndex        =   33
         Top             =   6600
         Width           =   1575
      End
      Begin VB.Label Label18 
         Caption         =   "Ship"
         Height          =   255
         Left            =   6120
         TabIndex        =   23
         Top             =   4560
         Width           =   615
      End
      Begin VB.Label Label17 
         Caption         =   "Data Use Code"
         Height          =   255
         Left            =   240
         TabIndex        =   21
         Top             =   5040
         Width           =   1455
      End
      Begin VB.Label Label15 
         Caption         =   "Originator"
         Height          =   255
         Left            =   240
         TabIndex        =   20
         Top             =   6000
         Width           =   1695
      End
      Begin VB.Label Label14 
         Caption         =   "Owner Authority Prefix"
         Height          =   255
         Left            =   240
         TabIndex        =   18
         Top             =   5520
         Width           =   1695
      End
      Begin VB.Label Label12 
         Caption         =   "Data Quality"
         Height          =   255
         Left            =   240
         TabIndex        =   17
         Top             =   3600
         Width           =   1695
      End
      Begin VB.Label Label11 
         Caption         =   "IDO"
         Height          =   255
         Left            =   240
         TabIndex        =   16
         Top             =   3120
         Width           =   1815
      End
      Begin VB.Label Label10 
         Caption         =   "Descriptor"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   2760
         Width           =   1695
      End
      Begin VB.Label Label9 
         Caption         =   "Caveat"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   2280
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "Protection"
         Height          =   255
         Left            =   240
         TabIndex        =   12
         Top             =   1800
         Width           =   1575
      End
      Begin VB.Label Label7 
         Caption         =   "Date Of Receipt"
         Height          =   255
         Left            =   7680
         TabIndex        =   10
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label6 
         Caption         =   "Processor"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "LocalDatum"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   4560
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Datum Transformation"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   4080
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "Data Type"
         Height          =   255
         Left            =   1800
         TabIndex        =   5
         Top             =   240
         Width           =   2415
      End
      Begin VB.Label Label1 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   1575
      End
   End
End
Attribute VB_Name = "MarineLifeNewJob"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function DBString(str As String) As String
    If str = "" Or IsNull(str) Then
        DBString = "NULL"
    Else
        DBString = "'" & str & "'"
    End If
End Function

Public Function DBNumber(str As String) As String
    If str = "" Or IsNull(str) Then
        DBNumber = "NULL"
    Else
        DBNumber = str
    End If
End Function

Private Sub ProcessH635(ByRef dataAdded As Integer, ByRef SQLQuery)
'Read data in from file
'Data is read into two fields per line from the input file. The first is a
'description of the field and the second is its value. The value is copied
'across to the relevant text box/mask edit box.
Dim dummy As String
Dim textval As String
Dim MedsJobNumber As String
Dim MEDSObservationNumber As String
Dim photicDepth As String
Dim horizVisibility As String
Dim txtCloud As String
Dim secchiColour As String
Dim secchiSunAngle As String
Dim txtOStnIdentifier As String
Dim txtWeather As String
Dim txtShipNameParty As String
Dim txtHICruiseRef As String
Dim txtSeaState As String
Dim SecchiDepth As String
Dim deffuseAtt As String
Dim Latitude As Double
Dim Longitude As Double

dataAdded = 0
'Main form fields

'Identity fields
Input #1, dummy, textval
txtShipNameParty = textval
Input #1, dummy, textval
txtOStnIdentifier = textval
Input #1, dummy, textval
medConsecutiveNo = textval
Input #1, dummy, textval
txtHICruiseRef = textval
Input #1, dummy, textval
txtFileName = textval

'Start time/position fields
Input #1, dummy, textval
txtStartDay = textval
Input #1, dummy, textval
txtStartMonth = textval
Input #1, dummy, textval
txtStartYear = textval
Input #1, dummy, textval
txtStartHour = textval
Input #1, dummy, textval
txtStartMin = textval
Input #1, dummy, textval
txtStartLatDeg = textval
Input #1, dummy, textval
txtStartLatMin = textval
Input #1, dummy, textval
txtStartLatHemi = textval
Input #1, dummy, textval
txtStartLongDeg = textval
Input #1, dummy, textval
txtStartLongMin = textval
Input #1, dummy, textval
txtStartLongHemi = textval

Latitude = txtStartLatDeg + (txtStartLatMin / 60#)
If txtStartLatHemi = "S" Then
    Latitude = Latitude * (-1#)
End If

Longitude = txtStartLongDeg + (txtStartLongMin / 60#)
If txtStartLongHemi = "W" Then
    Longitude = Longitude * (-1#)
End If

'End time/position fields
Input #1, dummy, textval
txtEndDay = textval
Input #1, dummy, textval
txtEndMonth = textval
Input #1, dummy, textval
txtEndYear = textval
Input #1, dummy, textval
txtEndHour = textval
Input #1, dummy, textval
txtEndMin = textval
Input #1, dummy, textval
txtEndLatDeg = textval
Input #1, dummy, textval
medEndLatMin = textval
Input #1, dummy, textval
txtEndLatHemi = textval
Input #1, dummy, textval
txtEndLongDeg = textval
Input #1, dummy, textval
medEndLongMin = textval
Input #1, dummy, textval
txtEndLongHemi = textval

'Other position fields
Input #1, dummy, textval
lstProbeType = textval
txtProbeType = textval
Input #1, dummy, textval
txtSerialNo = textval
Input #1, dummy, textval
txtUncorrectedDepth = textval

'Meteorology fields
Input #1, dummy, textval
txtDryAirTemp = textval
Input #1, dummy, textval
txtWetAirTemp = textval
Input #1, dummy, textval
txtWeather = textval
Input #1, dummy, textval
txtCloud = textval
Input #1, dummy, textval
txtWindDirection = textval
Input #1, dummy, textval
txtWindSpeed = textval
Input #1, dummy, textval
txtAirPressure = textval

'Sea surface fields
Input #1, dummy, textval
txtWavePeriod = textval
Input #1, dummy, textval
txtWaveHeight = textval
Input #1, dummy, textval
txtSeaState = textval
Input #1, dummy, textval
txtSeaSTemp = textval

'Secchi data fields
Input #1, dummy, textval
secchiColour = textval
firstSpace = InStr(textval, " ")
If firstSpace > 0 Then
    secchiColour = left(textval, firstSpace)
End If
Input #1, dummy, textval
SecchiDepth = textval
Input #1, dummy, textval
lstTimeOfDay = textval
secchiTimeOfDay = textval
Input #1, dummy, textval
secchiSunAngle = textval

'Media numbers
Input #1, dummy, textval
txtDiscNo = textval
Input #1, dummy, textval
txtCDROMNo = textval
Input #1, dummy, textval
txtRemarks = textval

'CTD fields
'Biological fields
Input #1, dummy, textval
chkHydrocarbon = textval
Input #1, dummy, textval
chkGelbstoffe = textval
Input #1, dummy, textval
chkChlorophyll = textval
Input #1, dummy, textval
chkBioluminescense = textval
'Sample1 fields
Input #1, dummy, textval
txtWireLengthSample1 = textval
Input #1, dummy, textval
txtNiskinNoSample1 = textval
Input #1, dummy, textval
txtProbePressureSample1 = textval
Input #1, dummy, textval
txtRPMReadingSample1 = textval
Input #1, dummy, textval
txtCorrectionPSample1 = textval
Input #1, dummy, textval
txtCorrectedPressureSample1 = textval
Input #1, dummy, textval
txtProbeTempSample1 = textval
Input #1, dummy, textval
txtRTMReadingSample1 = textval
Input #1, dummy, textval
txtCorrectionTSample1 = textval
Input #1, dummy, textval
txtCorrectedTempSample1 = textval
Input #1, dummy, textval
txtBottleNoSample1 = textval
Input #1, dummy, textval
txtProbeSalSample1 = textval
Input #1, dummy, textval
txtPortasalSample1 = textval
Input #1, dummy, textval
txtSalDiffSample1 = textval
Input #1, dummy, textval
txtUKHOPortasalSample1 = textval
'Sample2 fields
Input #1, dummy, textval
txtWireLengthSample2 = textval
Input #1, dummy, textval
txtNiskinNoSample2 = textval
Input #1, dummy, textval
txtProbePressureSample2 = textval
Input #1, dummy, textval
txtRPMReadingSample2 = textval
Input #1, dummy, textval
txtCorrectionPSample2 = textval
Input #1, dummy, textval
txtCorrectedPressureSample2 = textval
Input #1, dummy, textval
txtProbeTempSample2 = textval
Input #1, dummy, textval
txtRTMReadingSample2 = textval
Input #1, dummy, textval
txtCorrectionTSample2 = textval
Input #1, dummy, textval
txtCorrectedTempSample2 = textval
Input #1, dummy, textval
txtBottleNoSample2 = textval
Input #1, dummy, textval
txtProbeSalSample2 = textval
Input #1, dummy, textval
txtPortasalSample2 = textval
Input #1, dummy, textval
txtSalDiffSample2 = textval
Input #1, dummy, textval
txtUKHOPortasalSample2 = textval
'Sample3 fields
Input #1, dummy, textval
txtWireLengthSample3 = textval
Input #1, dummy, textval
txtNiskinNoSample3 = textval
Input #1, dummy, textval
txtProbePressureSample3 = textval
Input #1, dummy, textval
txtRPMReadingSample3 = textval
Input #1, dummy, textval
txtCorrectionPSample3 = textval
Input #1, dummy, textval
txtCorrectedPressureSample3 = textval
Input #1, dummy, textval
txtProbeTempSample3 = textval
Input #1, dummy, textval
txtRTMReadingSample3 = textval
Input #1, dummy, textval
txtCorrectionTSample3 = textval
Input #1, dummy, textval
txtCorrectedTempSample3 = textval
Input #1, dummy, textval
txtBottleNoSample3 = textval
Input #1, dummy, textval
txtProbeSalSample3 = textval
Input #1, dummy, textval
txtPortasalSample3 = textval
Input #1, dummy, textval
txtSalDiffSample3 = textval
Input #1, dummy, textval
txtUKHOPortasalSample3 = textval
'Sample4 fields
Input #1, dummy, textval
txtWireLengthSample4 = textval
Input #1, dummy, textval
txtNiskinNoSample4 = textval
Input #1, dummy, textval
txtProbePressureSample4 = textval
Input #1, dummy, textval
txtRPMReadingSample4 = textval
Input #1, dummy, textval
txtCorrectionPSample4 = textval
Input #1, dummy, textval
txtCorrectedPressureSample4 = textval
Input #1, dummy, textval
txtProbeTempSample4 = textval
Input #1, dummy, textval
txtRTMReadingSample4 = textval
Input #1, dummy, textval
txtCorrectionTSample4 = textval
Input #1, dummy, textval
txtCorrectedTempSample4 = textval
Input #1, dummy, textval
txtBottleNoSample4 = textval
Input #1, dummy, textval
txtProbeSalSample4 = textval
Input #1, dummy, textval
txtPortasalSample4 = textval
Input #1, dummy, textval
txtSalDiffSample4 = textval
Input #1, dummy, textval
txtUKHOPortasalSample4 = textval

'Sound Velocity data
'Sound velocity fields
Input #1, dummy, textval
txtMeanSV = textval
Input #1, dummy, textval
txtWireLength = textval
'
'Mean Salinity
'Average Salinity
Input #1, dummy, textval
txtMeanSal = textval

    If SecchiDepth <> "" And IsNumeric(SecchiDepth) Then
        photicDepth = SecchiDepth * 3
        horizVisibility = SecchiDepth * 0.7
        diffuseAtt = "NULL"
        If SecchiDepth <> 0# Then
            diffuseAtt = 1.7 / SecchiDepth
        End If
    Else
        photicDepth = "NULL"
        horizVisibility = "NULL"
        diffuseAtt = "NULL"
        SecchiDepth = "NULL"
        If secchiColour = "" Or IsNull(secchiColour) Then
            'MsgBox "Both Secchi Depth and Secchi Colour are NULL - skipping"
            Exit Sub
        End If
    End If

    SQLQuery = "Select * from meds_processing_job where meic_number = " & MEICNumber.Text & " and data_type = 'Secchi Disk Data' "
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Not Results.EOF Then
        MedsJobNumber = Results("job_number") ' there must be an entry to have got this far
    End If
    
    SQLQuery = "Select max(meds_observation_number)+1 as new_observation_number FROM SECCHI_DISK_OBSERVATION " & _
               " WHERE meds_job_number = " & MedsJobNumber
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    If Not Results.EOF Then
        If IsNull(Results("new_observation_number")) Then
            MEDSObservationNumber = 1
        Else
            MEDSObservationNumber = Results("new_observation_number")
        End If
    End If
    

    SQLQuery = "INSERT INTO SECCHI_DISK_OBSERVATION ( " & _
                "MEDS_OBSERVATION_NUMBER, MEDS_JOB_NUMBER, " & _
                " Location, DATE_RECORDED, Latitude, Longitude )"
    
    SQLQuery = SQLQuery & " VALUES ( " & MEDSObservationNumber & "," & MedsJobNumber & "," & _
                "MDSYS.SDO_GEOMETRY(2001,NULL,MDSYS.SDO_POINT_TYPE(" & _
                Longitude & "," & Latitude & ",null),null,null)," & _
                "TO_DATE('" & txtStartDay & "/" & txtStartMonth & "/" & txtStartYear & " " & txtStartHour & ":" & txtStartMin & "'" & _
                ",'DD/MM/YYYY HH24:MI')," & _
                Latitude & "," & Longitude & ")"

    OraDatabase.ExecuteSQL (SQLQuery)
 
    SQLQuery = "INSERT INTO SECCHI_DISK_DATA ( " & _
                " MEDS_OBSERVATION_NUMBER, MEDS_JOB_NUMBER, " & _
                " RECORD_NUMBER, WATER_COLOUR, SUN_ANGLE, REFERENCE, GENERAL_AREA," & _
                " STN_IDENTIFIER, PHOTIC_DEPTH, HORIZONTAL_VISABILITY, WEATHER, " & _
                " CLOUD, Ship, CRUISE_IDENTIFIER, ARCHIVED, DIFFUSE_ATTN_COE, " & _
                " Month, GMT, SEA_STATE, SECCHI_DEPTH ) "
    
    SQLQuery = SQLQuery & " VALUES ( " & _
               MEDSObservationNumber & "," & MedsJobNumber & "," & _
               "NULL, " & DBString(secchiColour) & "," & DBString(secchiSunAngle) & ",NULL,NULL," & _
               DBString(txtOStnIdentifier) & "," & DBNumber(photicDepth) & "," & DBNumber(horizVisibility) & "," & DBNumber(txtWeather) & "," & _
               DBNumber(txtCloud) & "," & DBString(txtShipNameParty) & "," & DBString(txtHICruiseRef) & "," & _
               "TO_DATE('" & Day(Now) & "/" & Month(Now) & "/" & Year(Now) & "','DD/MM/YYYY')," & _
               diffuseAtt & "," & txtStartMonth & ",NULL," & DBString(txtSeaState) & "," & DBNumber(SecchiDepth) & ")"

    OraDatabase.ExecuteSQL (SQLQuery)
    
    dataAdded = 1
End Sub


Private Function SecchiProcessingJobExists(ByVal MEIC_Number) As Boolean
    Dim SQLQuery As String
    
    SQLQuery = "Select * from meds_processing_job where meic_number = " & MEIC_Number & " and data_type = 'Secchi Disk Data' "
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    SecchiProcessingJobExists = False
    
    If Not Results.EOF Then
        SecchiProcessingJobExists = True
    End If
    
End Function


Private Sub AddAnotherJob_Click()
    Call MarineLifeSearch.InitialiseDataType(ProcessingJobDataType)
    
    Call AllowNewDataType
End Sub

Public Sub BulkSecchiImport(ByVal MeicNum As Integer)
    Dim inputFile As String
    Dim nRows As Integer
    Dim nFiles As Integer
    Dim dataAdded As Integer
    Dim SQLQuery As String
    On Error GoTo cmdRead_Err
    
    MEICNumber.Text = MeicNum
    
    'Select a file to open and open it
    H635Finder.CancelError = True
    H635Finder.ShowOpen
    
    inputFile = H635Finder.FileName
    
    'turn into the directory name
    inputDir = left(inputFile, Len(inputFile) - Len(H635Finder.FileTitle)) & "*.HDR"
    
    inputFile = Dir(inputDir)

    OraDatabase.BeginTrans
    While inputFile <> ""
        Open inputFile For Input As #1
        nFiles = nFiles + 1
        Call ProcessH635(dataAdded, SQLQuery)
    
        nRows = nRows + dataAdded
        
        Close #1
        
        inputFile = Dir
    Wend
    OraDatabase.CommitTrans
    'OraDatabase.RollbackTrans
    If nRows = 0 Then
        MsgBox "No data was added to the database whilst processing " & nFiles & " files"
    Else
        MsgBox nRows & " secchi data entries were added added to database whilst processing " & nFiles & " files"
        Call MarineLifeSearch.ResetButton_Click
        ' display the data set the data has been added to
        MarineLifeSearch.MEICNumberSearch.Text = MEICNumber.Text
        MarineLifeSearch.DataTypeSearch = ProcessingJobDataType.Text
        Call MarineLifeSearch.SearchButton_Click
        Unload Me
    End If
Exit Sub

cmdRead_Err:
If err.Number <> 32755 Then
    MsgBox "Error with input file:" & inputFile & "," & err.Number & " " & err.description & "SQL='" & SQLQuery & "'"
    Close #1
End If


End Sub

Private Sub BulkSecchiButton_Click()
    ' check that there is an entry in meds job number
    If Not SecchiProcessingJobExists(MEICNumber.Text) Then
        ' try the save
        Call SaveNewJob
        
        If Not SecchiProcessingJobExists(MEICNumber.Text) Then
            ' save must have failed so exit
            Exit Sub
        End If
    End If
    
    ' import the data
    
    Call BulkSecchiImport(MEICNumber.Text)
 
End Sub

Private Sub AddCruiseButton_Click()
    Dim SQLQuery As String
    Dim Results As Object
    
    If Cruise.Text <> "" Then
        SQLQuery = "select count(*) row_count from cruise_layer where cruise_name = '" & Cruise.Text & "'"
        
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Results("row_count") = 0 Then
            OraDatabase.BeginTrans

            SQLQuery = "select max(meds_cruise_number) + 1 as new_cruise_number from cruise_layer"
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
                  
            SQLQuery = "INSERT INTO Cruise_Layer ( meds_cruise_number, cruise_name, start_port, start_date, end_port, end_date, cruise_descriptor ) VALUES ( " & _
                        Results("new_cruise_number") & "," & DBString(Cruise.Text) & "," & _
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

Private Sub Command1_Click()
    Unload Me
End Sub



Private Sub InitialiseMeicNumber(ByRef box As ComboBox)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "Select distinct j.meic_number from job_tracking j, meds_job_type t where status NOT in ('CANCELLED','COMPLETED') " & _
                " and t.job_type_number = j.job_type_number " & _
                " and ( t.description like 'Marine%' or t.description like 'Secchi%' " & _
                " or t.description like 'Biolum%' or t.description like 'Misc%' ) order by meic_number desc"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            box.AddItem Results("meic_number")
        End If
        Results.MoveNext
    Wend
    
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
    
    SQLQuery = "Select cruise_name from cruise_layer order by cruise_name"
    
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
    
    SQLQuery = "Select distinct originator from meds_processing_job where data_type <> 'Observed Physical Data'"
    
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

Private Sub Cruise_Click()
    If Cruise.Text <> "" Then
        Dim SQLQuery As String
        Dim Results As Object

        SQLQuery = "select start_port, end_port, cruise_descriptor, " & _
                 " TO_CHAR(start_date, 'DD' ) day_start, TO_CHAR(start_date, 'MM') month_start, TO_CHAR(start_date, 'YYYY') year_start," & _
                 " TO_CHAR(end_date, 'DD' ) day_end, TO_CHAR(end_date, 'MM') month_end, TO_CHAR(end_date, 'YYYY') year_end " & _
                " from cruise_layer where cruise_name = '" & Cruise.Text & "'"
            
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

Private Sub Form_Load()
    Call InitialiseMeicNumber(MEICNumber)
    Call MarineLifeSearch.InitialiseDataType(ProcessingJobDataType)
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
    
    Call SetDefaults
    Call ToggleControlStates(False)
    Call ToggleEnableStates(False)
    BulkSecchiButton.Visible = False
    AddAnotherJob.Visible = False

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
    
    ' ProcessingJobDataType.Text = ""

    Descriptor.Text = Temp
    DatumTransform.Text = Temp
    Protection.Text = Temp
    Comments.Text = ""
    Processor.Text = ""
    DataUseCode.Text = ""
    Ship.Text = ""
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
    Ship.Enabled = state
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
    Ship.Visible = state
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
    Label18.Visible = state
    Label19.Visible = state
    Label20.Visible = state
    Label21.Visible = state
    Label22.Visible = state
    Label23.Visible = state
    StartDate.Visible = state
    EndDate.Visible = state
    CruiseDescriptor.Visible = state
    StartPort.Visible = state
    EndPort.Visible = state
    Frame1.Visible = state
End Sub


Public Function SafeString(Results As Object, str As String) As String
    If IsNull(Results(str)) Then
        SafeString = ""
    Else
        SafeString = Results(str)
    End If
End Function

Public Sub AllowNewDataType()
    Dim SQLQuery As String
    Dim Results As Object
    
    ' can now set some of the fields based on values in the Job Tracking
    ' table for this MEICNumber
    
    Call SetDefaults
    Call ToggleEnableStates(True) ' set writable
    OuterFrame.Caption = "Add New Meds Processing Job"
    SaveButton.Caption = "Add New Job"
    SQLQuery = "select TO_CHAR(date_received, 'DD') day_received, " & _
                    "TO_CHAR(date_received, 'MM') month_received, " & _
                    "TO_CHAR(date_received, 'YYYY') year_received, " & _
                    "comments, classification, assigned " & _
                   "from job_tracking where meic_number = " & MEICNumber.Text
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Not Results.EOF Then
         If Results("day_received") <> "" Then
             DateOfReceipt.Day = "01"
             DateOfReceipt.Month = "01"
             DateOfReceipt.Year = Results("year_received")
             DateOfReceipt.Month = Results("month_received")
             DateOfReceipt.Day = Results("day_received")
             DateOfReceipt.Enabled = False
         End If
         If Results("Comments") <> "" Then
             Comments.Text = SafeString(Results, "Comments")
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
End Sub

Private Sub ProcessingJobDataType_Click()
    Dim SQLQuery As String
    Dim Results As Object

    If MEICNumber.Text <> "" And ProcessingJobDataType.Text <> "" Then

        Call ToggleControlStates(True)
    
        SQLQuery = "Select meds_cruise_number,caveat, local_datum, descriptor, ido, data_quality, datum_transformation, protection, " & _
                   " comments, processor, instrument_code, data_use_code, owner_authority_prefix, originator, t.data_type " & _
                   " from meds_processing_job j, mlo_data_type t where meic_number = " & MEICNumber.Text & _
                    " and j.data_type = t.processing_job_type and t.data_type = '" & ProcessingJobDataType.Text & "'"
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
                Ship.Text = ""
                Cruise.Text = ""
                StartPort.Text = ""
                EndPort.Text = ""
                Call JobTracking.InitialiseDatePicker(StartDate)
                Call JobTracking.InitialiseDatePicker(EndDate)
                CruiseDescriptor.Text = ""
            End If
            OwnerAuthorityPrefix.Text = SafeString(Results, "Owner_Authority_Prefix")
            Originator.Text = SafeString(Results, "Originator")
            ProcessingJobDataType.Text = Results("data_type")

            Call ToggleEnableStates(False) ' set read only
            OuterFrame.Caption = "Meds Processing Job already entered"
            SaveButton.Caption = "Use Existing Job"
        Else
            Call AllowNewDataType
        End If
        
        BulkSecchiButton.Visible = False
        If ProcessingJobDataType.Text = "SECCHI" Then
            ' only enable the bulk load secchi button if the meds processing job entry is present
            SQLQuery = "Select * from meds_processing_job where meic_number = " & MEICNumber.Text & " and data_type = 'Secchi Disk Data' "
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
            If Not Results.EOF Then
                BulkSecchiButton.Visible = True
            End If
        End If
    End If
    
    If ProcessingJobDataType.Text = "SECCHI" Then
        BulkSecchiButton.Visible = True
    Else
        BulkSecchiButton.Visible = False
    End If
End Sub


Public Sub MEICNumber_Click()
    Dim SQLQuery As String
    Dim Results As Object
    Dim DataTypeCount As Integer
    
    DataTypeCount = 0
    If MEICNumber.Text <> "" Then
        Call SetDefaults
        Call ToggleControlStates(False)
        AddAnotherJob.Visible = True
        AddAnotherJob.Enabled = True
        ProcessingJobDataType.Visible = True
        ProcessingJobDataType.Enabled = True
    
        SQLQuery = "Select distinct t.data_type from meds_processing_job j, mlo_data_type t where meic_number = " & MEICNumber.Text & _
                    " and j.data_type = t.processing_job_type "
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
        While Not Results.EOF
            If DataTypeCount = 0 Then
                ProcessingJobDataType.Clear
            End If
            ProcessingJobDataType.AddItem (Results("data_type"))

            DataTypeCount = DataTypeCount + 1
            
            Results.MoveNext

        Wend
        
        If DataTypeCount = 0 Then
            Call AllowNewDataType
        End If
    End If
End Sub

Private Sub StartMarineLifeEdit()
    Dim SQLQuery As String
    Dim Results  As Object
    Dim LongJobNo As Long
    Dim LongObsNo As Long
    Dim Data_Type As String
       
    LongObsNo = -1  ' this tells the edit form that this is a new entry
    
    If MEICNumber.Text <> "" And ProcessingJobDataType.Text <> "" Then
    
        SQLQuery = "SELECT j.job_number from meds_processing_job j, mlo_data_type t" & _
                    " where j.meic_number = " & MEICNumber.Text & _
                    " AND j.data_type = t.processing_job_type " & _
                    " AND t.data_type = '" & ProcessingJobDataType.Text & "'"
                    
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
            LongJobNo = Results("job_number")
        End If
        
        Call MarineLifeEdit.SetEditDetails(EDIT_MODE_NEW, MEICNumber.Text, LongJobNo, LongObsNo, ProcessingJobDataType.Text)

        MarineLifeEdit.Show
    Else
        MsgBox "Select a job number and data type to add data for"
    End If

    Unload Me
End Sub



Private Function SaveNewJob() As Boolean
    Dim SQLQuery As String
    Dim SQLKeyQuery As String
    Dim Results As Object
    Dim medsCruiseNumber As Integer
    Dim medsShipNumber As Integer
    Dim medsDataType As String
    Dim DUC As String
    
    SaveNewJob = False
    
    If MEICNumber.Text = "" Then
        MsgBox "You must select a MEIC Number before a new job can be entered"
        Exit Function
    End If
    
    If ProcessingJobDataType.Text = "" Then
        MsgBox "You must select a data type before a new job can be entered"
        Exit Function
    End If
    
    If ProcessingJobDataType.Text <> "" Then
        SQLQuery = "Select * from mlo_data_type where data_type = '" & ProcessingJobDataType.Text & "'"
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
            
        If Results.EOF Then
            MsgBox "Data Type must be set to a valid type : '" & ProcessingJobDataType.Text & "' is not valid"
            Exit Function
        Else
            medsDataType = Results("processing_job_type")
        End If
    End If
    
    On Error GoTo SaveButton_Error
    
    SQLQuery = "Select * from meds_processing_job where meic_number = " & MEICNumber.Text & _
                " AND data_type = '" & medsDataType & "'"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Results.EOF Then
        ' This is new data that must be entered
       
        If Protection.Text = "" Then
            MsgBox "You must select a Classification before a new job can be entered"
            Exit Function
        End If
        
        If Cruise.Text = "" Then
            MsgBox "You must select a Cruise before a new job can be entered"
            Exit Function
        End If
        
        If IsNull(DateOfReceipt) Then
            MsgBox "You must select a date of receipt before a new job can be entered"
            Exit Function
        End If
        
        DUC = DataUseCode.Text
        If IsNumeric(left(DUC, 1)) Then
            DUC = left(DUC, 1)
        End If
       
        OraDatabase.BeginTrans
    
        SQLQuery = "INSERT INTO meds_processing_job ( archive_date, datum_transformation, local_datum, job_number, meic_number, data_type," & _
                "date_of_receipt, protection, caveat, descriptor, ido, data_quality," & _
                "owner_authority_prefix, comments, meds_cruise_number, processor, data_use_code, originator"
                
        SQLKeyQuery = "SELECT meds_cruise_number from cruise_layer where cruise_name = '" & Cruise.Text & "'"
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
        
        If Ship.Text <> "" Then
            SQLQuery = SQLQuery & ",meds_ship_number"
            SQLKeyQuery = "Select meds_ship_number from ship_details where vessel_name = '" & Ship.Text & "' " & _
                          " and meds_cruise_number = " & medsCruiseNumber
            Set Results = OraDatabase.CreateDynaset(SQLKeyQuery, 0&)
            If Not Results.EOF Then
                medsShipNumber = Results("meds_ship_number")
            Else
                MsgBox "You must select a valid ship number for the cruise layer"
                OraDatabase.Rollback
                Exit Function
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
                Replace(Comments.Text, "'", "''") & "'," & medsCruiseNumber & ",'" & Processor.Text & "','" & DUC & "','" & Originator.Text & "'"
        If Ship.Text <> "" Then
            SQLQuery = SQLQuery & ", " & medsShipNumber & ")"
        Else
            SQLQuery = SQLQuery & " )"
        End If
        
        OraDatabase.ExecuteSQL (SQLQuery)
        OraDatabase.CommitTrans

        SaveNewJob = True
    Else
        SaveNewJob = True
    End If
    
Exit Function
SaveButton_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing save :" & err.Number & " " & err.description
End If

End Function


Private Sub SaveButton_Click()

    If SaveNewJob Then
        Call StartMarineLifeEdit
    End If

End Sub


