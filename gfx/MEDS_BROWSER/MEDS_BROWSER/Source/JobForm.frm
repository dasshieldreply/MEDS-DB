VERSION 5.00
Object = "{8E27C92E-1264-101C-8A2F-040224009C02}#7.0#0"; "MSCAL.OCX"
Begin VB.Form JobForm 
   Caption         =   "User job details "
   ClientHeight    =   5835
   ClientLeft      =   7740
   ClientTop       =   5235
   ClientWidth     =   5460
   LinkTopic       =   "Form1"
   ScaleHeight     =   5835
   ScaleWidth      =   5460
   Begin MSACAL.Calendar Calendar1 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "dd/MMM/yyyy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2057
         SubFormatType   =   3
      EndProperty
      Height          =   2895
      Left            =   240
      TabIndex        =   2
      Top             =   5880
      Width           =   4815
      _Version        =   524288
      _ExtentX        =   8493
      _ExtentY        =   5106
      _StockProps     =   1
      BackColor       =   -2147483633
      Year            =   2002
      Month           =   2
      Day             =   9
      DayLength       =   1
      MonthLength     =   2
      DayFontColor    =   0
      FirstDay        =   1
      GridCellEffect  =   1
      GridFontColor   =   10485760
      GridLinesColor  =   -2147483632
      ShowDateSelectors=   -1  'True
      ShowDays        =   -1  'True
      ShowHorizontalGrid=   -1  'True
      ShowTitle       =   -1  'True
      ShowVerticalGrid=   -1  'True
      TitleFontColor  =   10485760
      ValueIsNull     =   0   'False
      BeginProperty DayFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty GridFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty TitleFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame JobDetails 
      Caption         =   "Job details (all optional)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5415
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   4935
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
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
         TabIndex        =   16
         Top             =   4680
         Width           =   1215
      End
      Begin VB.TextBox MEDSJobNumber 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         Height          =   375
         Left            =   2640
         TabIndex        =   12
         Text            =   "0"
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton FinishedButton 
         Caption         =   "Finished"
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
         Left            =   3360
         TabIndex        =   10
         Top             =   4680
         Width           =   1215
      End
      Begin VB.CommandButton CancelButton 
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
         Height          =   495
         Left            =   360
         TabIndex        =   9
         Top             =   4680
         Width           =   1215
      End
      Begin VB.ComboBox DUCList 
         Height          =   315
         Left            =   480
         TabIndex        =   8
         Text            =   "Select Data Use Code (DUC)"
         Top             =   2040
         Width           =   4215
      End
      Begin VB.ComboBox StaffList 
         Height          =   315
         Left            =   480
         TabIndex        =   7
         Text            =   "Select processor"
         Top             =   1320
         Width           =   4215
      End
      Begin VB.TextBox DateEnd 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   2640
         Locked          =   -1  'True
         TabIndex        =   6
         Text            =   "End date"
         Top             =   3840
         Width           =   1935
      End
      Begin VB.CheckBox DateEndCheck 
         Caption         =   "Archieve Date (end)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   5
         Top             =   3840
         Width           =   2055
      End
      Begin VB.TextBox DateStart 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   2640
         Locked          =   -1  'True
         TabIndex        =   4
         Text            =   "Start date"
         Top             =   3240
         Width           =   1935
      End
      Begin VB.CheckBox DateStartCheck 
         Caption         =   "Archive Date (start)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   3
         Top             =   3240
         Width           =   2055
      End
      Begin VB.ComboBox ProtectionList 
         Height          =   315
         Left            =   480
         TabIndex        =   1
         Text            =   "Select classification"
         Top             =   600
         Width           =   4215
      End
      Begin VB.Label Classification 
         Caption         =   "Classification"
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
         Left            =   480
         TabIndex        =   15
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Processor 
         Caption         =   "Processor "
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
         Left            =   480
         TabIndex        =   14
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label DUC 
         Caption         =   "Data Use Code"
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
         Left            =   480
         TabIndex        =   13
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label JobNumber 
         Caption         =   "MEDS Job Number"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   11
         Top             =   2760
         Width           =   1815
      End
   End
End
Attribute VB_Name = "JobForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'This form is an optional in the user layer creation wizard it allows the user to
'set where conditions based on job level meta data on the data load.
'The Job details are obtained from a combination of information of ORACLE Table JOB_LOOKUP
'and user entered details.

'Author:
'Date:              23/01/02
'Version:           1.0
'Ammendments:


Dim DateSelect As Integer       'An integer to indicat which date type was last clicked
                                'A 1 indicates start date, 0 end date and -1 indicated not used

Private Sub Form_Load()

'On first load access data base table JOB_LOOKUPS and populate the drop down lists

    Dim JobQuery As String
    Dim Results As Object
    Dim i As Integer
    
    'Reset Form
    
    Reset
    
    'Load from database DUC values
    
    JobQuery = "SELECT * FROM JOB_LOOKUPS WHERE TYPE = 'DUC'"
      
    'Create a dynaset and store it in results
    
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)

    'While data in dynaset populate the DUC list drop down
    
    While Not Results.EOF
        DUCList.AddItem (Results("description"))
        Results.MoveNext
        i = i + 1
    Wend

    'Load from database Protection (classifications)
    
    JobQuery = "SELECT * FROM JOB_LOOKUPS WHERE TYPE = 'Protection'"
        
    'Create a dynaset and store it in results
    
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    'While data in dynaset populate the Protection list drop down

    While Not Results.EOF
        ProtectionList.AddItem (Results("description"))
        Results.MoveNext
        i = i + 1
    Wend
    
    'Load from database Processor names
    
    JobQuery = "SELECT * FROM JOB_LOOKUPS WHERE TYPE = 'Processor'"
            
    'Create a dynaset and store it in results
    
    Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
    
    'While data in dynaset populate the Staff list drop down
    
    While Not Results.EOF
        StaffList.AddItem (Results("description"))
        Results.MoveNext
        i = i + 1
    Wend
    
End Sub

Private Sub Calendar1_Click()

'Results from clicking on the calander are interpretted and displayed in appropriate text boxes

    If DateSelect = 0 Then
        DateEnd.Text = Calendar1.Day & "/" & MonthName(Calendar1.Month) & "/" & Calendar1.Year
    ElseIf DateSelect = 1 Then
        DateStart.Text = Calendar1.Day & "/" & MonthName(Calendar1.Month) & "/" & Calendar1.Year
    End If
    
End Sub


Private Sub DateEndCheck_Click()

'Reset height to view or hide Calender
    
    If DateEndCheck.value = 1 Then
        DateSelect = 0
        JobForm.height = 9360
    Else
        DateSelect = -1
        JobForm.height = 6210
    End If
    
End Sub

Private Sub DateStartCheck_Click()

'Reset height to view or hide Calender

    If DateStartCheck.value = 1 Then
        DateSelect = 1
        JobForm.height = 9360
    Else
        DateSelect = -1
        JobForm.height = 6210
    End If
    
End Sub

Private Sub Reset()
'reset the form to default values

    MedsJobNumber.Locked = False
    
    DUCList.Text = "Please select a DUC code"
    ProtectionList.Text = "Please select the classification"
    StaffList.Text = "Please select a processor"
    MedsJobNumber.Text = "0"
    DateStart.Text = "Start date"
    DateEnd.Text = "End date"
    
    DateSelect = -1
    DateEndCheck.value = 0
    DateStartCheck.value = 0
    
    JobForm.height = 6210
End Sub

Private Sub CancelButton_Click()
'reset form and hide it

    Reset
    Unload Me
End Sub

Private Sub ResetButton_Click()
'reset form
    Reset
End Sub

Private Sub FinishedButton_Click()
'Construct the Where Query and send it back to the addionalInfo form

    Dim JobWhereQuery As String
    Dim AndStatus As Boolean
    
    'Set And status to False - only true extra queries are added
    
    AndStatus = False
    
    'Create a condition clause for retrieving job information
    
    'Is DUC set ?
    If Not (DUCList.Text = "Please select a DUC code") Then
        JobWhereQuery = " " & SQLJobAlias & ".data_use_code =" & left$(DUCList.Text, 2)
        AndStatus = True
    End If
    
    'Is Classification Set?
    If Not (ProtectionList.Text = "Please select the classification") Then
        If AndStatus Then JobWhereQuery = JobWhereQuery & " AND"
        JobWhereQuery = JobWhereQuery & " " & SQLJobAlias & ".protection = " & ProtectionList.Text
        AndStatus = True
    End If
    
    'Is Processor Set?
    If Not (StaffList.Text = "Please select a processor") Then
        If AndStatus Then JobWhereQuery = JobWhereQuery & " AND"
        JobWhereQuery = JobWhereQuery & " " & SQLJobAlias & ".processor = " & StaffList.Text
        AndStatus = True
    End If
    
    'Is Job number Set?
    If Not (MedsJobNumber.Text = "0") Then
        If AndStatus Then JobWhereQuery = JobWhereQuery & " AND"
        JobWhereQuery = JobWhereQuery & " " & SQLJobAlias & ".job_number = " & MedsJobNumber.Text
        
        'Also need to update the where clause on the base SQL
        
        SQLBaseWhere = SQLCurrentLayer(SQLHeaderTableIdx) & " = " & MedsJobNumber.Text
        AndStatus = True
    End If
          
    'Is start date Set?
    If Not (DateStart.Text = "Start date") Then
        If AndStatus Then JobWhereQuery = JobWhereQuery & " AND"
        JobWhereQuery = JobWhereQuery & " " & SQLJobAlias & ".archive_date >= " & "'" & DateStart.Text & "'"
        AndStatus = True
    End If
    
    'Is End date Set?
    If Not (DateEnd.Text = "End date") Then
        If AndStatus Then JobWhereQuery = JobWhereQuery & " AND"
        JobWhereQuery = JobWhereQuery & " " & SQLJobAlias & ".archive_date <= " & "'" & DateEnd.Text & "'"
        AndStatus = True
    End If
    
    'Send Query back to Original form
    
    AdditionalInfo.JobWhereClause JobWhereQuery
    
    'reset data and hide the form
    Reset
    Unload Me
End Sub
