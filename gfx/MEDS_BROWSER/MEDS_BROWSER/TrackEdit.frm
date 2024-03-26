VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form TrackEdit 
   Caption         =   "Edit Track"
   ClientHeight    =   5850
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12225
   LinkTopic       =   "Form1"
   ScaleHeight     =   5850
   ScaleWidth      =   12225
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox MonTypeCombo 
      Height          =   315
      ItemData        =   "TrackEdit.frx":0000
      Left            =   6240
      List            =   "TrackEdit.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   720
      Width           =   1335
   End
   Begin VB.ComboBox SeaStateCombo 
      Height          =   315
      ItemData        =   "TrackEdit.frx":001A
      Left            =   8880
      List            =   "TrackEdit.frx":003F
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   720
      Width           =   1335
   End
   Begin VB.ComboBox WindSpeedCombo 
      Height          =   315
      ItemData        =   "TrackEdit.frx":0063
      Left            =   10440
      List            =   "TrackEdit.frx":0091
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   720
      Width           =   1335
   End
   Begin VB.TextBox PeriodOfSonar 
      BeginProperty DataFormat 
         Type            =   5
         Format          =   "0%"
         HaveTrueFalseNull=   1
         TrueValue       =   "True"
         FalseValue      =   "False"
         NullValue       =   ""
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2057
         SubFormatType   =   7
      EndProperty
      Height          =   315
      Left            =   7680
      TabIndex        =   7
      Text            =   "0"
      Top             =   720
      Width           =   855
   End
   Begin VB.ComboBox SndSrcCombo 
      Height          =   315
      ItemData        =   "TrackEdit.frx":00C1
      Left            =   3420
      List            =   "TrackEdit.frx":00C3
      TabIndex        =   5
      Top             =   960
      Width           =   2415
   End
   Begin VB.TextBox EditTrackNumber 
      Enabled         =   0   'False
      Height          =   285
      Left            =   360
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   600
      Width           =   1095
   End
   Begin VB.TextBox EditJobNumber 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1800
      TabIndex        =   2
      TabStop         =   0   'False
      Top             =   360
      Width           =   1095
   End
   Begin VB.TextBox EditMEICNumber 
      Enabled         =   0   'False
      Height          =   285
      Left            =   1800
      TabIndex        =   3
      TabStop         =   0   'False
      Top             =   960
      Width           =   1095
   End
   Begin VB.CommandButton AbortButton 
      Caption         =   "Exit - Aborting Changes"
      Height          =   495
      Left            =   9600
      TabIndex        =   39
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete Track"
      Height          =   495
      Left            =   4800
      TabIndex        =   38
      Top             =   4920
      Width           =   1935
   End
   Begin VB.CommandButton SaveButton 
      Caption         =   "Save Data"
      Height          =   495
      Left            =   600
      TabIndex        =   37
      Top             =   4920
      Width           =   1695
   End
   Begin VB.ComboBox ShipCombo 
      Height          =   315
      ItemData        =   "TrackEdit.frx":00C5
      Left            =   3420
      List            =   "TrackEdit.frx":00C7
      TabIndex        =   4
      Top             =   360
      Width           =   2415
   End
   Begin VB.Frame EndPointFrame 
      Caption         =   "End point"
      Height          =   1335
      Left            =   360
      TabIndex        =   46
      Top             =   3120
      Width           =   11505
      Begin VB.TextBox TrackOffsetE 
         Height          =   375
         Left            =   10320
         TabIndex        =   36
         Text            =   "0.0"
         Top             =   600
         Width           =   855
      End
      Begin VB.Frame EditDateRecordedEFrame 
         Caption         =   "Date/Time at at End"
         Height          =   735
         Left            =   6480
         TabIndex        =   57
         Top             =   360
         Width           =   3500
         Begin VB.CommandButton TimeEClear 
            Caption         =   "Clr"
            Height          =   375
            Left            =   3000
            TabIndex        =   35
            ToolTipText     =   "Clear Time"
            Top             =   240
            Width           =   350
         End
         Begin MSComCtl2.DTPicker EditTimeERecorded 
            Height          =   375
            Left            =   1560
            TabIndex        =   34
            Top             =   240
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   48824322
            CurrentDate     =   38513
         End
         Begin MSComCtl2.DTPicker EditDateERecorded 
            Height          =   375
            Left            =   120
            TabIndex        =   33
            Top             =   240
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   48824321
            CurrentDate     =   38513
         End
      End
      Begin VB.TextBox EditLongitudeEDeg 
         Height          =   285
         Left            =   1080
         TabIndex        =   28
         Top             =   840
         Width           =   735
      End
      Begin VB.TextBox EditLongitudeEMin 
         Height          =   285
         Left            =   1920
         TabIndex        =   29
         Top             =   840
         Width           =   735
      End
      Begin VB.ComboBox EditLongitudeEHemi 
         Height          =   315
         ItemData        =   "TrackEdit.frx":00C9
         Left            =   2760
         List            =   "TrackEdit.frx":00D3
         Style           =   2  'Dropdown List
         TabIndex        =   30
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox EditLongitudeE 
         Height          =   285
         Left            =   5160
         TabIndex        =   31
         Top             =   810
         Width           =   1095
      End
      Begin VB.TextBox EditLatitudeE 
         Height          =   285
         Left            =   5160
         TabIndex        =   27
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox EditLatitudeEDeg 
         Height          =   285
         Left            =   1080
         TabIndex        =   24
         Top             =   360
         Width           =   735
      End
      Begin VB.TextBox EditLatitudeEMin 
         Height          =   285
         Left            =   1920
         TabIndex        =   25
         Top             =   360
         Width           =   735
      End
      Begin VB.ComboBox EditLatitudeEHemi 
         Height          =   315
         ItemData        =   "TrackEdit.frx":00DD
         Left            =   2760
         List            =   "TrackEdit.frx":00E7
         Style           =   2  'Dropdown List
         TabIndex        =   26
         Top             =   360
         Width           =   615
      End
      Begin VB.CommandButton LocationModeEToggleButton 
         Caption         =   "MODE"
         Height          =   255
         Left            =   3480
         TabIndex        =   47
         TabStop         =   0   'False
         ToolTipText     =   "Switch between Decimal angles and DMS"
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         Caption         =   "Offset range (nm)"
         Height          =   375
         Left            =   10200
         TabIndex        =   59
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label DegreeLongitudeELabel 
         Caption         =   "Longitude"
         Height          =   255
         Left            =   120
         TabIndex        =   55
         Top             =   840
         Width           =   855
      End
      Begin VB.Label DegreeLatitudeELabel 
         Caption         =   "Latitude"
         Height          =   255
         Left            =   120
         TabIndex        =   54
         Top             =   360
         Width           =   735
      End
      Begin VB.Label DegreesELabel 
         Caption         =   "Degrees"
         Height          =   255
         Left            =   1080
         TabIndex        =   53
         Top             =   120
         Width           =   735
      End
      Begin VB.Label MinutesELabel 
         Caption         =   "Minutes"
         Height          =   255
         Left            =   1920
         TabIndex        =   52
         Top             =   120
         Width           =   735
      End
      Begin VB.Label HemiELabel 
         Caption         =   "Hemi"
         Height          =   255
         Left            =   2760
         TabIndex        =   51
         Top             =   120
         Width           =   615
      End
      Begin VB.Label DecimalELabel 
         Caption         =   "Decimal"
         Height          =   255
         Left            =   5160
         TabIndex        =   50
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label DecimalLatitudeELabel 
         Caption         =   "Latitude"
         Height          =   255
         Left            =   4320
         TabIndex        =   49
         Top             =   360
         Width           =   735
      End
      Begin VB.Label DecimalLongitudeELabel 
         Caption         =   "Longitude"
         Height          =   255
         Left            =   4320
         TabIndex        =   48
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame StartPointFrame 
      Caption         =   "Start Point"
      Height          =   1335
      Left            =   360
      TabIndex        =   0
      Top             =   1440
      Width           =   11505
      Begin VB.TextBox TrackOffsetS 
         Height          =   375
         Left            =   10320
         TabIndex        =   23
         Text            =   "0.0"
         Top             =   600
         Width           =   855
      End
      Begin VB.ComboBox EditLatitudeSHemi 
         Height          =   315
         ItemData        =   "TrackEdit.frx":00F1
         Left            =   2760
         List            =   "TrackEdit.frx":00FB
         Style           =   2  'Dropdown List
         TabIndex        =   12
         Top             =   360
         Width           =   615
      End
      Begin VB.Frame DateRecordedSFrame 
         Caption         =   "Date/Time at Start"
         Height          =   735
         Left            =   6480
         TabIndex        =   56
         Top             =   360
         Width           =   3500
         Begin VB.CommandButton TimeSClear 
            Caption         =   "Clr"
            Height          =   375
            Left            =   3000
            TabIndex        =   22
            ToolTipText     =   "Clear Time"
            Top             =   240
            Width           =   350
         End
         Begin MSComCtl2.DTPicker EditDateSRecorded 
            Height          =   375
            Left            =   120
            TabIndex        =   20
            Top             =   240
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   48824321
            CurrentDate     =   38513
         End
         Begin MSComCtl2.DTPicker EditTimeSRecorded 
            Height          =   375
            Left            =   1560
            TabIndex        =   21
            Top             =   240
            Width           =   1335
            _ExtentX        =   2355
            _ExtentY        =   661
            _Version        =   393216
            Format          =   48824322
            CurrentDate     =   38513
         End
      End
      Begin VB.TextBox EditLongitudeSDeg 
         Height          =   285
         Left            =   1080
         TabIndex        =   14
         Top             =   840
         Width           =   735
      End
      Begin VB.TextBox EditLongitudeSMin 
         Height          =   285
         Left            =   1920
         TabIndex        =   15
         Top             =   840
         Width           =   735
      End
      Begin VB.ComboBox EditLongitudeSHemi 
         Height          =   315
         ItemData        =   "TrackEdit.frx":0105
         Left            =   2760
         List            =   "TrackEdit.frx":010F
         Style           =   2  'Dropdown List
         TabIndex        =   16
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox EditLongitudeS 
         Height          =   285
         Left            =   5160
         TabIndex        =   18
         Top             =   810
         Width           =   1095
      End
      Begin VB.TextBox EditLatitudeS 
         Height          =   285
         Left            =   5160
         TabIndex        =   13
         Top             =   360
         Width           =   1095
      End
      Begin VB.TextBox EditLatitudeSDeg 
         Height          =   285
         Left            =   1080
         TabIndex        =   10
         Top             =   360
         Width           =   735
      End
      Begin VB.TextBox EditLatitudeSMin 
         Height          =   285
         Left            =   1920
         TabIndex        =   11
         Top             =   360
         Width           =   735
      End
      Begin VB.CommandButton LocationModeSToggleButton 
         Caption         =   "MODE"
         Height          =   255
         Left            =   3480
         TabIndex        =   17
         TabStop         =   0   'False
         ToolTipText     =   "Switch between Decimal angles and DMS"
         Top             =   600
         Width           =   735
      End
      Begin VB.Label RangeSLabel 
         Alignment       =   2  'Center
         Caption         =   "Offset range (nm)"
         Height          =   375
         Left            =   10200
         TabIndex        =   58
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label DegreeLongitudeSLabel 
         Caption         =   "Longitude"
         Height          =   255
         Left            =   120
         TabIndex        =   45
         Top             =   840
         Width           =   855
      End
      Begin VB.Label DegreeLatitudeSLabel 
         Caption         =   "Latitude"
         Height          =   255
         Left            =   120
         TabIndex        =   44
         Top             =   360
         Width           =   735
      End
      Begin VB.Label DegreesSLabel 
         Caption         =   "Degrees"
         Height          =   255
         Left            =   1080
         TabIndex        =   43
         Top             =   120
         Width           =   735
      End
      Begin VB.Label MinutesSLabel 
         Caption         =   "Minutes"
         Height          =   255
         Left            =   1920
         TabIndex        =   42
         Top             =   120
         Width           =   735
      End
      Begin VB.Label HemiSLabel 
         Caption         =   "Hemi"
         Height          =   255
         Left            =   2760
         TabIndex        =   41
         Top             =   120
         Width           =   615
      End
      Begin VB.Label DecimalSLabel 
         Caption         =   "Decimal"
         Height          =   255
         Left            =   5160
         TabIndex        =   40
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label DecimalLatitudeSLabel 
         Caption         =   "Latitude"
         Height          =   255
         Left            =   4320
         TabIndex        =   32
         Top             =   360
         Width           =   735
      End
      Begin VB.Label DecimalLongitudeSLabel 
         Caption         =   "Longitude"
         Height          =   255
         Left            =   4320
         TabIndex        =   19
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Label WindLabel 
      Caption         =   "Wind Speed"
      Height          =   255
      Left            =   10440
      TabIndex        =   69
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label SeaStateLabel 
      Caption         =   "Sea State"
      Height          =   255
      Left            =   9000
      TabIndex        =   68
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label MonTypeLab 
      Caption         =   "Monitoring Type"
      Height          =   255
      Left            =   6240
      TabIndex        =   67
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label PeriodLabel2 
      Caption         =   "%"
      Height          =   255
      Left            =   8640
      TabIndex        =   66
      Top             =   750
      Width           =   255
   End
   Begin VB.Label PeriodLabel 
      Caption         =   " Period of Sonar"
      Height          =   255
      Left            =   7680
      TabIndex        =   65
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label SoundSrcLabel 
      Alignment       =   2  'Center
      Caption         =   "Sound Source"
      Height          =   255
      Left            =   4020
      TabIndex        =   64
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label TrackumberLabel 
      Caption         =   "Track Number"
      Height          =   255
      Left            =   360
      TabIndex        =   63
      Top             =   360
      Width           =   1095
   End
   Begin VB.Label JobNumLabel 
      Caption         =   "Job Number"
      Height          =   255
      Left            =   1800
      TabIndex        =   62
      Top             =   120
      Width           =   975
   End
   Begin VB.Label MeicNumLabel 
      Caption         =   "MEIC Number"
      Height          =   255
      Left            =   1800
      TabIndex        =   61
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label ShipLabel 
      Alignment       =   2  'Center
      Caption         =   "Ship"
      Height          =   255
      Left            =   4080
      TabIndex        =   60
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "TrackEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private TrackEditMode As EditModeEnum
Private TrackDataType As String
Private TrackDataTypeAlias As String
Private TrackMEICNumber As Long
Private TrackJobNumber As Long
Private TrackTrackNumber As Long
Private OrigShip As String
Private OrigLatitudeS As Double
Private OrigLongitudeS As Double
Private OrigDateS As Date
Private OrigTimeS As Date
Private OrigOffsetS As Double
Private OrigLatitudeE As Double
Private OrigLongitudeE As Double
Private OrigDateE As Date
Private OrigTimeE As Date
Private OrigOffsetE As Double
Private OrigSndSrc As String
Private OrigMonType As String
Private OrigPeriodofSonar As Integer
Private OrigSeaState As String
Private OrigWindSpeed As String
Private LocationDecimalModeS As Boolean
Private LocationDecimalModeE As Boolean
Private CalledInternally As Boolean

Public Function SetEditDetails(ByVal EditingMode As EditModeEnum, _
                               ByVal MEICNumber As Long, _
                               ByVal JobNumber As Long, _
                               ByVal TrackNumber As Long, _
                               ByVal DataType As String, _
                               ByVal DataTypeAlias As String, _
                               ByVal StartLat As Double, _
                               ByVal StartLong As Double, _
                               ByVal EndLat As Double, _
                               ByVal EndLong As Double, _
                               ByVal StartDate As Date, _
                               ByVal StartTime As Date, _
                               ByVal EndDate As Date, _
                               ByVal EndTime As Date, _
                               ByVal StartOffset As Double, _
                               ByVal EndOffset As Double, _
                               ByVal Ship As String, _
                               ByVal SndSrc As String, _
                               ByVal MonType As String, _
                               ByVal PeriodOfSonar As Integer, _
                               ByVal SeaState As String, _
                               ByVal WindSpeed As String) As Boolean
                           
    TrackEditMode = EditingMode
    TrackDataType = DataType
    TrackDataTypeAlias = DataTypeAlias
    
    ' fill in informative info
    TrackMEICNumber = MEICNumber
    TrackJobNumber = JobNumber
    TrackTrackNumber = TrackNumber
    
    ' the existing data
    OrigShip = Ship
    OrigLatitudeS = StartLat
    OrigLongitudeS = StartLong
    OrigDateS = StartDate
    OrigTimeS = StartTime
    OrigOffsetS = StartOffset
    OrigLatitudeE = EndLat
    OrigLongitudeE = EndLong
    OrigDateE = EndDate
    OrigTimeE = EndTime
    OrigOffsetE = EndOffset
    OrigSndSrc = SndSrc
    OrigMonType = MonType
    OrigPeriodofSonar = PeriodOfSonar
    OrigSeaState = SeaState
    OrigWindSpeed = WindSpeed
    SetEditDetails = True
    
End Function



Private Sub AbortButton_Click()
    If TrackEditMode = EDIT_MODE_EDIT Then
        DataEdit.AlteredData (False)
    ElseIf TrackEditMode = EDIT_MODE_NEW Then
        DataSearch.AlteredData (False)
    End If
    
    Unload Me
End Sub

Private Sub DeleteButton_Click()
       
    Dim SQLStr As String
    Dim Results As Object
    
    ' Display message.
    If MsgBox("Do you want to delete Track number " & _
              TrackTrackNumber & " ?", _
              vbYesNo + vbQuestion + vbDefaultButton2, _
              "Delete Data") = vbNo Then
        Exit Sub
    End If
   
    OraDatabase.BeginTrans
    On Error GoTo DeleteTrack_Error
    
    ' remove references to this track in the observations
    SQLStr = " UPDATE  " & TrackDataType & "_Observation" & _
             " SET MEDS_TRACK_NUMBER = NULL" & _
             " WHERE meds_track_number = " & TrackTrackNumber & _
             " AND meds_job_number = " & TrackJobNumber
           
    OraDatabase.ExecuteSQL (SQLStr)
    
    ' remove the track
    SQLStr = "DELETE FROM " & TrackDataType & "_TRACK " & _
             "WHERE meds_track_number = " & TrackTrackNumber & _
             " AND meds_job_number = " & TrackJobNumber
           
    OraDatabase.ExecuteSQL (SQLStr)
    
    ' and the envelope
    SQLStr = "DELETE FROM " & TrackDataType & "_ENVELOPE " & _
             "WHERE meds_track_number = " & TrackTrackNumber & _
             " AND meds_job_number = " & TrackJobNumber
            
    OraDatabase.ExecuteSQL (SQLStr)
            
    OraDatabase.CommitTrans

    If TrackEditMode = EDIT_MODE_EDIT Then
        DataEdit.AlteredData (True)
    ElseIf TrackEditMode = EDIT_MODE_NEW Then
        DataSearch.AlteredData (True)
    End If
    
    Unload Me
Exit Sub
 
DeleteTrack_Error:
    OraDatabase.Rollback
    If err.Number <> 32755 Then
        MsgBox "Error while deleting track :" & vbNewLine & _
               "Executing :" & vbNewLine & _
               SQLStr & vbNewLine & _
               err.Number & " " & err.description
    End If
    
End Sub

Private Sub EditLatitudeE_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLat(EditLatitudeE)
    
End Sub


Private Sub EditLatitudeEDeg_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLatitude(EditLatitudeEDeg, EditLatitudeEMin)
    
End Sub

Private Sub EditLatitudeEMin_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLatitude(EditLatitudeEDeg, EditLatitudeEMin)

End Sub

Private Sub EditLatitudeS_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLat(EditLatitudeS)
 
End Sub

Private Sub EditLatitudeSDeg_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLatitude(EditLatitudeSDeg, EditLatitudeSMin)
    
End Sub

Private Sub ValidateLat(Deg As Textbox)

    If Deg.Text = "" Or Deg.Text = "." Or _
       Deg.Text = "-" Or Deg.Text = "+" Then
         Exit Sub
    ElseIf Not IsNumeric(Deg.Text) Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf Deg.Text > 90 Then
        Beep
        CalledInternally = True
        Deg.Text = 90
     ElseIf Deg.Text < -90 Then
        Beep
        CalledInternally = True
        Deg.Text = -90
   End If
  
End Sub

Private Sub ValidateLong(Deg As Textbox)

    If Deg.Text = "" Or Deg.Text = "." Or _
       Deg.Text = "-" Or Deg.Text = "+" Then
         Exit Sub
    ElseIf Not IsNumeric(Deg.Text) Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf Deg.Text > 180 Then
        Beep
        CalledInternally = True
        Deg.Text = 180
      ElseIf Deg.Text < -180 Then
        Beep
        CalledInternally = True
        Deg.Text = -180
    End If
  
End Sub

Private Sub ValidateLatitude(Deg As Textbox, Min As Textbox)

    If Deg.Text = "" Then
        Exit Sub
    ElseIf Not IsNumeric(Deg.Text) Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf InStr(Deg.Text, ".") > 0 Or InStr(Deg.Text, "-") > 0 Or _
           InStr(Deg.Text, "+") Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf Deg.Text > 90 Then
        Beep
        CalledInternally = True
        Deg.Text = 90
        CalledInternally = True
        Min.Text = "0.0"
    ElseIf Min.Text = "" Then
        Exit Sub
    ElseIf Not IsNumeric(Min.Text) Or _
           InStr(Min.Text, "-") > 0 Or InStr(Min.Text, "+") > 0 Then
        Beep
        CalledInternally = True
        Min.Text = "0.0"
    ElseIf (Min.Text >= 60) Or ((Deg.Text = 90) And (Min.Text > 0)) Then
          Beep
        CalledInternally = True
        Min.Text = "0.0"
    End If
End Sub

Private Sub ValidateLongitude(Deg As Textbox, Min As Textbox)

    If Deg.Text = "" Then
        Exit Sub
    ElseIf Not IsNumeric(Deg.Text) Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf InStr(Deg.Text, ".") > 0 Or InStr(Deg.Text, "-") > 0 Or _
           InStr(Deg.Text, "+") Then
        Beep
        CalledInternally = True
        Deg.Text = ""
    ElseIf Deg.Text > 180 Then
        Beep
        CalledInternally = True
        Deg.Text = 180
        CalledInternally = True
        Min.Text = 0#
    ElseIf Min.Text = "" Then
        Exit Sub
    ElseIf (Not IsNumeric(Min.Text) And Min.Text <> "") Or _
           InStr(Min.Text, "-") > 0 Or InStr(Min.Text, "+") > 0 Then
        Beep
        CalledInternally = True
        Min.Text = 0#
    ElseIf (Min.Text >= 60) Or ((Deg.Text = 180) And (Min.Text > 0)) Then
        Beep
        CalledInternally = True
        Min.Text = "0.0"
    End If
    
End Sub

Private Sub EditLatitudeSMin_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLatitude(EditLatitudeSDeg, EditLatitudeSMin)

End Sub

Private Sub EditLongitudeE_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLong(EditLongitudeE)
 
End Sub

Private Sub EditLongitudeEDeg_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLongitude(EditLongitudeEDeg, EditLongitudeEMin)

End Sub

Private Sub EditLongitudeEMin_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLongitude(EditLongitudeEDeg, EditLongitudeEMin)

End Sub

Private Sub EditLongitudeS_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLong(EditLongitudeS)

End Sub

Private Sub EditLongitudeSDeg_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLongitude(EditLongitudeSDeg, EditLongitudeSMin)

End Sub

Private Sub EditLongitudeSMin_Change()
    If (CalledInternally) Then
        CalledInternally = False
        Exit Sub
    End If
    
    Call ValidateLongitude(EditLongitudeSDeg, EditLongitudeSMin)

End Sub

Private Sub SelectItemData(ctl As Control, Id As String)
Dim nCnt As Long

    If TypeName(ctl) = "ComboBox" Or TypeName(ctl) = _
        "ListBox" Then
        For nCnt = 0 To ctl.ListCount - 1
            If ctl.List(nCnt) = Id Then
                ctl.ListIndex = nCnt
                Exit For
            End If
        Next
    End If
End Sub

Private Sub Form_Load()

    TrackEdit.Caption = "Edit a " & TrackDataTypeAlias & " Track"
    EditJobNumber = TrackJobNumber
    EditMEICNumber = TrackMEICNumber
    If TrackTrackNumber >= 0 Then
        EditTrackNumber = TrackTrackNumber
    Else
        EditTrackNumber.Text = ""
    End If
        
    Call InitialiseShipCombo(OrigShip)
    
    Call InitialiseSoundSourceCombo(OrigShip)
    
    ' default date and time. The date is set to 1st Jan of the
    ' current year; then any other date can overwrite this
    
    If TrackTrackNumber < 0 Then
        EditDateSRecorded = "1/1/" & Year(Now)
        EditTimeSRecorded = "00:00:00"
        
        EditDateERecorded = "1/1/" & Year(Now)
        EditTimeERecorded = "00:00:00"
        
        ' Start and end positions
        EditLatitudeS = ""
        EditLongitudeS = ""
       
        EditLatitudeE = ""
        EditLongitudeE = ""
    Else
        EditDateSRecorded = OrigDateS
        EditTimeSRecorded = OrigTimeS
        
        EditDateERecorded = OrigDateE
        EditTimeERecorded = OrigTimeE
        
        ' Start and end positions
        EditLatitudeS = OrigLatitudeS
        EditLongitudeS = OrigLongitudeS
       
        EditLatitudeE = OrigLatitudeE
        EditLongitudeE = OrigLongitudeE
     End If
   
    LocationDecimalModeS = True
    Call LocationModeSToggleButton_Click
       
    LocationDecimalModeE = True
    Call LocationModeEToggleButton_Click
    
    ' Offset values
    TrackOffsetS = OrigOffsetS
    TrackOffsetE = OrigOffsetE
    
    ' cannot delete track if there is not one there to delete
    DeleteButton.Visible = TrackTrackNumber > 0
    
    SndSrcCombo.Text = OrigSndSrc
    PeriodOfSonar = OrigPeriodofSonar

    MonTypeCombo.ListIndex = 0
    Call SelectItemData(MonTypeCombo, OrigMonType)
    
    SeaStateCombo.ListIndex = 0
    Call SelectItemData(SeaStateCombo, OrigSeaState)
    
    WindSpeedCombo.ListIndex = 0
    Call SelectItemData(WindSpeedCombo, OrigWindSpeed)
    
    CalledInternally = False
    
End Sub

Private Sub InitialiseShipCombo(CurrentShip As String)

    Dim SQLQuery As String
    Dim Results As Object
    Dim Count As Long
    
    ' add the empty string, so that the box can be cleared
    ShipCombo.AddItem ""
       
    ' silently ignore oracle error (for example if there is no 'ship' column
    On Error GoTo ORACLE_ERROR
 
    SQLQuery = "SELECT distinct ship from " & TrackDataType & "_data " & _
               "UNION " & _
               "SELECT distinct ship from " & TrackDataType & "_track " & _
               "order by ship"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
      
    While Not Results.EOF
        If Results("ship") <> "" Then
            ShipCombo.AddItem Results("ship")
        End If
        Results.MoveNext
    Wend
    
    ' check for null values
    SQLQuery = "Select count(1) from " & TrackDataType & "_data " & _
               "where ship is NULL "
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    Count = Results("count(1)")
    
    SQLQuery = "Select count(1) from " & TrackDataType & "_track " & _
               "where ship is NULL "
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    If (Results("count(1)") + Count) > 0 Then
        ShipCombo.AddItem ("NULL")
    End If
    
ORACLE_ERROR:
    If err.Number <> 32755 And err.Number <> 0 Then
        MsgBox "Error while initialising 'ShipCombo' :" & err.Number & " " & err.description
    End If

    ShipCombo.Text = CurrentShip
End Sub

Private Sub InitialiseSoundSourceCombo(CurrentSoundSource As String)

    Dim SQLQuery As String
    Dim Results As Object
    Dim Count As Long
    
    ' add the empty string, so that the box can be cleared
    SndSrcCombo.AddItem ""
       
    ' silently ignore oracle error (for example if there is no 'SoundSource' column
    On Error GoTo ISS_ORACLE_ERROR
 
    SQLQuery = "SELECT distinct Sound_Source from " & TrackDataType & "_track "
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
      
    While Not Results.EOF
        If Results("Sound_Source") <> "" Then
            SndSrcCombo.AddItem Results("Sound_Source")
        End If
        Results.MoveNext
    Wend
       
    SndSrcCombo.Text = CurrentSoundSource
    
    Exit Sub
       
ISS_ORACLE_ERROR:
    If err.Number <> 32755 And err.Number <> 0 Then
        MsgBox "Error while initialising 'SoundSourceCombo' :" & err.Number & " " & err.description
    End If

    SndSrcCombo.Text = CurrentSoundSource
End Sub

Private Sub SetDecimalMode(DecimalMode As Boolean, Start As Boolean)
    If Start Then
        DecimalSLabel.Visible = DecimalMode
        DecimalLatitudeSLabel.Visible = DecimalMode
        DecimalLongitudeSLabel.Visible = DecimalMode
        DegreesSLabel.Visible = DecimalMode
        EditLatitudeS.Visible = DecimalMode
        EditLongitudeS.Visible = DecimalMode
    
        DegreeLatitudeSLabel.Visible = Not DecimalMode
        DegreeLongitudeSLabel.Visible = Not DecimalMode
        DegreesSLabel.Visible = Not DecimalMode
        MinutesSLabel.Visible = Not DecimalMode
        HemiSLabel.Visible = Not DecimalMode
        EditLatitudeSDeg.Visible = Not DecimalMode
        EditLatitudeSMin.Visible = Not DecimalMode
        EditLatitudeSHemi.Visible = Not DecimalMode
        EditLongitudeSDeg.Visible = Not DecimalMode
        EditLongitudeSMin.Visible = Not DecimalMode
        EditLongitudeSHemi.Visible = Not DecimalMode
    Else
        DecimalELabel.Visible = DecimalMode
        DecimalLatitudeELabel.Visible = DecimalMode
        DecimalLongitudeELabel.Visible = DecimalMode
        DegreesELabel.Visible = DecimalMode
        EditLatitudeE.Visible = DecimalMode
        EditLongitudeE.Visible = DecimalMode
    
        DegreeLatitudeELabel.Visible = Not DecimalMode
        DegreeLongitudeELabel.Visible = Not DecimalMode
        DegreesELabel.Visible = Not DecimalMode
        MinutesELabel.Visible = Not DecimalMode
        HemiELabel.Visible = Not DecimalMode
        EditLatitudeEDeg.Visible = Not DecimalMode
        EditLatitudeEMin.Visible = Not DecimalMode
        EditLatitudeEHemi.Visible = Not DecimalMode
        EditLongitudeEDeg.Visible = Not DecimalMode
        EditLongitudeEMin.Visible = Not DecimalMode
        EditLongitudeEHemi.Visible = Not DecimalMode
    End If
    
End Sub

Private Sub LocationModeEToggleButton_Click()

    If LocationDecimalModeE Then
        ' set up buttons for degrees, minutes, hemi mode
        If EditLatitudeE.Text = "" Or EditLongitudeE.Text = "" Then
            EditLatitudeEDeg.Text = ""
            EditLatitudeEMin.Text = ""
            EditLongitudeEDeg.Text = ""
            EditLongitudeEMin.Text = ""
        Else
            Call DataEdit.CalculateLatDegMinHemi(EditLatitudeE.Text, EditLatitudeEDeg, EditLatitudeEMin, EditLatitudeEHemi)
            Call DataEdit.CalculateLongDegMinHemi(EditLongitudeE.Text, EditLongitudeEDeg, EditLongitudeEMin, EditLongitudeEHemi)
        End If
    Else
        ' set up buttons for decicmal mode
        If EditLatitudeEDeg.Text = "" Or EditLongitudeEDeg.Text = "" Or _
               EditLatitudeEMin.Text = "" Or EditLongitudeEMin.Text = "" Or _
               EditLatitudeEHemi.Text = "" Or EditLongitudeEHemi.Text = "" Then
            EditLatitudeE.Text = ""
            EditLongitudeE.Text = ""
        Else
            Call DataEdit.CalculateLatitude(EditLatitudeE, EditLatitudeEDeg.Text, EditLatitudeEMin.Text, EditLatitudeEHemi.Text)
            Call DataEdit.CalculateLongitude(EditLongitudeE, EditLongitudeEDeg.Text, EditLongitudeEMin.Text, EditLongitudeEHemi.Text)
        End If
    End If

    LocationDecimalModeE = Not LocationDecimalModeE
    Call SetDecimalMode(LocationDecimalModeE, False)
End Sub

Private Sub LocationModeSToggleButton_Click()
    If LocationDecimalModeS Then
        ' set up buttons for degrees, minutes, hemi mode
        If EditLatitudeS.Text = "" Or EditLongitudeS.Text = "" Then
            EditLatitudeSDeg.Text = ""
            EditLatitudeSMin.Text = ""
            EditLongitudeSDeg.Text = ""
            EditLongitudeSMin.Text = ""
        Else
            Call DataEdit.CalculateLatDegMinHemi(EditLatitudeS.Text, EditLatitudeSDeg, EditLatitudeSMin, EditLatitudeSHemi)
            Call DataEdit.CalculateLongDegMinHemi(EditLongitudeS.Text, EditLongitudeSDeg, EditLongitudeSMin, EditLongitudeSHemi)
        End If
    Else
        ' set up buttons for decicmal mode
        If EditLatitudeSDeg.Text = "" Or EditLongitudeSDeg.Text = "" Or _
               EditLatitudeSMin.Text = "" Or EditLongitudeSMin.Text = "" Or _
               EditLatitudeSHemi.Text = "" Or EditLongitudeSHemi.Text = "" Then
            EditLatitudeS.Text = ""
            EditLongitudeS.Text = ""
        Else
            Call DataEdit.CalculateLatitude(EditLatitudeS, EditLatitudeSDeg.Text, EditLatitudeSMin.Text, EditLatitudeSHemi.Text)
            Call DataEdit.CalculateLongitude(EditLongitudeS, EditLongitudeSDeg.Text, EditLongitudeSMin.Text, EditLongitudeSHemi.Text)
        End If
    End If

    LocationDecimalModeS = Not LocationDecimalModeS
    Call SetDecimalMode(LocationDecimalModeS, True)
End Sub


Private Sub PeriodOfSonar_Change()
    Dim val As Integer
    
    ' I don't seem to be able to catch this in the KeyPress function!!
    If InStr(PeriodOfSonar.Text, ".") > 0 Then
        PeriodOfSonar.Text = Replace(PeriodOfSonar.Text, ".", "")
        PeriodOfSonar.SelStart = Len(PeriodOfSonar.Text)
    End If
        
    If PeriodOfSonar.Text <> "" Then
        val = PeriodOfSonar.Text
        If val > 100 Then
            PeriodOfSonar.Text = "100"
            PeriodOfSonar.SelStart = Len(PeriodOfSonar.Text)
        End If
    End If
End Sub

Private Sub PeriodOfSonar_KeyPress(KeyAscii As Integer)
    If Not (KeyAscii = vbKeyBack Or _
            KeyAscii = vbKeyDelete Or _
            KeyAscii = vbKeySpace Or _
            (KeyAscii >= Asc("0") And KeyAscii <= Asc("9"))) Then
        KeyAscii = 0
        Beep
    End If
End Sub

Private Sub SaveButton_Click()
    
    On Error GoTo SaveButton_Error

    ' Check that the observation has 2 complete positions. This is mandatory
    If Not validLocation(True) Then
        Exit Sub
    End If
    
    If Not validLocation(False) Then
        Exit Sub
    End If
   
    ' get the end points of the track as floating point angles
    
    If Not LocationDecimalModeS Then
        Call DataEdit.CalculateLatitude(EditLatitudeS, EditLatitudeSDeg.Text, EditLatitudeSMin.Text, EditLatitudeSHemi.Text)
        Call DataEdit.CalculateLongitude(EditLongitudeS, EditLongitudeSDeg.Text, EditLongitudeSMin.Text, EditLongitudeSHemi.Text)
    End If
    
    If Not LocationDecimalModeE Then
        Call DataEdit.CalculateLatitude(EditLatitudeE, EditLatitudeEDeg.Text, EditLatitudeEMin.Text, EditLatitudeEHemi.Text)
        Call DataEdit.CalculateLongitude(EditLongitudeE, EditLongitudeEDeg.Text, EditLongitudeEMin.Text, EditLongitudeEHemi.Text)
    End If

    ' ensure that all the data is valid
    If Not validateTrack() Then
        Exit Sub
    End If

    ' Do the Update or Insert
    If TrackEditMode = EDIT_MODE_NEW Then
        Call InsertData
    ElseIf TrackEditMode = EDIT_MODE_EDIT Then
        Call UpdateData
    End If
    
    ' Tell the calling frame that things have altered
    If TrackEditMode = EDIT_MODE_EDIT Then
        DataEdit.AlteredData (True)
    ElseIf TrackEditMode = EDIT_MODE_NEW Then
        DataSearch.AlteredData (True)
    End If
    
    ' Finished
    Unload Me
 Exit Sub
 
SaveButton_Error:
    If err.Number <> 32755 Then
        MsgBox "Error while processing save :" & err.Number & " " & err.description
    End If
        
End Sub

Private Sub TimeEClear_Click()
    EditTimeERecorded = "00:00:00"
End Sub

Private Sub TimeSClear_Click()
    EditTimeSRecorded = "00:00:00"
End Sub

Private Function validLocation(Start As Boolean) As Boolean
    ' assume failure
    validLocation = False
    
    ' do validation
    If Start Then
        If LocationDecimalModeS = True Then
            If EditLongitudeS = "" Then
                MsgBox "A Longitude must be specified for Start of Track"
                Exit Function
            End If
            
            If EditLatitudeS = "" Then
                MsgBox "A Latitude must be specified for Start of Track"
                Exit Function
            End If
        Else
            If EditLatitudeSDeg.Text = "" Or EditLongitudeSDeg.Text = "" Or _
                EditLatitudeSMin.Text = "" Or EditLongitudeSMin.Text = "" Or _
                EditLatitudeSHemi.Text = "" Or EditLongitudeSHemi.Text = "" Then
                    MsgBox "All latitude and longitude fields must be specified for Start of Track"
                    Exit Function
            End If
            Call DataEdit.CalculateLatitude(EditLatitudeS, EditLatitudeSDeg.Text, EditLatitudeSMin.Text, EditLatitudeSHemi.Text)
            Call DataEdit.CalculateLongitude(EditLongitudeS, EditLongitudeSDeg.Text, EditLongitudeSMin.Text, EditLongitudeSHemi.Text)
        End If
    Else
        If LocationDecimalModeE = True Then
            If EditLongitudeE = "" Then
                MsgBox "A Longitude must be specified for End of Track"
                Exit Function
            End If
            
            If EditLatitudeE = "" Then
                MsgBox "A Latitude must be specified for End of Track"
                Exit Function
            End If
        Else
            If EditLatitudeEDeg.Text = "" Or EditLongitudeEDeg.Text = "" Or _
                EditLatitudeEMin.Text = "" Or EditLongitudeEMin.Text = "" Or _
                EditLatitudeEHemi.Text = "" Or EditLongitudeEHemi.Text = "" Then
                    MsgBox "All latitude and longitude fields must be specified for End of Track"
                    Exit Function
            End If
            Call DataEdit.CalculateLatitude(EditLatitudeE, EditLatitudeEDeg.Text, EditLatitudeEMin.Text, EditLatitudeEHemi.Text)
            Call DataEdit.CalculateLongitude(EditLongitudeE, EditLongitudeEDeg.Text, EditLongitudeEMin.Text, EditLongitudeEHemi.Text)
        End If
    End If
 
    ' must have succeeded
    validLocation = True
End Function

Private Sub DeleteData()
    Dim Msg, Style, Title, Response
    Msg = "Do you want to delete this data ?"   ' Define message.
    Style = vbYesNo + vbQuestion + vbDefaultButton2   ' Define buttons.
    Title = "Delete Data"   ' Define title.
      ' Display message.
    Response = MsgBox(Msg, Style, Title)
    If Response = vbYes Then
        Dim SQLQuery As String
        Dim ii As Integer, nn As Integer
        
        OraDatabase.BeginTrans
        
 '       For ii = 0 To MaxDataSources - 1
 '           For nn = 1 To NumToEdit
 '               SQLQuery = " DELETE FROM  " & ColumnDataSource(ii) & _
 '                       " WHERE meds_job_number = " & EditMedsJobNos(nn) & _
 '                       " AND meds_observation_number = " & EditMedsObsNos(nn)
 '               OraDatabase.ExecuteSQL (SQLQuery)
 '           Next nn
 '       Next ii
        
        OraDatabase.CommitTrans
        If TrackEditMode = EDIT_MODE_EDIT Then
            DataEdit.AlteredData (True)
        ElseIf TrackEditMode = EDIT_MODE_NEW Then
            DataSearch.AlteredData (True)
        End If
        Unload Me
    Else
        If TrackEditMode = EDIT_MODE_EDIT Then
            DataEdit.AlteredData (False)
        ElseIf TrackEditMode = EDIT_MODE_NEW Then
            DataSearch.AlteredData (False)
        End If
         
        Unload Me
    End If


End Sub


Private Sub UpdateData()
       
    Dim SQLStr As String
    Dim Results As Object
    Dim DateAndTimeS As Date
    Dim DateAndTimeE As Date
    Dim GeomString As String
    Dim Srid As Long
    Dim ShipName As String
    Dim SeaState As String
    Dim WindSpeed As String

         
    On Error GoTo UpdateData_Error
          
    ' get the SRID for this table
    SQLStr = "Select SRID from USER_SDO_GEOM_METADATA " & _
             "Where TABLE_NAME = '" & TrackDataType & "_TRACK'"
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Srid = -1
    If Not Results.EOF Then
        Srid = Results("SRID")
    End If
        
    Results.Close
    
    ' build a GeomString for a geometry
    GeomString = DataEdit.BuildGeomString(Srid, _
                                 TrackDataType & "_OBSERVATION", _
                                 EditLongitudeS, EditLatitudeS, _
                                 EditLongitudeE, EditLatitudeE, _
                                 TrackJobNumber, TrackTrackNumber)
    
    If GeomString = "" Then
        Exit Sub
    End If
    
    OraDatabase.BeginTrans
       
    ' the combination date/times
    DateAndTimeS = EditDateSRecorded + EditTimeSRecorded
    DateAndTimeE = EditDateERecorded + EditTimeERecorded
    
    ' the ship name - we would rather this was not NULL, but if
    ' it is ...
    ShipName = Replace(ShipCombo, "'", "''")
    If ShipName = "NULL" Then
        ShipName = ""
    End If
    
    ' the SeaState and WindSpeed may be NULL
    SeaState = SeaStateCombo.Text
    If SeaState = "" Then
        SeaState = "NULL"
    End If
    
    WindSpeed = WindSpeedCombo.Text
    If WindSpeed = "" Then
        WindSpeed = "NULL"
    End If
    
    If PeriodOfSonar = "" Then
        PeriodOfSonar = "0"
    End If
    
    ' build the Update statement for the complete line
    ' for 'track' table
   
    SQLStr = "UPDATE " & TrackDataType & "_track SET " & _
             "LOCATION = " & GeomString & "," & _
             "LONGITUDE_START = " & EditLongitudeS & "," & _
             "LATITUDE_START  = " & EditLatitudeS & "," & _
             "DATE_RECORDED_START = TO_DATE('" & DateAndTimeS & "','DD/MM/YYYY HH24:MI:SS')," & _
             "OFFSET_START = " & TrackOffsetS & "," & _
             "LONGITUDE_END = " & EditLongitudeE & "," & _
             "LATITUDE_END  = " & EditLatitudeE & "," & _
             "DATE_RECORDED_END = TO_DATE('" & DateAndTimeE & "','DD/MM/YYYY HH24:MI:SS')," & _
             "OFFSET_END = " & TrackOffsetE & "," & _
             "SHIP = " & "'" & ShipName & "'," & _
             "MONITORING_TYPE = '" & MonTypeCombo & "', " & _
             "PERIOD_OF_SONAR = " & PeriodOfSonar & "," & _
             "SEA_STATE = " & SeaState & ", " & _
             "WIND_SPEED = " & WindSpeed & ", " & _
             "SOUND_SOURCE = '" & SndSrcCombo & "' " & _
             "WHERE MEDS_JOB_NUMBER = " & TrackJobNumber & " " & _
             "AND   MEDS_TRACK_NUMBER = " & TrackTrackNumber
             
    OraDatabase.ExecuteSQL (SQLStr)
            
    ' and refresh the envelope geometry
    
    If Not DataEdit.RefreshEnvelope(TrackDataType, TrackJobNumber, TrackTrackNumber) Then
        OraDatabase.Rollback
    Else
        OraDatabase.CommitTrans
    End If
Exit Sub
 
UpdateData_Error:
    OraDatabase.Rollback
    If err.Number <> 32755 Then
        MsgBox "Error while processing update :" & err.Number & " " & err.description
    End If

End Sub


Private Sub InsertData()
    Dim SQLStr As String
    Dim Results As Object
    Dim DateAndTimeS As Date
    Dim DateAndTimeE As Date
    Dim GeomString As String
    Dim Srid As Long
    Dim ShipName As String
    Dim SeaState As String
    Dim WindSpeed As String
    
    ' get the SRID for this table
    SQLStr = "Select SRID from USER_SDO_GEOM_METADATA " & _
             "Where TABLE_NAME = '" & TrackDataType & "_TRACK'"
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Srid = -1
    If Not Results.EOF Then
        Srid = Results("SRID")
    End If
        
    Results.Close
    
    OraDatabase.BeginTrans
    
    On Error GoTo InsertData_Error

    ' get a new MedsTrackNumber
                    
    SQLStr = "Select max(meds_track_number)+1 as new_track from " & _
             TrackDataType & "_track" & _
             " where meds_job_number = " & TrackJobNumber
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)
                
    If Results("new_track") <> "" Then
        TrackTrackNumber = Results("new_track")
    Else
        TrackTrackNumber = 1
    End If
    Results.Close
    
    ' the combination date/times
    DateAndTimeS = EditDateSRecorded + EditTimeSRecorded
    DateAndTimeE = EditDateERecorded + EditTimeERecorded
    
    ' the ship name - we would rather this was not NULL, but if
    ' it is ...
    ShipName = Replace(ShipCombo, "'", "''")
    If ShipName = "NULL" Then
        ShipName = ""
    End If
    
    ' the SeaState and WindSpeed may be NULL
    SeaState = SeaStateCombo.Text
    If SeaState = "" Then
        SeaState = "NULL"
    End If
    
    WindSpeed = WindSpeedCombo.Text
    If WindSpeed = "" Then
        WindSpeed = "NULL"
    End If
       
    If PeriodOfSonar = "" Then
        PeriodOfSonar = "0"
    End If
        
    ' build the INSERT statement for the complete line
    ' for 'track' table
    GeomString = "MDSYS.SDO_GEOMETRY(2002," & Srid & ",null," & _
                 "MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1)," & _
                 "MDSYS.SDO_ORDINATE_ARRAY(" & _
                 EditLongitudeS & "," & EditLatitudeS & "," & _
                 EditLongitudeE & "," & EditLatitudeE & "))"
    
    SQLStr = "INSERT into " & TrackDataType & "_track " & _
             "(LOCATION," & _
             " MEDS_JOB_NUMBER, " & _
             " MEDS_TRACK_NUMBER," & _
             " LONGITUDE_START, LATITUDE_START," & _
             " DATE_RECORDED_START," & _
             " OFFSET_START," & _
             " LONGITUDE_END, LATITUDE_END," & _
             " DATE_RECORDED_END," & _
             " OFFSET_END,SHIP," & _
             " MONITORING_TYPE,PERIOD_OF_SONAR," & _
             " SEA_STATE,WIND_SPEED,SOUND_SOURCE)" & _
             " VALUES " & _
             "(" & GeomString & "," & _
             TrackJobNumber & "," & _
             TrackTrackNumber & "," & _
             EditLongitudeS & "," & EditLatitudeS & _
             ",TO_DATE('" & DateAndTimeS & "','DD/MM/YYYY HH24:MI:SS')," & _
             TrackOffsetS & "," & _
             EditLongitudeE & "," & EditLatitudeE & _
             ",TO_DATE('" & DateAndTimeE & "','DD/MM/YYYY HH24:MI:SS')," & _
             TrackOffsetE & "," & _
            "'" & ShipName & "','" & MonTypeCombo & "'," & _
             PeriodOfSonar & "," & SeaState & "," & _
             WindSpeed & ",'" & SndSrcCombo & "')"
             
    OraDatabase.ExecuteSQL (SQLStr)

    ' now enter a row in the '_envelope' table
    SQLStr = "INSERT into " & TrackDataType & "_envelope " & _
             "(MEDS_JOB_NUMBER, " & _
             " MEDS_TRACK_NUMBER," & _
             " ENVELOPE)" & _
             " VALUES " & _
             "(" & TrackJobNumber & "," & _
             TrackTrackNumber & "," & _
             " NULL)"
     
    OraDatabase.ExecuteSQL (SQLStr)
            
    ' and refresh the envelope geometry
    
    If Not DataEdit.RefreshEnvelope(TrackDataType, _
                                    TrackJobNumber, _
                                    TrackTrackNumber) Then
        OraDatabase.Rollback
    Else
        OraDatabase.CommitTrans
    End If
Exit Sub
 
InsertData_Error:
    OraDatabase.Rollback
    If err.Number <> 32755 Then
        MsgBox "Error while processing insert :" & err.Number & " " & err.description
    End If

End Sub
Private Function CalculateGeodesicDist(ByVal StartLat As Double, _
                                       ByVal StartLong As Double, _
                                       ByVal EndLat As Double, _
                                       ByVal EndLong As Double) As Double
                                       
    Dim SQLStr As String
    Dim Results As Object
    Dim GeomString1 As String
    Dim GeomString2 As String
    Dim Srid As Long
    Dim retDist As Double
    
    
    
    On Error GoTo CalculateGD_Error
    
    ' get the SRID for this table
    SQLStr = "Select SRID from USER_SDO_GEOM_METADATA " & _
             "Where TABLE_NAME = '" & TrackDataType & "_TRACK'"
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Srid = -1
    If Not Results.EOF Then
        Srid = Results("SRID")
    End If
        
    Results.Close
    
    ' the first point
    GeomString1 = "MDSYS.SDO_GEOMETRY(2001," & Srid & "," & _
                  "SDO_POINT_TYPE(" & StartLong & "," & StartLat & ",NULL)," & _
                  "NULL,NULL)"
                  
    ' the second point
    GeomString2 = "MDSYS.SDO_GEOMETRY(2001," & Srid & "," & _
                  "SDO_POINT_TYPE(" & EndLong & "," & EndLat & ",NULL)," & _
                  "NULL,NULL)"
    
    SQLStr = "SELECT SDO_GEOM.SDO_DISTANCE(" & _
             GeomString1 & "," & GeomString2 & ",1.0,'unit=naut_mile')" & _
             " as dist from DUAL "

    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    
    If Not Results.EOF Then
        retDist = Results("dist")
    End If
        
    Results.Close
    
    CalculateGeodesicDist = retDist
                                    
  Exit Function
  
CalculateGD_Error:
    If err.Number <> 32755 Then
        MsgBox "Error while Calculating Geodesic Distance :" & err.Number & " " & err.description
    End If
    
    CalculateGeodesicDist = 0#
                                           
End Function


Private Function validateTrack()
    
    Dim gDist As Double
    Dim tolDist As Double
    Dim DateAndTimeS As Date
    Dim DateAndTimeE As Date
    
    ' assume no good!
    validateTrack = False
    
    ' distance tolerance - in 'Nautical Miles'
    
    tolDist = 0.25
    
    ' it is the calling routine's responsibility to ensure that
    ' the positions are available as doubles
    
    gDist = CalculateGeodesicDist(EditLatitudeS, _
                                  EditLongitudeS, _
                                  EditLatitudeE, _
                                  EditLongitudeE)
    
    If gDist < tolDist Then
        MsgBox "A Track must have separate start and end points"
        Exit Function
    End If
    
    ' the combination date/times
    DateAndTimeS = EditDateSRecorded + EditTimeSRecorded
    DateAndTimeE = EditDateERecorded + EditTimeERecorded

    If DateAndTimeS >= DateAndTimeE Then
        MsgBox "A Track must end at a later time than it starts"
        Exit Function
    End If
    
    ' the end time must be later than the start time
        
    ' there must be a ship name selected
    
    If ShipCombo.Text = "" Then
        MsgBox "A Track must have a ship name"
        Exit Function
    End If
    
    ' the offsets must be > 0 (for the moment - are they
    '                          in metres or miles?)
    
    If TrackOffsetS.Text = "" Then
       MsgBox "The Offset at the start of the track must be > 0.0"
        Exit Function
    ElseIf TrackOffsetS.Text <= 0# Then
        MsgBox "The Offset at the start of the track must be > 0.0"
        Exit Function
    End If
    
     If TrackOffsetE.Text = "" Then
        MsgBox "The Offset at the end of the track must be > 0.0"
        Exit Function
     ElseIf TrackOffsetE.Text <= 0# Then
        MsgBox "The Offset at the end of the track must be > 0.0"
        Exit Function
    End If
   
    ' all OK to continue
    validateTrack = True

End Function

Private Sub TrackOffsetE_Change()

    If TrackOffsetE.Text = "" Then
        Exit Sub
    ElseIf Not IsNumeric(TrackOffsetE.Text) Then
        Beep
        CalledInternally = True
        TrackOffsetE.Text = ""
    End If
  
End Sub

Private Sub TrackOffsetS_Change()

    If TrackOffsetS.Text = "" Then
        Exit Sub
    ElseIf Not IsNumeric(TrackOffsetS.Text) Then
        Beep
        CalledInternally = True
        TrackOffsetS.Text = ""
    End If
   
End Sub

