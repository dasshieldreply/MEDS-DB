VERSION 5.00
Begin VB.Form JobStatistics 
   Caption         =   "Job Statistics"
   ClientHeight    =   6450
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9360
   LinkTopic       =   "Form1"
   ScaleHeight     =   6450
   ScaleWidth      =   9360
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton ViewResultsButton 
      Caption         =   "View Results"
      Height          =   615
      Left            =   3480
      TabIndex        =   42
      Top             =   5640
      Width           =   2295
   End
   Begin VB.CommandButton ExitButton 
      Caption         =   "Exit"
      Height          =   615
      Left            =   6720
      TabIndex        =   41
      Top             =   5640
      Width           =   1935
   End
   Begin VB.Frame Frame13 
      Caption         =   "Period 4"
      Height          =   1095
      Left            =   240
      TabIndex        =   28
      Top             =   4080
      Width           =   9015
      Begin VB.CheckBox Totalize 
         Height          =   255
         Index           =   3
         Left            =   7680
         TabIndex        =   46
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   735
         Index           =   3
         Left            =   8160
         TabIndex        =   40
         Top             =   240
         Width           =   735
      End
      Begin VB.Frame Frame16 
         Caption         =   "From"
         Height          =   735
         Left            =   120
         TabIndex        =   33
         Top             =   240
         Width           =   2535
         Begin VB.ComboBox FromDay 
            Height          =   315
            Index           =   3
            Left            =   120
            TabIndex        =   36
            Top             =   240
            Width           =   615
         End
         Begin VB.ComboBox FromMonth 
            Height          =   315
            Index           =   3
            Left            =   840
            TabIndex        =   35
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromYear 
            Height          =   315
            Index           =   3
            Left            =   1680
            TabIndex        =   34
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.Frame Frame15 
         Caption         =   "Interval"
         Height          =   735
         Left            =   3000
         TabIndex        =   31
         Top             =   240
         Width           =   2415
         Begin VB.ComboBox Interval 
            Height          =   315
            Index           =   3
            Left            =   120
            TabIndex        =   32
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame14 
         Caption         =   "No Of Intervals"
         Height          =   735
         Left            =   5640
         TabIndex        =   29
         Top             =   240
         Width           =   1815
         Begin VB.ComboBox NumberOfIntervals 
            Height          =   315
            Index           =   3
            Left            =   120
            TabIndex        =   30
            Top             =   240
            Width           =   1575
         End
      End
      Begin VB.Label Label4 
         Caption         =   "Total"
         Height          =   255
         Left            =   7680
         TabIndex        =   50
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame9 
      Caption         =   "Period 3"
      Height          =   1095
      Left            =   240
      TabIndex        =   19
      Top             =   2760
      Width           =   9015
      Begin VB.CheckBox Totalize 
         Height          =   255
         Index           =   2
         Left            =   7680
         TabIndex        =   45
         Top             =   600
         Width           =   375
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   735
         Index           =   2
         Left            =   8160
         TabIndex        =   39
         Top             =   240
         Width           =   735
      End
      Begin VB.Frame Frame12 
         Caption         =   "No Of Intervals"
         Height          =   735
         Left            =   5640
         TabIndex        =   26
         Top             =   240
         Width           =   1815
         Begin VB.ComboBox NumberOfIntervals 
            Height          =   315
            Index           =   2
            Left            =   120
            TabIndex        =   27
            Top             =   240
            Width           =   1575
         End
      End
      Begin VB.Frame Frame11 
         Caption         =   "Interval"
         Height          =   735
         Left            =   3000
         TabIndex        =   24
         Top             =   240
         Width           =   2415
         Begin VB.ComboBox Interval 
            Height          =   315
            Index           =   2
            Left            =   120
            TabIndex        =   25
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "From"
         Height          =   735
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Width           =   2535
         Begin VB.ComboBox FromYear 
            Height          =   315
            Index           =   2
            Left            =   1680
            TabIndex        =   23
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromMonth 
            Height          =   315
            Index           =   2
            Left            =   840
            TabIndex        =   22
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromDay 
            Height          =   315
            Index           =   2
            Left            =   120
            TabIndex        =   21
            Top             =   240
            Width           =   615
         End
      End
      Begin VB.Label Label3 
         Caption         =   "Total"
         Height          =   255
         Left            =   7680
         TabIndex        =   49
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Period 2"
      Height          =   1095
      Left            =   240
      TabIndex        =   10
      Top             =   1440
      Width           =   9015
      Begin VB.CheckBox Totalize 
         Height          =   255
         Index           =   1
         Left            =   7680
         TabIndex        =   44
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   735
         Index           =   1
         Left            =   8160
         TabIndex        =   38
         Top             =   240
         Width           =   735
      End
      Begin VB.Frame Frame8 
         Caption         =   "From"
         Height          =   735
         Left            =   120
         TabIndex        =   15
         Top             =   240
         Width           =   2535
         Begin VB.ComboBox FromDay 
            Height          =   315
            Index           =   1
            Left            =   120
            TabIndex        =   18
            Top             =   240
            Width           =   615
         End
         Begin VB.ComboBox FromMonth 
            Height          =   315
            Index           =   1
            Left            =   840
            TabIndex        =   17
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromYear 
            Height          =   315
            Index           =   1
            Left            =   1680
            TabIndex        =   16
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Interval"
         Height          =   735
         Left            =   3000
         TabIndex        =   13
         Top             =   240
         Width           =   2415
         Begin VB.ComboBox Interval 
            Height          =   315
            Index           =   1
            Left            =   120
            TabIndex        =   14
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "No Of Intervals"
         Height          =   735
         Left            =   5640
         TabIndex        =   11
         Top             =   240
         Width           =   1815
         Begin VB.ComboBox NumberOfIntervals 
            Height          =   315
            Index           =   1
            Left            =   120
            TabIndex        =   12
            Top             =   240
            Width           =   1575
         End
      End
      Begin VB.Label Label2 
         Caption         =   "Total"
         Height          =   255
         Left            =   7680
         TabIndex        =   48
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Period 1"
      Height          =   1095
      Left            =   240
      TabIndex        =   1
      Top             =   120
      Width           =   9015
      Begin VB.CheckBox Totalize 
         Height          =   255
         Index           =   0
         Left            =   7680
         TabIndex        =   43
         Top             =   600
         Width           =   255
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   735
         Index           =   0
         Left            =   8160
         TabIndex        =   37
         Top             =   240
         Width           =   735
      End
      Begin VB.Frame Frame3 
         Caption         =   "No Of Intervals"
         Height          =   735
         Left            =   5640
         TabIndex        =   6
         Top             =   240
         Width           =   1815
         Begin VB.ComboBox NumberOfIntervals 
            Height          =   315
            Index           =   0
            Left            =   120
            TabIndex        =   9
            Top             =   240
            Width           =   1575
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Interval"
         Height          =   735
         Left            =   3000
         TabIndex        =   3
         Top             =   240
         Width           =   2415
         Begin VB.ComboBox Interval 
            Height          =   315
            Index           =   0
            Left            =   120
            TabIndex        =   4
            Top             =   240
            Width           =   2175
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "From"
         Height          =   735
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2535
         Begin VB.ComboBox FromYear 
            Height          =   315
            Index           =   0
            Left            =   1680
            TabIndex        =   8
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromMonth 
            Height          =   315
            Index           =   0
            Left            =   840
            TabIndex        =   7
            Top             =   240
            Width           =   735
         End
         Begin VB.ComboBox FromDay 
            Height          =   315
            Index           =   0
            Left            =   120
            TabIndex        =   5
            Top             =   240
            Width           =   615
         End
      End
      Begin VB.Label Label1 
         Caption         =   "Total"
         Height          =   255
         Left            =   7680
         TabIndex        =   47
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.CommandButton GenerateButton 
      Caption         =   "Generate Statistics"
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   5640
      Width           =   2055
   End
End
Attribute VB_Name = "JobStatistics"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub ClearButton_Click()
    Dim Results As Object
    Dim SQLQuery As String
    
    SQLQuery = "DELETE FROM job_stats"
    
    OraDatabase.BeginTrans
    OraDatabase.ExecuteSQL (SQLQuery)
    OraDatabase.CommitTrans
    
    MsgBox "job_stats table has been cleared"

End Sub

Private Sub ExitButton_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    Dim i As Integer
    Dim j As Integer
    Dim SQLQuery As String
    Dim Results As Object
    
    For i = 0 To FromDay.Count - 1
        Call EditJobTracking.InitialiseDateField(FromDay(i), FromMonth(i), FromYear(i))
        Interval(i).AddItem "month"
        Interval(i).AddItem "year"
        Totalize(i).value = 0
        
        For j = 1 To 24
            NumberOfIntervals(i).AddItem Str(j)
        Next j

    Next i
    
    SQLQuery = "SELECT value, day, month, year, interval, num_intervals, total FROM job_stats_settings "
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        Dim period As Integer
        period = Val(Results("value"))
        
        If period <= FromDay.Count - 1 Then
            FromDay(period).Text = Results("day")
            FromMonth(period).Text = Results("month")
            FromYear(period).Text = Results("year")
            Interval(period).Text = Results("interval")
            NumberOfIntervals(period).Text = Results("num_intervals")
            If Val(Results("total")) > 0 Then
                Totalize(period).value = 1
            End If
        End If
        Results.MoveNext
    Wend
    
End Sub


Private Sub ResetButton_Click(Index As Integer)
    If Index <= FromDay.Count - 1 Then
        FromDay(Index).Text = ""
        FromMonth(Index).Text = ""
        FromYear(Index).Text = ""
        Interval(Index).Text = ""
        NumberOfIntervals(Index).Text = ""
    End If
End Sub


Private Sub IntervalToDateAddFormat(Interval As String, ByRef date_add_format As String)
    If Interval = "month" Then
        date_add_format = "m"
    ElseIf Interval = "year" Then
        date_add_format = "yyyy"
    ElseIf Interval = "week" Then
        date_add_format = "w"
    End If
End Sub

Private Sub GenerateButton_Click()
    Dim Results As Object
    Dim SQLQuery As String
    Dim i As Integer
    
    OraDatabase.BeginTrans
    
    SQLQuery = "DELETE FROM stats_period"
    OraDatabase.ExecuteSQL (SQLQuery)
    
    SQLQuery = "DELETE FROM job_stats"
    OraDatabase.ExecuteSQL (SQLQuery)
    
    SQLQuery = "DELETE from job_stats_settings"
    OraDatabase.ExecuteSQL (SQLQuery)
    
    OraDatabase.CommitTrans
    
    OraDatabase.BeginTrans
    
    For i = 0 To FromDay.Count - 1
        If FromDay(i).Text <> "" And FromMonth(i).Text <> "" And FromYear(i).Text <> "" And _
            Interval(i).Text <> "" And NumberOfIntervals(i).Text <> "" _
        Then
            Dim j As Integer
            Dim start_period As Date
            Dim total_start_period As Date
            Dim total_end_period As Date
            Dim end_period As Date
            Dim dateAddFormat As String
            
            Dim strStart As String
            
            SQLQuery = "INSERT INTO job_stats_settings ( value, day, month, year, interval, num_intervals, total ) VALUES ( " & _
                    i & "," & FromDay(i).Text & ",'" & FromMonth(i).Text & "'," & FromYear(i).Text & "," & _
                    "'" & Interval(i).Text & "'," & NumberOfIntervals(i).Text
            If Totalize(i).value = 1 Then
                SQLQuery = SQLQuery & ", 1 )"
            Else
                SQLQuery = SQLQuery & ", 0 )"
            End If
            
            OraDatabase.ExecuteSQL (SQLQuery)
            
            Call IntervalToDateAddFormat(Interval(i).Text, dateAddFormat)
                
            strStart = FromDay(i).Text & "/" & FromMonth(i).Text & "/" & FromYear(i).Text
            
            start_period = DateValue(strStart)
            total_start_period = start_period
            end_period = DateAdd(dateAddFormat, 1, start_period)
            
            For j = 0 To Val(NumberOfIntervals(i).Text) - 1
                If Totalize(i).value = 0 Then
                    SQLQuery = "INSERT INTO stats_period ( period_start, period_end ) " & _
                           "VALUES ( TO_DATE('" & Day(start_period) & "/" & Month(start_period) & "/" & Year(start_period) & "','DD/MM/YYYY')," & _
                                    "TO_DATE('" & Day(end_period) & "/" & Month(end_period) & "/" & Year(end_period) & "','DD/MM/YYYY') )"
                
                    OraDatabase.ExecuteSQL (SQLQuery)
                End If
                
                total_end_period = end_period
                start_period = end_period
                end_period = DateAdd(dateAddFormat, 1, start_period)
            Next j
            
            If Totalize(i).value = 1 Then
                SQLQuery = "INSERT INTO stats_period ( period_start, period_end ) " & _
                           "VALUES ( TO_DATE('" & Day(total_start_period) & "/" & Month(total_start_period) & "/" & Year(total_start_period) & "','DD/MM/YYYY')," & _
                                    "TO_DATE('" & Day(total_end_period) & "/" & Month(total_end_period) & "/" & Year(total_end_period) & "','DD/MM/YYYY') )"
                
                OraDatabase.ExecuteSQL (SQLQuery)
            End If
        End If
    Next i
    
    OraDatabase.CommitTrans
    
    OraDatabase.BeginTrans
    
    SQLQuery = "Insert Into job_stats " & _
                "SELECT " & _
                    "description," & _
                    "period_start," & _
                    "period_end," & _
                    "sum(no_obs) received, " & _
                    "sum(obs_accepted) accecpted , " & _
                    "sum(obs_rejected) rejected, " & _
                    "NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL " & _
                "From " & _
                    "job_tracking j, meds_job_type t, stats_period s " & _
                "Where " & _
                    "j.job_type_number = t.job_type_number and " & _
                    "date_received between s.period_start and s.period_end " & _
                    "group by description, period_start, period_end"
                    
    OraDatabase.ExecuteSQL (SQLQuery)

    SQLQuery = "Update job_stats s " & _
                "SET "
    SQLQuery = SQLQuery & _
            "on_time = ( " & _
            "SELECT  sum(no_obs) From " & _
                "job_tracking j, meds_job_type t, stats_period p " & _
            "Where j.job_type_number = t.job_type_number AND " & _
                " s.period_start = p.period_start and s.period_end = p.period_end AND " & _
                " date_received between p.period_start and p.period_end AND " & _
                " qa_processing_completed IS NOT NULL AND qa_processing_completed <= qa_processing_target AND " & _
                " t.description = s.description ),"
    SQLQuery = SQLQuery & _
        "late = ( " & _
        "SELECT sum(no_obs) " & _
        "From job_tracking j, meds_job_type t, stats_period p " & _
        "Where j.job_type_number = t.job_type_number AND " & _
               " s.period_start = p.period_start and s.period_end = p.period_end AND " & _
               " date_received between p.period_start and p.period_end AND " & _
               " qa_processing_completed IS NOT NULL AND qa_processing_completed > qa_processing_target AND " & _
               " t.description = s.description ),"
    SQLQuery = SQLQuery & _
        "month_late_1 = ( " & _
        "SELECT sum(no_obs) " & _
            "From job_tracking j, meds_job_type t, stats_period p " & _
            "Where j.job_type_number = t.job_type_number AND " & _
              " s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              " qa_processing_completed IS NOT NULL AND " & _
               " qa_processing_completed > qa_processing_target AND " & _
               " qa_processing_completed <= ADD_MONTHS(qa_processing_target, 1) AND " & _
               " t.description = s.description ),"
    SQLQuery = SQLQuery & _
        "month_late_1_3 = ( " & _
        "SELECT sum(no_obs) " & _
        "From job_tracking j, meds_job_type t, stats_period p " & _
        "Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
             "  qa_processing_completed IS NOT NULL AND " & _
              " qa_processing_completed > ADD_MONTHS(qa_processing_target, 1) AND " & _
              " qa_processing_completed <= ADD_MONTHS(qa_processing_target, 3) AND " & _
              " t.description = s.description ),"
    SQLQuery = SQLQuery & _
        "month_late_3_6 = ( " & _
        "SELECT sum(no_obs) " & _
        "FROM job_tracking j, meds_job_type t, stats_period p " & _
        "Where j.job_type_number = t.job_type_number AND " & _
               " s.period_start = p.period_start and s.period_end = p.period_end AND " & _
               " date_received between p.period_start and p.period_end AND " & _
               " qa_processing_completed IS NOT NULL AND " & _
               " qa_processing_completed > ADD_MONTHS(qa_processing_target, 3) AND " & _
               " qa_processing_completed <= ADD_MONTHS(qa_processing_target, 6) AND " & _
               " t.description = s.description )"

    OraDatabase.ExecuteSQL (SQLQuery)
    
    SQLQuery = "Update job_stats s SET "
    SQLQuery = SQLQuery & _
        "waiting = ( SELECT sum(no_obs) " & _
        " From job_tracking j, meds_job_type t, stats_period p " & _
        " Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
              " t.description = s.description ), "
    
    SQLQuery = SQLQuery & _
        "waiting_on_time = ( SELECT sum(no_obs) " & _
            "From job_tracking j, meds_job_type t, stats_period p " & _
            "Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
              "  SYSDATE <= qa_processing_target AND " & _
              "  t.description = s.description ), "
    
    SQLQuery = SQLQuery & _
        "waiting_late = ( SELECT sum(no_obs) " & _
        "From job_tracking j, meds_job_type t, stats_period p " & _
        "Where j.job_type_number = t.job_type_number AND " & _
             "   s.period_start = p.period_start and s.period_end = p.period_end AND " & _
             "   date_received between p.period_start and p.period_end AND " & _
             "   qa_processing_completed IS NULL AND " & _
             "   SYSDATE > qa_processing_target AND " & _
             "   t.description = s.description  ),"
             
    SQLQuery = SQLQuery & _
        "waiting_late_1 = ( SELECT sum(no_obs) " & _
            "From job_tracking j, meds_job_type t, stats_period p " & _
            "Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
              "  SYSDATE > qa_processing_target AND " & _
              "  SYSDATE <= ADD_MONTHS( qa_processing_target,1 ) AND " & _
               " t.description = s.description ), "
               
    SQLQuery = SQLQuery & _
    "waiting_late_1_3 = ( SELECT sum(no_obs)  " & _
            "From job_tracking j, meds_job_type t, stats_period p " & _
            "Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
               " SYSDATE > ADD_MONTHS(qa_processing_target, 1) AND " & _
              "  SYSDATE <= ADD_MONTHS(qa_processing_target, 3) AND " & _
              "  t.description = s.description  ),"
              
    SQLQuery = SQLQuery & _
        "waiting_late_3_6 = ( SELECT sum(no_obs) " & _
           " From job_tracking j, meds_job_type t, stats_period p " & _
          "  Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
              "  SYSDATE > ADD_MONTHS(qa_processing_target, 3) AND " & _
              "  SYSDATE <= ADD_MONTHS(qa_processing_target, 6) AND " & _
              "  t.description = s.description ),"
                
    SQLQuery = SQLQuery & _
    "waiting_greater_6 = ( SELECT sum(no_obs) " & _
           " From job_tracking j, meds_job_type t, stats_period p " & _
           " Where j.job_type_number = t.job_type_number AND " & _
              "  s.period_start = p.period_start and s.period_end = p.period_end AND " & _
              "  date_received between p.period_start and p.period_end AND " & _
              "  qa_processing_completed IS NULL AND " & _
              "  SYSDATE > qa_processing_target AND " & _
              "  SYSDATE > ADD_MONTHS(qa_processing_target, 6) AND " & _
              "  t.description = s.description)"

    OraDatabase.ExecuteSQL (SQLQuery)
    
    OraDatabase.CommitTrans

    SQLQuery = "SELECT count(*) from job_stats"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Not Results.EOF Then
         MsgBox Results("count(*)") & " rows of statistics are loaded to table 'job_stats'"
    End If
End Sub

Private Sub ViewResultsButton_Click()
    Call JobTracking.ViewInExcel("statistics.xls")
End Sub
