VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form MarineLifeEdit 
   Caption         =   "Marine Life Edit"
   ClientHeight    =   9285
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12885
   LinkTopic       =   "Form1"
   ScaleHeight     =   9285
   ScaleWidth      =   12885
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox EditLongitudeHemi 
      Height          =   315
      Left            =   9000
      TabIndex        =   59
      Top             =   960
      Width           =   615
   End
   Begin VB.TextBox EditLongitudeMin 
      Height          =   285
      Left            =   8160
      TabIndex        =   57
      Top             =   960
      Width           =   735
   End
   Begin VB.TextBox EditLongitudeDeg 
      Height          =   285
      Left            =   7320
      TabIndex        =   55
      Top             =   960
      Width           =   735
   End
   Begin VB.TextBox EditColumn 
      Height          =   285
      Index           =   19
      Left            =   2520
      TabIndex        =   47
      Top             =   8400
      Width           =   10215
   End
   Begin VB.TextBox EditColumn 
      Height          =   285
      Index           =   13
      Left            =   2520
      TabIndex        =   35
      Top             =   6240
      Width           =   10215
   End
   Begin VB.TextBox EditColumn 
      Height          =   285
      Index           =   12
      Left            =   2520
      TabIndex        =   34
      Top             =   5880
      Width           =   10215
   End
   Begin VB.Frame EditFrame 
      Caption         =   "Frame1"
      Height          =   9255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12855
      Begin VB.TextBox EditJobNumber 
         Height          =   285
         Left            =   5040
         TabIndex        =   71
         Top             =   1080
         Width           =   975
      End
      Begin VB.Frame SpeciesLookupLabel 
         Caption         =   "Select Species"
         Height          =   615
         Left            =   8760
         TabIndex        =   69
         Top             =   1560
         Width           =   3855
         Begin VB.ComboBox SpeciesLookup 
            Height          =   315
            Left            =   120
            TabIndex        =   70
            Top             =   240
            Width           =   3615
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Location"
         Height          =   1215
         Left            =   6240
         TabIndex        =   49
         Top             =   120
         Width           =   6375
         Begin VB.CommandButton LocationModeToggleButton 
            Caption         =   "MODE"
            Height          =   255
            Left            =   3480
            TabIndex        =   65
            Top             =   600
            Width           =   735
         End
         Begin VB.ComboBox EditLatitudeHemi 
            Height          =   315
            Left            =   2760
            TabIndex        =   58
            Top             =   360
            Width           =   615
         End
         Begin VB.TextBox EditLatitudeMin 
            Height          =   285
            Left            =   1920
            TabIndex        =   56
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox EditLatitudeDeg 
            Height          =   285
            Left            =   1080
            TabIndex        =   54
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox EditLatitude 
            Height          =   285
            Left            =   5160
            TabIndex        =   52
            Top             =   360
            Width           =   1095
         End
         Begin VB.TextBox EditLongitude 
            Height          =   285
            Left            =   5160
            TabIndex        =   50
            Top             =   810
            Width           =   1095
         End
         Begin VB.Label DecimalLongitudeLabel 
            Caption         =   "Longitude"
            Height          =   255
            Left            =   4320
            TabIndex        =   68
            Top             =   840
            Width           =   735
         End
         Begin VB.Label DecimalLatitudeLabel 
            Caption         =   "Latitude"
            Height          =   255
            Left            =   4320
            TabIndex        =   66
            Top             =   360
            Width           =   735
         End
         Begin VB.Label DecimalLabel1 
            Caption         =   "Decimal"
            Height          =   255
            Left            =   5160
            TabIndex        =   63
            Top             =   120
            Width           =   1095
         End
         Begin VB.Label HemiLabel 
            Caption         =   "Hemi"
            Height          =   255
            Left            =   2760
            TabIndex        =   62
            Top             =   120
            Width           =   615
         End
         Begin VB.Label MinutesLabel 
            Caption         =   "Minutes"
            Height          =   255
            Left            =   1920
            TabIndex        =   61
            Top             =   120
            Width           =   735
         End
         Begin VB.Label DegreesLabel 
            Caption         =   "Degrees"
            Height          =   255
            Left            =   1080
            TabIndex        =   60
            Top             =   120
            Width           =   735
         End
         Begin VB.Label DegreeLatitudeLabel 
            Caption         =   "Latitude"
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   360
            Width           =   735
         End
         Begin VB.Label DegreeLongitudeLabel 
            Caption         =   "Longitude"
            Height          =   255
            Left            =   120
            TabIndex        =   51
            Top             =   840
            Width           =   855
         End
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   18
         Left            =   2520
         TabIndex        =   46
         Top             =   8040
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   17
         Left            =   2520
         TabIndex        =   45
         Top             =   7680
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   16
         Left            =   2520
         TabIndex        =   44
         Top             =   7320
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   15
         Left            =   2520
         TabIndex        =   39
         Top             =   6960
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   14
         Left            =   2520
         TabIndex        =   37
         Top             =   6600
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   11
         Left            =   2520
         TabIndex        =   31
         Top             =   5520
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   10
         Left            =   2520
         TabIndex        =   30
         Top             =   5160
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   9
         Left            =   2520
         TabIndex        =   29
         Top             =   4800
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   8
         Left            =   2520
         TabIndex        =   28
         Top             =   4440
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   7
         Left            =   2520
         TabIndex        =   27
         Top             =   4080
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   6
         Left            =   2520
         TabIndex        =   26
         Top             =   3720
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   5
         Left            =   2520
         TabIndex        =   25
         Top             =   3360
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   4
         Left            =   2520
         TabIndex        =   24
         Top             =   3000
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   3
         Left            =   2520
         TabIndex        =   23
         Top             =   2640
         Width           =   10215
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   2
         Left            =   2520
         TabIndex        =   22
         Top             =   2280
         Width           =   4815
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   1
         Left            =   2520
         TabIndex        =   11
         Top             =   1920
         Width           =   4815
      End
      Begin VB.TextBox EditColumn 
         Height          =   285
         Index           =   0
         Left            =   2520
         TabIndex        =   9
         Top             =   1560
         Width           =   4815
      End
      Begin VB.Frame DateRecordedFrame 
         Caption         =   "Date Recorded"
         Height          =   735
         Left            =   2520
         TabIndex        =   7
         Top             =   120
         Width           =   3495
         Begin MSComCtl2.DTPicker EditTimeRecorded 
            Height          =   375
            Left            =   1800
            TabIndex        =   64
            Top             =   240
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   127074306
            CurrentDate     =   38513
         End
         Begin MSComCtl2.DTPicker EditDateRecorded 
            Height          =   375
            Left            =   120
            TabIndex        =   38
            Top             =   240
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   127074305
            CurrentDate     =   38496
         End
      End
      Begin VB.TextBox EditObsNumber 
         Height          =   285
         Left            =   1440
         TabIndex        =   6
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox EditMEICNumber 
         Height          =   285
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   1095
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit - aborting changes"
         Height          =   375
         Left            =   10800
         TabIndex        =   2
         Top             =   8760
         Width           =   1935
      End
      Begin VB.CommandButton SaveButton 
         Caption         =   "Save Changes"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   8760
         Width           =   2055
      End
      Begin VB.Label Label3 
         Caption         =   "JobNumber"
         Height          =   255
         Left            =   5040
         TabIndex        =   72
         Top             =   840
         Width           =   975
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   19
         Left            =   360
         TabIndex        =   48
         Top             =   8400
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   18
         Left            =   360
         TabIndex        =   43
         Top             =   8040
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   17
         Left            =   360
         TabIndex        =   42
         Top             =   7680
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   16
         Left            =   360
         TabIndex        =   41
         Top             =   7320
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   15
         Left            =   360
         TabIndex        =   40
         Top             =   6960
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   14
         Left            =   360
         TabIndex        =   36
         Top             =   6600
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   13
         Left            =   360
         TabIndex        =   33
         Top             =   6240
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   12
         Left            =   360
         TabIndex        =   32
         Top             =   5880
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   11
         Left            =   360
         TabIndex        =   21
         Top             =   5520
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   10
         Left            =   360
         TabIndex        =   20
         Top             =   5160
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   9
         Left            =   360
         TabIndex        =   19
         Top             =   4800
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   8
         Left            =   360
         TabIndex        =   18
         Top             =   4440
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   7
         Left            =   360
         TabIndex        =   17
         Top             =   4080
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   6
         Left            =   360
         TabIndex        =   16
         Top             =   3720
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   5
         Left            =   360
         TabIndex        =   15
         Top             =   3360
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   4
         Left            =   360
         TabIndex        =   14
         Top             =   3000
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   3
         Left            =   360
         TabIndex        =   13
         Top             =   2640
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   2
         Left            =   360
         TabIndex        =   12
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   10
         Top             =   1920
         Width           =   1935
      End
      Begin VB.Label ColumnLabel 
         Caption         =   "Column1"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   8
         Top             =   1560
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "ObsNumber"
         Height          =   255
         Left            =   1440
         TabIndex        =   5
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Label Label6 
      Caption         =   "Longitude"
      Height          =   255
      Left            =   9240
      TabIndex        =   67
      Top             =   1440
      Width           =   855
   End
End
Attribute VB_Name = "MarineLifeEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Enum EditModeEnum
    EDIT_MODE_NEW = 0
    EDIT_MODE_EDIT = 1
    EDIT_MODE_COPY = 2
    EDIT_MODE_DELETE = 3
End Enum

Dim EditMode As EditModeEnum
Dim MEICNumberToEdit As Long
Dim EditMedsJobNumber As Long
Dim EditDataType As String
Dim EditMedsObsNumber As Long
Dim OrigLatitude As String
Dim OrigLongitude As String
Dim OrigDay As String
Dim OrigMonth As String
Dim OrigYear As String
Dim OrigHour As String
Dim OrigMinute As String
Dim OrigSecond As String
Dim OrigValue(20) As String
Dim ColumnDataType(20) As String
Dim ColumnDataLength(20) As Integer
Dim ColumnDataMandatory(20) As Boolean
Dim LocationDecimalMode As Boolean


Public Sub SetEditDetails(ByVal EditingMode As EditModeEnum, _
                           ByVal MEICNumber As Long, _
                           ByVal JobNumber As Long, _
                           ByVal ObsNumber As Long, _
                           ByVal DataType As String)
    EditMode = EditingMode
    MEICNumberToEdit = MEICNumber
    EditMedsJobNumber = JobNumber
    EditMedsObsNumber = ObsNumber
    EditDataType = DataType
End Sub

Private Sub EditColumn_Change(Index As Integer)
    If ColumnDataType(Index) = "NUMBER" Then
        Call JobTracking.ForceIntegerText(EditColumn(Index))
    End If
    If ColumnDataType(Index) = "FLOAT" Then
        Call JobTracking.ForceFloatText(EditColumn(Index))
    End If
End Sub

Private Sub EditLatitude_Change()
    Call JobTracking.ForceFloatText(EditLatitude)
End Sub

Private Sub EditLatitudeDeg_Change()
    Call JobTracking.ForceIntegerText(EditLatitudeDeg)
End Sub

Private Sub EditLatitudeHemi_Change()
    If Not (EditLatitudeHemi = "S" Or EditLatitudeHemi = "N") Then
        EditLatitudeHemi = ""
    End If
End Sub

Private Sub EditLongitudeHemi_Change()
    If Not (EditLongitudeHemi = "E" Or EditLongitudeHemi = "W") Then
        EditLongitudeHemi = ""
    End If
End Sub

Private Sub EditLatitudeMin_Change()
    Call JobTracking.ForceFloatText(EditLatitudeMin)
End Sub

Private Sub EditLongitude_Change()
    Call JobTracking.ForceFloatText(EditLongitude)
End Sub

Private Sub EditLongitudeDeg_Change()
    Call JobTracking.ForceIntegerText(EditLongitudeDeg)
End Sub

Private Sub EditLongitudeMin_Change()
    Call JobTracking.ForceFloatText(EditLongitudeMin)
End Sub

Private Sub ExitButton_Click()
    Unload Me
End Sub

Private Sub SetDecimalMode(DecimalMode As Boolean)
    DecimalLabel1.Visible = DecimalMode
    DecimalLatitudeLabel.Visible = DecimalMode
    DecimalLongitudeLabel.Visible = DecimalMode
    DegreesLabel.Visible = DecimalMode
    EditLatitude.Visible = DecimalMode
    EditLongitude.Visible = DecimalMode
    
    DegreeLatitudeLabel.Visible = Not DecimalMode
    DegreeLongitudeLabel.Visible = Not DecimalMode
    DegreesLabel.Visible = Not DecimalMode
    MinutesLabel.Visible = Not DecimalMode
    HemiLabel.Visible = Not DecimalMode
    EditLatitudeDeg.Visible = Not DecimalMode
    EditLatitudeMin.Visible = Not DecimalMode
    EditLatitudeHemi.Visible = Not DecimalMode
    EditLongitudeDeg.Visible = Not DecimalMode
    EditLongitudeMin.Visible = Not DecimalMode
    EditLongitudeHemi.Visible = Not DecimalMode

End Sub

Private Sub LoadSpecies(box As ComboBox)
    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "SELECT distinct species FROM " & MarineLifeSearch.DataTable(EditDataType)
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("species") <> "" Then
            box.AddItem Results("species")
        End If
        Results.MoveNext
    Wend
       
    
End Sub

Private Sub Form_Load()

    Dim SQLQuery As String
    Dim ColumnsQuery As String
    Dim ColumnsResults As Object
    Dim Results As Object
    Dim NResults As Long
    Dim Index As Integer
        
    EditFrame.Caption = EditDataType
    EditDateRecorded.CheckBox = True
    EditDateRecorded.Day = "01"
    EditDateRecorded.Month = "01"
    EditDateRecorded.Year = Year(Now)
    EditDateRecorded.Month = Month(Now)
    EditDateRecorded.Day = Day(Now)
    EditDateRecorded = Null
    EditTimeRecorded = Null
    EditLatitudeHemi.Clear
    EditLatitudeHemi.AddItem "N"
    EditLatitudeHemi.AddItem "S"
    EditLongitudeHemi.Clear
    EditLongitudeHemi.AddItem "W"
    EditLongitudeHemi.AddItem "E"
    LocationDecimalMode = True
    SpeciesLookupLabel.Visible = False
    SpeciesLookup.Visible = False
    
    If EditDataType = "CETACEANS" Then
        Call LoadSpecies(SpeciesLookup)
        SpeciesLookupLabel.Visible = True
        SpeciesLookup.Visible = True
    End If
    
    
    Call SetDecimalMode(LocationDecimalMode)

    For Index = 0 To ColumnLabel.UBound
        ColumnLabel(Index).Visible = False
        EditColumn(Index).Visible = False
    Next Index
    
    If EditMode = EDIT_MODE_EDIT Or EditMode = EDIT_MODE_COPY Or EditMode = EDIT_MODE_DELETE Then
    
        SQLQuery = "SELECT count(*) FROM " & MarineLifeSearch.ObservationTable(EditDataType) & " o " & _
                    "WHERE o.meds_job_number = " & EditMedsJobNumber & " AND " & _
                    " o.meds_observation_number = " & EditMedsObsNumber & ""
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
        NResults = Results("count(*)")
    
        If NResults <> 1 Then
            MsgBox "Cannot find valid data"
            Exit Sub
        Else
            SQLQuery = "SELECT TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'DD' ) day_recorded" & _
                   ", TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'MM') month_recorded" & _
                   ", TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'YYYY') year_recorded " & _
                   ", TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'HH24') hour_recorded " & _
                   ", TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'MI') minute_recorded " & _
                   ", TO_CHAR(" & MarineLifeSearch.DateRecordedName(EditDataType) & ", 'SS') second_recorded " & _
                   ", j.meic_number, o.meds_job_number, o.meds_observation_number, o.latitude, o.longitude, d.*" & _
                  " FROM " & MarineLifeSearch.ObservationTable(EditDataType) & " o," & _
                            " " & MarineLifeSearch.DataTable(EditDataType) & " d," & _
                            " meds_processing_job j " & _
                    "WHERE o.meds_job_number = " & EditMedsJobNumber & " AND " & _
                    " o.meds_observation_number = " & EditMedsObsNumber & " AND " & _
                    " o.meds_job_number = d.meds_job_number AND " & _
                    " o.meds_observation_number = d.meds_observation_number AND " & _
                    " o.meds_job_number = j.job_number "
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
          
            If Results("meic_number") <> "" Then
                EditMEICNumber = Results("meic_number")
            End If
            EditMEICNumber.Locked = True
            EditObsNumber.Text = Results("meds_observation_number")
            EditObsNumber.Locked = True
            EditJobNumber.Text = Results("meds_job_number")
            EditJobNumber.Locked = True
            EditJobNumber.Enabled = False
            EditLatitude.Text = MarineLifeNewJob.SafeString(Results, "latitude")
            EditLongitude.Text = MarineLifeNewJob.SafeString(Results, "longitude")
            OrigLatitude = MarineLifeNewJob.SafeString(Results, "latitude")
            OrigLongitude = MarineLifeNewJob.SafeString(Results, "longitude")
            OrigYear = ""
            If Results("year_recorded") <> "" Then
                ' Need to ensure that the date is always valid
                ' so the date is being set to 01/01/YYYY as this is always valid
                '
                EditDateRecorded.Day = "01"
                EditDateRecorded.Month = "01"
                EditDateRecorded.Year = Results("year_recorded")
                OrigYear = Results("year_recorded")
            End If
            OrigMonth = ""
            If Results("month_recorded") <> "" Then
                EditDateRecorded.Month = Results("month_recorded")
                OrigMonth = Results("month_recorded")
            End If
            OrigDay = ""
            If Results("day_recorded") <> "" Then
                EditDateRecorded.Day = Results("day_recorded")
                OrigDay = Results("day_recorded")
            End If
            OrigHour = ""
            If Results("hour_recorded") <> "" Then
                EditTimeRecorded.Hour = Results("hour_recorded")
                OrigHour = Results("hour_recorded")
            End If
            OrigMinute = ""
            If Results("minute_recorded") <> "" Then
                EditTimeRecorded.Minute = Results("minute_recorded")
                OrigMinute = Results("minute_recorded")
            End If
            OrigSecond = ""
            If Results("second_recorded") <> "" Then
                EditTimeRecorded.Second = Results("second_recorded")
                OrigSecond = Results("second_recorded")
            End If
        End If
    Else
        EditMEICNumber.Text = MEICNumberToEdit
        EditMEICNumber.Locked = True
        EditObsNumber.Locked = True
        EditJobNumber.Locked = True
        EditJobNumber.Enabled = False
    End If
    
    ColumnsQuery = "SELECT a.column_name, a.data_length, a.data_precision, a.data_scale, a.data_type, c.edit_order, c.mandatory " & _
            "FROM all_tab_columns a, mlo_columns c WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
            MarineLifeSearch.DataTable(EditDataType) & "' AND a.table_name = c.table_name and a.column_name = c.column_name " & _
            " ORDER BY c.edit_order ASC"

    
    Set ColumnsResults = OraDatabase.CreateDynaset(ColumnsQuery, 0&)
            
    Index = 0
    While Not ColumnsResults.EOF And Index < ColumnLabel.UBound
        If ColumnsResults("column_name") <> "" Then
            ColumnLabel(Index).Caption = ColumnsResults("column_name")
            ColumnLabel(Index).Visible = True
            EditColumn(Index).Visible = True
            EditColumn(Index).MaxLength = 0
            EditColumn(Index).width = 10215
            If ColumnsResults("data_type") = "VARCHAR2" Or ColumnsResults("data_type") = "CHAR" Then
                EditColumn(Index).MaxLength = ColumnsResults("data_length")
                If EditColumn(Index).MaxLength * ((EditColumn(Index).FontSize + 3) * 10) < 10215 Then
                    EditColumn(Index).width = EditColumn(Index).MaxLength * ((EditColumn(Index).FontSize + 4) * 10)
                End If
            End If
            If ColumnsResults("data_type") = "NUMBER" Then
                EditColumn(Index).MaxLength = ColumnsResults("data_precision")
                If EditColumn(Index).MaxLength * ((EditColumn(Index).FontSize + 3) * 10) < 10215 Then
                    EditColumn(Index).width = EditColumn(Index).MaxLength * ((EditColumn(Index).FontSize + 4) * 10)
                End If
            End If
            OrigValue(Index) = ""
            If ColumnsResults("data_type") = "NUMBER" & ColumnsResults("data_scale") <> "" And ColumnsResults("data_scale") <> "0" Then
                ColumnDataType(Index) = "FLOAT"
            Else
                ColumnDataType(Index) = ColumnsResults("data_type")
            End If
            ColumnDataLength(Index) = ColumnsResults("data_length")
            If ColumnsResults("mandatory") <> "0" Then
                ColumnDataMandatory(Index) = True
            Else
                ColumnDataMandatory(Index) = False
            End If
            If EditMedsObsNumber <> -1 Then
                EditColumn(Index).Text = ""
                If Results(ColumnsResults("column_name")) <> "" Then
                    EditColumn(Index).Text = Results(ColumnsResults("column_name"))
                    OrigValue(Index) = Results(ColumnsResults("column_name"))
                End If
            End If
        End If
        Index = Index + 1
        ColumnsResults.MoveNext
    Wend
    
    If EditMode = EDIT_MODE_COPY Then
        ' Having loaded in a copy of variables we now make sure that when saved
        ' a new meds_observation_number will be allocated
        EditMedsObsNumber = -1
        EditObsNumber.Text = ""
        EditJobNumber.Text = ""
        EditObsNumber.Locked = True
        EditJobNumber.Locked = True
        EditJobNumber.Enabled = False
        SaveButton.Caption = "Save New Data"
    End If
    If EditMode = EDIT_MODE_EDIT Then
        SaveButton.Caption = "Save Changes"
    End If
    If EditMode = EDIT_MODE_NEW Then
        SaveButton.Caption = "Save New Data"
        LocationDecimalMode = False
    
        Call SetDecimalMode(LocationDecimalMode)
    End If
    If EditMode = EDIT_MODE_DELETE Then
        SaveButton.Caption = "Delete Data"
    End If
    
End Sub

Private Sub DeleteData()
    Dim Msg, Style, Title, Response
    Msg = "Do you want to delete this data ?"   ' Define message.
    Style = vbYesNo + vbCritical + vbDefaultButton2   ' Define buttons.
    Title = "Delete Data"   ' Define title.
      ' Display message.
    Response = MsgBox(Msg, Style, Title)
    If Response = vbYes Then
        Dim SQLObsQuery As String
        Dim SQLDataQuery As String
        
        SQLObsQuery = " DELETE FROM  " & MarineLifeSearch.ObservationTable(EditDataType) & " " & _
                       " WHERE meds_job_number = " & EditMedsJobNumber & " AND meds_observation_number = " & EditMedsObsNumber
            
        SQLDataQuery = " DELETE FROM  " & MarineLifeSearch.DataTable(EditDataType) & " " & _
                       " WHERE meds_job_number = " & EditMedsJobNumber & " AND meds_observation_number = " & EditMedsObsNumber
            
            
        OraDatabase.BeginTrans
        OraDatabase.ExecuteSQL (SQLObsQuery)
        OraDatabase.ExecuteSQL (SQLDataQuery)
        OraDatabase.CommitTrans
        Unload Me
    Else
        Unload Me
    End If


End Sub

Private Sub Form_Unload(Cancel As Integer)
    If EditMode <> EDIT_MODE_NEW Then
        Call MarineLifeSearch.ClearSearchResults
        Call MarineLifeSearch.DisplayResultsSet
    End If
End Sub

Private Sub AddDerivedSecchiValues(ByRef ColumnsClause As String, _
                                   ByRef ValuesClause As String, _
                                   SecchiDepth As Double)
    Dim photicDepth As Double
    Dim horizVisibility As Double
    Dim diffuseAtt As Double
    
    photicDepth = SecchiDepth * 3
    horizVisibility = SecchiDepth * 0.7
    If SecchiDepth <> 0# Then
        diffuseAtt = 1.7 / SecchiDepth
    End If
    
    ColumnsClause = ColumnsClause + ",SECCHI_DEPTH,PHOTIC_DEPTH,HORIZONTAL_VISABILITY,DIFFUSE_ATTN_COE"
    ValuesClause = ValuesClause + "," & SecchiDepth & "," & photicDepth & "," & horizVisibility & "," & diffuseAtt
End Sub

Private Sub UpdateDerivedSecchiValues(ByRef SQLClause As String, _
                                      SecchiDepth As Double)
    Dim photicDepth As Double
    Dim horizVisibility As Double
    Dim diffuseAtt As Double
    
    photicDepth = SecchiDepth * 3
    horizVisibility = SecchiDepth * 0.7
    If SecchiDepth <> 0# Then
        diffuseAtt = 1.7 / SecchiDepth
    End If
    
    SQLClause = SQLClause + "SECCHI_DEPTH=" & SecchiDepth & _
                ",PHOTIC_DEPTH=" & photicDepth & _
                ",HORIZONTAL_VISABILITY=" & horizVisibility & _
                ",DIFFUSE_ATTN_COE=" & diffuseAtt & ","
End Sub

Private Sub CalculateLatitude(EditLatitude As Textbox, Deg As Double, Min As Double, hemi As String)
    Dim Latitude As Double
    
    Latitude = Deg + Min / 60#
    
    If hemi = "S" Then
        Latitude = Latitude * -1#
    End If
    
    EditLatitude.Text = Latitude

End Sub

Private Sub CalculateLongitude(EditLongitude As Textbox, Deg As Double, Min As Double, hemi As String)
    Dim Longitude As Double
    
    Longitude = Deg + Min / 60#
    
    If hemi = "W" Then
        Longitude = Longitude * -1#
    End If
    
    EditLongitude.Text = Longitude

End Sub

Private Sub CalculateLatDegMinHemi(Latitude As Double, degrees As Textbox, minutes As Textbox, hemi As ComboBox)
    If Abs(Latitude >= 0) Then
        hemi.Text = "N"
    Else
        hemi.Text = "S"
    End If
    
    degrees.Text = Int(Abs(Latitude))
    
    minutes.Text = (Abs(Latitude) - Int(Abs(Latitude))) * 60#

End Sub

Private Sub CalculateLongDegMinHemi(Longitude As Double, degrees As Textbox, minutes As Textbox, hemi As ComboBox)
    If Abs(Longitude >= 0) Then
        hemi.Text = "E"
    Else
        hemi.Text = "W"
    End If
    
    degrees.Text = Int(Abs(Longitude))
    
    minutes.Text = (Abs(Longitude) - Int(Abs(Longitude))) * 60#

End Sub


Private Sub LocationModeToggleButton_Click()
    If LocationDecimalMode Then
        ' set up buttons for degrees, minutes, hemi mode
        If EditLatitude.Text = "" Or EditLongitude.Text = "" Then
            EditLatitudeDeg.Text = ""
            EditLatitudeMin.Text = ""
            EditLatitudeHemi.Text = ""
            EditLongitudeDeg.Text = ""
            EditLongitudeMin.Text = ""
            EditLongitudeHemi.Text = ""
        Else
            Call CalculateLatDegMinHemi(EditLatitude.Text, EditLatitudeDeg, EditLatitudeMin, EditLatitudeHemi)
            Call CalculateLongDegMinHemi(EditLongitude.Text, EditLongitudeDeg, EditLongitudeMin, EditLongitudeHemi)
        End If
    Else
        ' set up buttons for decicmal mode
        If EditLatitudeDeg.Text = "" Or EditLongitudeDeg.Text = "" Or _
               EditLatitudeMin.Text = "" Or EditLongitudeMin.Text = "" Or _
               EditLatitudeHemi.Text = "" Or EditLongitudeHemi.Text = "" Then
            EditLatitude.Text = ""
            EditLongitude.Text = ""
        Else
            Call CalculateLatitude(EditLatitude, EditLatitudeDeg.Text, EditLatitudeMin.Text, EditLatitudeHemi.Text)
            Call CalculateLongitude(EditLongitude, EditLongitudeDeg.Text, EditLongitudeMin.Text, EditLongitudeHemi.Text)
        End If
    End If
    
    LocationDecimalMode = Not LocationDecimalMode
    Call SetDecimalMode(LocationDecimalMode)
    
End Sub

Private Sub SpeciesLookup_Click()
    If SpeciesLookup.Text <> "" Then
        EditColumn(2).Text = SpeciesLookup.Text
    End If
End Sub

Private Sub SaveButton_Click()
    Dim SQLClause As String
    Dim SQLQuery As String
    Dim Results As Object
    Dim Index As Integer
    
    On Error GoTo SaveButton_Error
    
    If EditMode = EDIT_MODE_DELETE Then
        Call DeleteData
        Exit Sub
    End If
    
    If EditMedsObsNumber <> -1 Then
    
        SQLClause = ""
        
        If LocationDecimalMode = True Then
        
            If EditLongitude = "" Then
                MsgBox "A longitude must be specified"
                Exit Sub
            End If
            
            If EditLatitude = "" Then
                MsgBox "A Latitude must be specified"
                Exit Sub
            End If
        Else
            If EditLatitudeDeg.Text = "" Or EditLongitudeDeg.Text = "" Or _
               EditLatitudeMin.Text = "" Or EditLongitudeMin.Text = "" Or _
               EditLatitudeHemi.Text = "" Or EditLongitudeHemi.Text = "" Then
                MsgBox "All latitude and longitude fields must be specified"
                Exit Sub
            End If
            Call CalculateLatitude(EditLatitude, EditLatitudeDeg.Text, EditLatitudeMin.Text, EditLatitudeHemi.Text)
            Call CalculateLongitude(EditLongitude, EditLongitudeDeg.Text, EditLongitudeMin.Text, EditLongitudeHemi.Text)
        End If
        
        Index = 0
        While Index < ColumnLabel.UBound And ColumnLabel(Index).Visible = True
            If ColumnDataMandatory(Index) = True Then
                If EditColumn(Index) = "" Then
                    MsgBox "'" & ColumnLabel(Index).Caption & "' must be completed to save this data"
                    Exit Sub
                End If
            End If
            Index = Index + 1
        Wend
                
        If EditLongitude.Text <> OrigLatitude Or EditLatitude.Text <> OrigLatitude Then
            ' update the latitude/longitude and the spatial field
            
            SQLClause = SQLClause & "longitude = " & EditLongitude.Text & ","
            SQLClause = SQLClause & "latitude = " & EditLatitude.Text & ","
            
            SQLClause = SQLClause & "location=MDSYS.SDO_GEOMETRY(2001,NULL,MDSYS.SDO_POINT_TYPE(" & _
                                EditLongitude.Text & "," & EditLatitude.Text & ",null),null,null),"
        End If
    
        If IsNull(EditDateRecorded) Then
            MsgBox "A recorded date must be supplied"
            Exit Sub
        End If
        
        If EditDateRecorded.Day <> OrigDay Or EditDateRecorded.Month <> OrigMonth Or EditDateRecorded.Year <> OrigYear Or _
            OrigHour <> EditTimeRecorded.Hour Or OrigMinute <> EditTimeRecorded.Minute Or OrigSecond <> EditTimeRecorded.Second Then
            If EditTimeRecorded <> "" Then
                SQLClause = SQLClause & MarineLifeSearch.DateRecordedName(EditDataType) & " = " & _
                            "TO_DATE('" & EditDateRecorded.Day & "/" & EditDateRecorded.Month & "/" & EditDateRecorded.Year & " " & EditTimeRecorded.Hour & ":" & EditTimeRecorded.Minute & ":" & EditTimeRecorded.Second & "','DD/MM/YYYY HH24::MI:SS'),"
            Else
                SQLClause = SQLClause & MarineLifeSearch.DateRecordedName(EditDataType) & " = " & _
                            "TO_DATE('" & EditDateRecorded.Day & "/" & EditDateRecorded.Month & "/" & EditDateRecorded.Year & "','DD/MM/YYYY'),"
            End If
            
        End If
    
        OraDatabase.BeginTrans
        If SQLClause <> "" Then
            SQLQuery = " UPDATE " & MarineLifeSearch.ObservationTable(EditDataType) & " " & _
                       " SET " & SQLClause & "meds_observation_number = " & EditMedsObsNumber & _
                       " WHERE meds_job_number = " & EditMedsJobNumber & " AND meds_observation_number = " & EditMedsObsNumber
            

            OraDatabase.ExecuteSQL (SQLQuery)
            
        End If
        
        Index = 0
        SQLClause = ""
        
        While Index < ColumnLabel.UBound And ColumnLabel(Index).Visible = True
            If EditDataType = "SECCHI" And ColumnLabel(Index).Caption = "SECCHI_DEPTH" And EditColumn(Index).Text <> OrigValue(Index) Then
                ' need to calculate and insert the derived parameters based on secchi depth
                Call UpdateDerivedSecchiValues(SQLClause, EditColumn(Index).Text)
            Else
                If EditColumn(Index).Text <> OrigValue(Index) Then
                    If ColumnDataType(Index) = "VARCHAR2" Then
                        SQLClause = SQLClause & ColumnLabel(Index).Caption & " = '" & _
                                        Replace(EditColumn(Index).Text, "'", "''") & "',"
                    Else
                        SQLClause = SQLClause & ColumnLabel(Index).Caption & " = " & _
                                        EditColumn(Index).Text & ","
                    End If
                End If
            End If
            Index = Index + 1
        Wend
        
        If SQLClause <> "" Then
            Dim MonthQuery As String
            
            SQLClause = SQLClause & "archived = TO_DATE('" & Day(Now) & "/" & Month(Now) & "/" & Year(Now) & "','DD/MM/YYYY'),"
            
            'Auto add in the month column if it has one
            MonthQuery = "SELECT a.column_name, a.data_length, a.data_precision, a.data_type " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                MarineLifeSearch.DataTable(EditDataType) & "' AND a.column_name  = 'MONTH'"
            Set Results = OraDatabase.CreateDynaset(MonthQuery, 0&)
                
            If Not Results.EOF Then
                SQLClause = SQLClause & "month = " & EditDateRecorded.Month & ","
            End If
        
            SQLQuery = " UPDATE " & MarineLifeSearch.DataTable(EditDataType) & " " & _
                       " SET " & SQLClause & "meds_observation_number = " & EditMedsObsNumber & _
                       " WHERE meds_job_number = " & EditMedsJobNumber & " AND meds_observation_number = " & EditMedsObsNumber

            OraDatabase.ExecuteSQL (SQLQuery)
          
        End If
        OraDatabase.CommitTrans
    Else
        
        SQLClause = ""
        
        If LocationDecimalMode = True Then
        
            If EditLongitude = "" Then
                MsgBox "A longitude must be specified"
                Exit Sub
            End If
            
            If EditLatitude = "" Then
                MsgBox "A Latitude must be specified"
                Exit Sub
            End If
        Else
            If EditLatitudeDeg.Text = "" Or EditLongitudeDeg.Text = "" Or _
               EditLatitudeMin.Text = "" Or EditLongitudeMin.Text = "" Or _
               EditLatitudeHemi.Text = "" Or EditLongitudeHemi.Text = "" Then
                MsgBox "All latitude and longitude fields must be specified"
                Exit Sub
            End If
            Call CalculateLatitude(EditLatitude, EditLatitudeDeg.Text, EditLatitudeMin.Text, EditLatitudeHemi.Text)
            Call CalculateLongitude(EditLongitude, EditLongitudeDeg.Text, EditLongitudeMin.Text, EditLongitudeHemi.Text)
        End If
        
        If EditLongitude.Text <> "" And EditLatitude.Text <> "" Then
            ' update the latitude/longitude and the spatial field
            
            SQLClause = SQLClause & EditLatitude.Text & ","
            SQLClause = SQLClause & EditLongitude.Text & ","
            
            SQLClause = SQLClause & "MDSYS.SDO_GEOMETRY(2001,NULL,MDSYS.SDO_POINT_TYPE(" & _
                                EditLongitude.Text & "," & EditLatitude.Text & ",null),null,null),"
        Else
            MsgBox "Latitude and Longitude must be supplied"
            Exit Sub
        End If
    
        If IsNull(EditDateRecorded) Then
            MsgBox "A recorded date must be supplied"
            Exit Sub
        End If
    
        Index = 0
        While Index < ColumnLabel.UBound And ColumnLabel(Index).Visible = True
            If ColumnDataMandatory(Index) = True Then
                If EditColumn(Index) = "" Then
                    MsgBox "'" & ColumnLabel(Index).Caption & "' must be completed to save this data"
                    Exit Sub
                End If
            End If
            Index = Index + 1
        Wend
    
        If EditTimeRecorded <> "" Then
            SQLClause = SQLClause & "TO_DATE('" & EditDateRecorded.Day & "/" & EditDateRecorded.Month & "/" & EditDateRecorded.Year & " " & EditTimeRecorded.Hour & ":" & EditTimeRecorded.Minute & ":" & EditTimeRecorded.Second & "','DD/MM/YYYY HH24:MI:SS')"
        Else
            SQLClause = SQLClause & "TO_DATE('" & EditDateRecorded.Day & "/" & EditDateRecorded.Month & "/" & EditDateRecorded.Year & "','DD/MM/YYYY')"
        End If
    
        If SQLClause <> "" Then
            Dim ColumnsClause As String
            Dim ValuesClause  As String
            
            OraDatabase.BeginTrans
            
            SQLQuery = "Select max(meds_observation_number)+1 as new_obs from " & _
                        MarineLifeSearch.ObservationTable(EditDataType) & _
                        " where meds_job_number = " & EditMedsJobNumber
                        
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
            
            If Results("new_obs") <> "" Then
                EditMedsObsNumber = Results("new_obs")
            Else
                EditMedsObsNumber = 1
            End If
            EditObsNumber.Text = EditMedsObsNumber
                    
            SQLQuery = "INSERT INTO " & MarineLifeSearch.ObservationTable(EditDataType) & " ( " & _
                       "MEDS_OBSERVATION_NUMBER, MEDS_JOB_NUMBER, Latitude, Longitude, " & _
                       "Location, " & MarineLifeSearch.DateRecordedName(EditDataType) & " ) VALUES ( " & _
                       EditMedsObsNumber & "," & _
                       EditMedsJobNumber & ", " & _
                       SQLClause & " ) "
            

            OraDatabase.ExecuteSQL (SQLQuery)
            
            Index = 0
            ColumnsClause = "meds_job_number, meds_observation_number, archived"
            ValuesClause = EditMedsJobNumber & "," & EditMedsObsNumber & ",TO_DATE('" & Day(Now) & "/" & Month(Now) & "/" & Year(Now) & "','DD/MM/YYYY')"
            
            'Auto add in the month column if it has one
            MonthQuery = "SELECT a.column_name, a.data_length, a.data_precision, a.data_type " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                MarineLifeSearch.DataTable(EditDataType) & "' AND a.column_name  = 'MONTH'"
            Set Results = OraDatabase.CreateDynaset(MonthQuery, 0&)
                
            If Not Results.EOF Then
                ColumnsClause = ColumnsClause & ", month "
                ValuesClause = ValuesClause & "," & EditDateRecorded.Month
            End If
        
            While Index < ColumnLabel.UBound And ColumnLabel(Index).Visible = True
                If EditDataType = "SECCHI" And ColumnLabel(Index).Caption = "SECCHI_DEPTH" Then
                    ' need to calculate and insert the derived parameters based on secchi depth
                    Call AddDerivedSecchiValues(ColumnsClause, ValuesClause, EditColumn(Index).Text)
        
                Else
                    ColumnsClause = ColumnsClause & "," & ColumnLabel(Index).Caption
                    If ColumnDataType(Index) = "VARCHAR2" Then
                        If EditColumn(Index).Text <> "" Then
                            ValuesClause = ValuesClause & ",'" & Replace(EditColumn(Index).Text, "'", "''") & "'"
                        Else
                            ValuesClause = ValuesClause & ",NULL"
                        End If
                    Else
                        If EditColumn(Index).Text <> "" Then
                            ValuesClause = ValuesClause & "," & EditColumn(Index).Text
                        Else
                            ValuesClause = ValuesClause & ",NULL"
                        End If
                    End If
                End If
                Index = Index + 1
            Wend
            
            SQLQuery = "INSERT INTO " & MarineLifeSearch.DataTable(EditDataType) & " ( " & _
                        ColumnsClause & " ) VALUES ( " & ValuesClause & " ) "
            
            OraDatabase.ExecuteSQL (SQLQuery)
            
            OraDatabase.CommitTrans
            
        End If
        
        
        
    End If
    Unload Me
 Exit Sub
SaveButton_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing save :" & err.Number & " " & err.description
End If
    
End Sub
