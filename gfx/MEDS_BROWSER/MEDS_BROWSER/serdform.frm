VERSION 5.00
Begin VB.Form Serdform 
   Caption         =   "Form1"
   ClientHeight    =   4815
   ClientLeft      =   7950
   ClientTop       =   6075
   ClientWidth     =   3315
   LinkTopic       =   "Form1"
   ScaleHeight     =   4815
   ScaleWidth      =   3315
   Begin VB.Frame Frame1 
      Caption         =   "Physical Profiles"
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
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   3015
      Begin VB.CheckBox Instrument 
         Caption         =   "Quick Access"
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   10
         Top             =   3120
         Width           =   2295
      End
      Begin VB.CommandButton CancelBtn 
         Caption         =   "Cancel"
         Height          =   495
         Left            =   1560
         TabIndex        =   9
         Top             =   3720
         Width           =   855
      End
      Begin VB.CommandButton OkBtn 
         Caption         =   "OK"
         Height          =   495
         Left            =   360
         TabIndex        =   8
         Top             =   3720
         Width           =   855
      End
      Begin VB.CheckBox Instrument 
         Caption         =   "Instrument identification on"
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   7
         Top             =   2760
         Width           =   2295
      End
      Begin VB.ComboBox Month 
         Height          =   315
         Left            =   360
         TabIndex        =   6
         Text            =   "Please select"
         Top             =   2160
         Width           =   2175
      End
      Begin VB.ComboBox Year 
         Height          =   315
         Left            =   360
         TabIndex        =   4
         Text            =   "Please select"
         Top             =   1440
         Width           =   2175
      End
      Begin VB.ComboBox SerdType 
         Height          =   315
         Left            =   360
         TabIndex        =   2
         Text            =   "Please select"
         Top             =   720
         Width           =   2175
      End
      Begin VB.Label Label2 
         Caption         =   "Month"
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
         Left            =   360
         TabIndex        =   5
         Top             =   1920
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Year"
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
         Left            =   360
         TabIndex        =   3
         Top             =   1200
         Width           =   1335
      End
      Begin VB.Label Label1 
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
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   1095
      End
   End
End
Attribute VB_Name = "Serdform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CancelBtn_Click()
    Unload Me
End Sub

Private Sub Form_Load()

    SerdType.AddItem "TONLY"
    SerdType.AddItem "TS"
    SerdType.AddItem "SV"
    
    For i = 1 To 12
        Month.AddItem MonthName(i)
    Next
    
    For i = 1940 To 2000
        Year.AddItem i
    Next
    
End Sub


Private Sub OkBtn_Click()
    Dim Ds As mapxlib.Dataset
    Dim Flds As New mapxlib.Fields
    Dim BindLayerObject As New BindLayer
    Dim ReturnArray() As Variant
    Dim Results As Object
    Dim SQlRows As Long
    Dim JobQuery As String
    Dim Lyr As Layer
    Dim PosnQuery As String
    Dim LayerName As String
    Dim lgd As Legend
    Screen.MousePointer = vbHourglass
    
    If Instrument(1).Value = 0 Then
        PosnQuery = "LONGITUDE BETWEEN " & Main.Map1.Bounds.Xmin & " AND " & Main.Map1.Bounds.Xmax & " AND " & _
               "LATITUDE BETWEEN " & Main.Map1.Bounds.Ymin & " AND " & Main.Map1.Bounds.Ymax
        
        TableName = "PROFILE_INDEX_" & SerdType.List(SerdType.ListIndex)
        DataTable = "PROFILE_DATA_" & SerdType.List(SerdType.ListIndex)
    Else
        PosnQuery = "LONGITUDE BETWEEN  3.85  AND  4.11  AND " & _
             "LATITUDE BETWEEN 62.7 AND 62.83 "
        TableName = "PROFILE_INDEX_TONLY"
        DataTable = "PROFILE_DATA_TONLY"
    End If
    
    YR = Year.List(Year.ListIndex)
    MTH = Month.List(Month.ListIndex)
    
    If YR <> "" Then Temporal = " AND YEAR = " & YR
    If MTH <> "" Then Temporal = Temporal & " AND MONTH = " & Month.ListIndex + 1
    
    'Load data base information into values array
    JobQuery = "SELECT COUNT(MEDS_JOB_NUMBER) " _
            & "FROM " & TableName _
            & " WHERE " & PosnQuery & Temporal
   
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    Main.Text1 = 0
    Main.Text2 = Results("COUNT(MEDS_JOB_NUMBER)")
    Main.Text1.Visible = True
    Main.Text2.Visible = True
    Main.Refresh
    
If Results("COUNT(MEDS_JOB_NUMBER)") > 0 Then
    LayerName = "P_" & MTH & YR
    
    ReDim ReturnArray(1 To Results("COUNT(MEDS_JOB_NUMBER)"), 1 To 6)
        
     JobQuery = "SELECT " & TableName & ".ROWID, MEDS_JOB_NUMBER, MEDS_OBSERVATION_NUMBER, LATITUDE, LONGITUDE, INSTRUMENT.DESCRIPTION " _
            & "FROM " & TableName & ", INSTRUMENT" _
            & " WHERE " & PosnQuery & Temporal _
            & " AND " & TableName & ".INSTRUMENT_CODE = INSTRUMENT.OCEAN"
        
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    SQlRows = 1
    
    'split dynaset based on attributes
      
    While Not Results.EOF
        Main.Text1 = SQlRows
        Main.Refresh
        ReturnArray(SQlRows, 1) = (Results("ROWID"))
        ReturnArray(SQlRows, 2) = (Results("MEDS_JOB_NUMBER"))
        ReturnArray(SQlRows, 3) = (Results("MEDS_OBSERVATION_NUMBER"))
        ReturnArray(SQlRows, 4) = (Results("LATITUDE"))
        ReturnArray(SQlRows, 5) = (Results("LONGITUDE"))
        ReturnArray(SQlRows, 6) = (Results("DESCRIPTION"))
        Results.MoveNext
        SQlRows = SQlRows + 1
       
    Wend
    
    Flds.Add 1, "RowId", miAggregationIndividual, miTypeString
    Flds.Add 2, "MEDS_Job_Number", miAggregationIndividual, miTypeNumeric
    Flds.Add 3, "MEDS_Observation_Number", miAggregationIndividual, miTypeNumeric
    Flds.Add 4, "Latitude", miAggregationIndividual, miTypeNumeric
    Flds.Add 5, "Longitude", miAggregationIndividual, miTypeNumeric
    Flds.Add 6, "Instrument_Type", miAggregationIndividual, miTypeString
    
    BindLayerObject.LayerName = LayerName
    BindLayerObject.RefColumn1 = 5
    BindLayerObject.RefColumn2 = 4
    BindLayerObject.LayerType = miBindLayerTypeXY
    
    Set Ds = Main.Map1.Datasets.Add(miDataSetSafeArray, ReturnArray, LayerName, 1, , BindLayerObject, Flds)
    
    If Instrument(0).Value = 1 Then
        Ds.Themes.Add miThemeIndividualValue, 6
        Ds.Themes(1).ThemeDlg
        Ds.Themes(1).Legend.LegendDlg
    End If
    
    Set Lyr = Main.Map1.Layers(LayerName)

    Lyr.OverrideStyle = True
    Lyr.Style.SymbolType = miSymbolTypeBitmap
    Lyr.Style.SymbolBitmapOverrideColor = True
    Lyr.Style.SymbolBitmapTransparent = True
    Lyr.Style.SymbolBitmapSize = 10
    Lyr.Style.SymbolBitmapName = "observed.bmp"
    
    If Instrument(0).Value = 0 Then
        If SerdType.List(SerdType.ListIndex) = "TONLY" Then
            Lyr.Style.SymbolBitmapColor = miColorRed
        ElseIf SerdType.List(SerdType.ListIndex) = "TS" Then
            Lyr.Style.SymbolBitmapColor = miColorBlack
        Else
            Lyr.Style.SymbolBitmapColor = miColor
        End If
    End If
    
    Lyr.Selectable = True
    
    Call Main.UpdateSelectableLayer

    Main.Text1.Visible = False
    Main.Text2.Visible = False
    
    Main.Map1.Refresh
    
    Screen.MousePointer = Default
    
    SQLCurrentLayer(0) = "OBSERVED"
    SQLCurrentLayer(1) = "PHYSICAL PROFILE"
    SQLCurrentLayer(2) = ""
    SQLCurrentLayer(3) = DataTable
    SQLCurrentLayer(4) = TableName
    SQLCurrentLayer(5) = ""
    SQLCurrentLayer(6) = "REPEAT"
    
    AdditionalInfo.StoreSQLLayer LayerName, JobQuery, "PARENT LAYER"
End If

Unload Me
End Sub


