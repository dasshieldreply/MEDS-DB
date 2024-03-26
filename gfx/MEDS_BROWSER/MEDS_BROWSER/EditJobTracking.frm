VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form EditJobTracking 
   Caption         =   "Edit Job Tracking"
   ClientHeight    =   8460
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15240
   LinkTopic       =   "Form1"
   ScaleHeight     =   8460
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame CollectionEndFrame 
      Caption         =   "Collection End Date"
      Height          =   735
      Left            =   7680
      TabIndex        =   39
      Top             =   3000
      Width           =   2655
      Begin MSComCtl2.DTPicker EditCollectionEnd 
         Height          =   375
         Left            =   120
         TabIndex        =   112
         Top             =   240
         Width           =   2415
         _ExtentX        =   4260
         _ExtentY        =   661
         _Version        =   393216
         CheckBox        =   -1  'True
         Format          =   55705601
         CurrentDate     =   38509
      End
   End
   Begin VB.Frame EditJobTrackingFrame 
      Height          =   8415
      Left            =   120
      TabIndex        =   0
      ToolTipText     =   "Approx Total Number Of Observations"
      Top             =   0
      Width           =   15015
      Begin VB.ComboBox EditSource 
         Height          =   315
         Left            =   3360
         TabIndex        =   94
         Top             =   1320
         Width           =   3015
      End
      Begin VB.Frame Frame15 
         Caption         =   "Job Errors"
         Height          =   5775
         Left            =   10440
         TabIndex        =   63
         Top             =   120
         Width           =   4455
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   14
            Left            =   3960
            TabIndex        =   93
            Top             =   5400
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   13
            Left            =   3960
            TabIndex        =   92
            Top             =   5040
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   12
            Left            =   3960
            TabIndex        =   91
            Top             =   4680
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   11
            Left            =   3960
            TabIndex        =   87
            Top             =   4320
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   10
            Left            =   3960
            TabIndex        =   85
            Top             =   3960
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   9
            Left            =   3960
            TabIndex        =   83
            Top             =   3600
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   8
            Left            =   3960
            TabIndex        =   82
            Top             =   3240
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   7
            Left            =   3960
            TabIndex        =   81
            Top             =   2880
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   6
            Left            =   3960
            TabIndex        =   80
            Top             =   2520
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   5
            Left            =   3960
            TabIndex        =   79
            Top             =   2160
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   4
            Left            =   3960
            TabIndex        =   78
            Top             =   1800
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   3
            Left            =   3960
            TabIndex        =   77
            Top             =   1440
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   2
            Left            =   3960
            TabIndex        =   76
            Top             =   1080
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   1
            Left            =   3960
            TabIndex        =   67
            Top             =   720
            Width           =   375
         End
         Begin VB.TextBox ErrorValue 
            Height          =   285
            Index           =   0
            Left            =   3960
            TabIndex        =   65
            Top             =   360
            Width           =   375
         End
         Begin VB.Label NumberText 
            Caption         =   "14"
            Height          =   255
            Index           =   14
            Left            =   240
            TabIndex        =   109
            Top             =   5400
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "13"
            Height          =   255
            Index           =   13
            Left            =   240
            TabIndex        =   108
            Top             =   5040
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "12"
            Height          =   255
            Index           =   12
            Left            =   240
            TabIndex        =   107
            Top             =   4680
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "11"
            Height          =   255
            Index           =   11
            Left            =   240
            TabIndex        =   106
            Top             =   4320
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "10"
            Height          =   255
            Index           =   10
            Left            =   240
            TabIndex        =   105
            Top             =   3960
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "9"
            Height          =   255
            Index           =   9
            Left            =   240
            TabIndex        =   104
            Top             =   3600
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "8"
            Height          =   255
            Index           =   8
            Left            =   240
            TabIndex        =   103
            Top             =   3240
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "7"
            Height          =   255
            Index           =   7
            Left            =   240
            TabIndex        =   102
            Top             =   2880
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "6"
            Height          =   255
            Index           =   6
            Left            =   240
            TabIndex        =   101
            Top             =   2520
            Width           =   135
         End
         Begin VB.Label NumberText 
            Caption         =   "5"
            Height          =   255
            Index           =   5
            Left            =   240
            TabIndex        =   100
            Top             =   2160
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "4"
            Height          =   255
            Index           =   4
            Left            =   240
            TabIndex        =   99
            Top             =   1800
            Width           =   135
         End
         Begin VB.Label NumberText 
            Caption         =   "3"
            Height          =   255
            Index           =   3
            Left            =   240
            TabIndex        =   98
            Top             =   1440
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "2"
            Height          =   255
            Index           =   2
            Left            =   240
            TabIndex        =   97
            Top             =   1080
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "1"
            Height          =   255
            Index           =   1
            Left            =   240
            TabIndex        =   96
            Top             =   720
            Width           =   255
         End
         Begin VB.Label NumberText 
            Caption         =   "0"
            Height          =   255
            Index           =   0
            Left            =   240
            TabIndex        =   95
            Top             =   360
            Width           =   255
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 14"
            Height          =   255
            Index           =   14
            Left            =   480
            TabIndex        =   90
            Top             =   5400
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 13"
            Height          =   255
            Index           =   13
            Left            =   480
            TabIndex        =   89
            Top             =   5040
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 12"
            Height          =   255
            Index           =   12
            Left            =   480
            TabIndex        =   88
            Top             =   4680
            Width           =   3015
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 11"
            Height          =   255
            Index           =   11
            Left            =   480
            TabIndex        =   86
            Top             =   4320
            Width           =   3495
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 10"
            Height          =   255
            Index           =   10
            Left            =   480
            TabIndex        =   84
            Top             =   3960
            Width           =   3495
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 9"
            Height          =   255
            Index           =   9
            Left            =   480
            TabIndex        =   75
            Top             =   3600
            Width           =   3495
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 8"
            Height          =   255
            Index           =   8
            Left            =   480
            TabIndex        =   74
            Top             =   3240
            Width           =   3495
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 7"
            Height          =   255
            Index           =   7
            Left            =   480
            TabIndex        =   73
            Top             =   2880
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 6"
            Height          =   255
            Index           =   6
            Left            =   480
            TabIndex        =   72
            Top             =   2520
            Width           =   3255
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 5"
            Height          =   255
            Index           =   5
            Left            =   480
            TabIndex        =   71
            Top             =   2160
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 4"
            Height          =   255
            Index           =   4
            Left            =   480
            TabIndex        =   70
            Top             =   1800
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 3"
            Height          =   255
            Index           =   3
            Left            =   480
            TabIndex        =   69
            Top             =   1440
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 2"
            Height          =   255
            Index           =   2
            Left            =   480
            TabIndex        =   68
            Top             =   1080
            Width           =   3375
         End
         Begin VB.Label ErrorText 
            Caption         =   "Error Text 1"
            Height          =   255
            Index           =   1
            Left            =   480
            TabIndex        =   66
            Top             =   720
            Width           =   3255
         End
         Begin VB.Label ErrorText 
            Caption         =   "Errors Text 0"
            Height          =   255
            Index           =   0
            Left            =   480
            TabIndex        =   64
            Top             =   360
            Width           =   3255
         End
      End
      Begin VB.Frame Frame12 
         Caption         =   "Validation"
         Height          =   1815
         Left            =   3960
         TabIndex        =   59
         Top             =   3960
         Width           =   2655
         Begin VB.Frame Frame14 
            Caption         =   "Validated By"
            Height          =   615
            Left            =   120
            TabIndex        =   61
            Top             =   1080
            Width           =   2415
            Begin VB.ComboBox EditValidationName 
               Height          =   315
               Left            =   120
               TabIndex        =   62
               Top             =   240
               Width           =   2055
            End
         End
         Begin VB.Frame Frame13 
            Caption         =   "Validation Date"
            Height          =   735
            Left            =   120
            TabIndex        =   60
            Top             =   240
            Width           =   2415
            Begin MSComCtl2.DTPicker EditValidated 
               Height          =   375
               Left            =   120
               TabIndex        =   114
               Top             =   240
               Width           =   2175
               _ExtentX        =   3836
               _ExtentY        =   661
               _Version        =   393216
               CheckBox        =   -1  'True
               Format          =   55705601
               CurrentDate     =   38509
            End
         End
      End
      Begin VB.TextBox EditMEICNumber 
         Enabled         =   0   'False
         Height          =   285
         Left            =   360
         TabIndex        =   51
         ToolTipText     =   "MEIC Number of the Job. This will be blank for new jobs until a save occurs"
         Top             =   600
         Width           =   1215
      End
      Begin VB.Frame Frame7 
         Caption         =   "Classification"
         Height          =   615
         Left            =   7320
         TabIndex        =   49
         Top             =   360
         Width           =   2895
         Begin VB.ComboBox EditClassification 
            Height          =   315
            Left            =   120
            TabIndex        =   50
            Top             =   240
            Width           =   2655
         End
      End
      Begin VB.CommandButton AddNewJobType 
         Caption         =   "Add Another Job Type"
         Height          =   495
         Left            =   6240
         TabIndex        =   45
         Top             =   7680
         Width           =   2535
      End
      Begin VB.CommandButton AbortButton 
         Caption         =   "Abort - Losing Changes"
         Height          =   495
         Left            =   3360
         TabIndex        =   44
         Top             =   7680
         Width           =   2535
      End
      Begin VB.CommandButton SaveButton 
         Caption         =   "Save Changes"
         Height          =   495
         Left            =   600
         TabIndex        =   43
         Top             =   7680
         Width           =   2295
      End
      Begin VB.Frame Frame6 
         Caption         =   "QA Completed Date"
         Height          =   735
         Left            =   480
         TabIndex        =   42
         Top             =   4200
         Width           =   2415
         Begin MSComCtl2.DTPicker EditQACompleted 
            Height          =   375
            Left            =   120
            TabIndex        =   113
            Top             =   240
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   55705601
            CurrentDate     =   38509
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "QA Target Date"
         Height          =   735
         Left            =   360
         TabIndex        =   41
         Top             =   3000
         Width           =   2655
         Begin MSComCtl2.DTPicker EditQATarget 
            Height          =   375
            Left            =   240
            TabIndex        =   110
            Top             =   240
            Width           =   2295
            _ExtentX        =   4048
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   55705601
            CurrentDate     =   38506
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Database Load Date"
         Height          =   735
         Left            =   7680
         TabIndex        =   40
         Top             =   4200
         Width           =   2415
         Begin MSComCtl2.DTPicker EditDatabased 
            Height          =   375
            Left            =   120
            TabIndex        =   115
            Top             =   240
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   55705601
            CurrentDate     =   38509
         End
      End
      Begin VB.Frame CollectionStartFrame 
         Caption         =   "Collection Start Date"
         Height          =   735
         Left            =   3960
         TabIndex        =   38
         Top             =   3000
         Width           =   2655
         Begin MSComCtl2.DTPicker EditCollectionStart 
            Height          =   375
            Left            =   120
            TabIndex        =   111
            Top             =   240
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   55705601
            CurrentDate     =   38509
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Comments"
         Height          =   1455
         Left            =   240
         TabIndex        =   36
         Top             =   6000
         Width           =   14175
         Begin VB.TextBox EditComments 
            Height          =   1095
            Left            =   120
            TabIndex        =   37
            Top             =   240
            Width           =   13935
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Observations"
         Height          =   975
         Left            =   6480
         TabIndex        =   29
         Top             =   1800
         Width           =   3855
         Begin VB.TextBox EditRejectedObs 
            Height          =   285
            Left            =   2520
            TabIndex        =   34
            Top             =   480
            Width           =   975
         End
         Begin VB.TextBox EditAcceptedObs 
            Height          =   285
            Left            =   1320
            TabIndex        =   32
            Top             =   480
            Width           =   855
         End
         Begin VB.TextBox EditNoObs 
            Height          =   285
            Left            =   240
            TabIndex        =   30
            Top             =   480
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Rejected"
            Height          =   255
            Left            =   2520
            TabIndex        =   35
            Top             =   240
            Width           =   855
         End
         Begin VB.Label Label15 
            Caption         =   "Accepted"
            Height          =   255
            Left            =   1320
            TabIndex        =   33
            Top             =   240
            Width           =   735
         End
         Begin VB.Label Label14 
            Caption         =   "Total"
            Height          =   255
            Left            =   240
            TabIndex        =   31
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Priority Region"
         Height          =   975
         Left            =   3000
         TabIndex        =   18
         Top             =   1800
         Width           =   3135
         Begin VB.CheckBox EditPriorityRegion6 
            Height          =   255
            Left            =   2640
            TabIndex        =   46
            Top             =   480
            Width           =   255
         End
         Begin VB.CheckBox EditPriorityRegion5 
            Height          =   255
            Left            =   2160
            TabIndex        =   27
            Top             =   480
            Width           =   255
         End
         Begin VB.CheckBox EditPriorityRegion4 
            Height          =   255
            Left            =   1680
            TabIndex        =   25
            Top             =   480
            Width           =   255
         End
         Begin VB.CheckBox EditPriorityRegion3 
            Height          =   255
            Left            =   1200
            TabIndex        =   22
            Top             =   480
            Width           =   255
         End
         Begin VB.CheckBox EditPriorityRegion2 
            Height          =   255
            Left            =   720
            TabIndex        =   21
            Top             =   480
            Width           =   255
         End
         Begin VB.CheckBox EditPriorityRegion1 
            Height          =   255
            Left            =   240
            TabIndex        =   19
            Top             =   480
            Width           =   255
         End
         Begin VB.Label Label17 
            Caption         =   "6"
            Height          =   255
            Left            =   2640
            TabIndex        =   47
            Top             =   240
            Width           =   255
         End
         Begin VB.Label Label13 
            Caption         =   "5"
            Height          =   255
            Left            =   2160
            TabIndex        =   28
            Top             =   240
            Width           =   255
         End
         Begin VB.Label Label12 
            Caption         =   "4"
            Height          =   255
            Left            =   1680
            TabIndex        =   26
            Top             =   240
            Width           =   255
         End
         Begin VB.Label Label11 
            Caption         =   "3"
            Height          =   255
            Left            =   1200
            TabIndex        =   24
            Top             =   240
            Width           =   255
         End
         Begin VB.Label Label10 
            Caption         =   "2"
            Height          =   255
            Left            =   720
            TabIndex        =   23
            Top             =   240
            Width           =   255
         End
         Begin VB.Label Label9 
            Caption         =   "1"
            Height          =   255
            Left            =   240
            TabIndex        =   20
            Top             =   240
            Width           =   255
         End
      End
      Begin VB.CheckBox EditAcknowledge 
         Height          =   255
         Left            =   8520
         TabIndex        =   16
         Top             =   1320
         Width           =   255
      End
      Begin VB.ComboBox EditAssigned 
         Height          =   315
         Left            =   5520
         TabIndex        =   14
         Top             =   600
         Width           =   1695
      End
      Begin VB.TextBox EditIngresNo 
         Height          =   285
         Left            =   9240
         TabIndex        =   11
         Top             =   1320
         Width           =   855
      End
      Begin VB.ComboBox EditJobType 
         Height          =   315
         Left            =   1680
         TabIndex        =   9
         ToolTipText     =   "Type Of Job - This field is mandatory"
         Top             =   600
         Width           =   2055
      End
      Begin VB.TextBox EditSupplier 
         Height          =   285
         Left            =   360
         TabIndex        =   7
         Top             =   1320
         Width           =   2775
      End
      Begin VB.ComboBox EditStatus 
         Height          =   315
         Left            =   3840
         TabIndex        =   5
         Top             =   600
         Width           =   1575
      End
      Begin VB.TextBox EditPOTask 
         Height          =   285
         Left            =   7680
         TabIndex        =   3
         Top             =   1320
         Width           =   375
      End
      Begin VB.TextBox EditPONumber 
         Height          =   285
         Left            =   6600
         TabIndex        =   1
         Top             =   1320
         Width           =   975
      End
      Begin VB.Frame DateRecievedFrame 
         Caption         =   "Date Received"
         Height          =   735
         Left            =   240
         TabIndex        =   13
         Top             =   1800
         Width           =   2415
         Begin MSComCtl2.DTPicker EditReceived 
            Height          =   375
            Left            =   120
            TabIndex        =   116
            Top             =   240
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   55705601
            CurrentDate     =   38509
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "QA Completion"
         Height          =   1815
         Left            =   360
         TabIndex        =   53
         Top             =   3960
         Width           =   2655
         Begin VB.Frame Frame9 
            Caption         =   "Completed By"
            Height          =   615
            Left            =   120
            TabIndex        =   54
            Top             =   1080
            Width           =   2415
            Begin VB.ComboBox EditQACompleteName 
               Height          =   315
               Left            =   120
               TabIndex        =   55
               Top             =   240
               Width           =   2175
            End
         End
      End
      Begin VB.Frame Frame10 
         Caption         =   "Databased"
         Height          =   1815
         Left            =   7560
         TabIndex        =   56
         Top             =   3960
         Width           =   2655
         Begin VB.Frame Frame11 
            Caption         =   "Databased By"
            Height          =   615
            Left            =   120
            TabIndex        =   57
            Top             =   1080
            Width           =   2415
            Begin VB.ComboBox EditDatabasedName 
               Height          =   315
               Left            =   120
               TabIndex        =   58
               Top             =   240
               Width           =   2175
            End
         End
      End
      Begin VB.Label Label19 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   360
         TabIndex        =   52
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label18 
         Caption         =   "Source"
         Height          =   255
         Left            =   3360
         TabIndex        =   48
         Top             =   1080
         Width           =   1575
      End
      Begin VB.Label Label8 
         Caption         =   "Ack"
         Height          =   255
         Left            =   8520
         TabIndex        =   17
         Top             =   1080
         Width           =   375
      End
      Begin VB.Label Label7 
         Caption         =   "Assigned"
         Height          =   255
         Left            =   5520
         TabIndex        =   15
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label6 
         Caption         =   "Ingres No"
         Height          =   255
         Left            =   9240
         TabIndex        =   12
         Top             =   1080
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "Job Type"
         Height          =   255
         Left            =   1680
         TabIndex        =   10
         Top             =   360
         Width           =   2055
      End
      Begin VB.Label Label4 
         Caption         =   "Platform"
         Height          =   255
         Left            =   360
         TabIndex        =   8
         Top             =   1080
         Width           =   2055
      End
      Begin VB.Label Label3 
         Caption         =   "Status"
         Height          =   255
         Left            =   3840
         TabIndex        =   6
         Top             =   360
         Width           =   1575
      End
      Begin VB.Label Label2 
         Caption         =   "POType"
         Height          =   255
         Left            =   7680
         TabIndex        =   4
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "PO Number"
         Height          =   255
         Left            =   6600
         TabIndex        =   2
         Top             =   1080
         Width           =   975
      End
   End
End
Attribute VB_Name = "EditJobTracking"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim MEICNumber As String
Dim NewJob   As Boolean
Dim JobErrorInitialValues(0 To 20) As String

Public Sub SetJobToEdit(MEIC_Number As String, is_new_job As Boolean)
    MEICNumber = MEIC_Number
    NewJob = is_new_job
End Sub


Private Sub AbortButton_Click()
    Unload Me
End Sub

Public Sub InitialiseDateField(ByRef Day As ComboBox, _
                               ByRef Month As ComboBox, _
                               ByRef YearBox As ComboBox)
    Dim i As Integer
    
    For i = 1 To 31
        Day.AddItem str(i)
    Next i

    Month.AddItem "JAN"
    Month.AddItem "FEB"
    Month.AddItem "MAR"
    Month.AddItem "APR"
    Month.AddItem "MAY"
    Month.AddItem "JUN"
    Month.AddItem "JUL"
    Month.AddItem "AUG"
    Month.AddItem "SEP"
    Month.AddItem "OCT"
    Month.AddItem "NOV"
    Month.AddItem "DEC"
    
    For i = Val(Year(Date)) + 1 To 1850 Step -1
        YearBox.AddItem str(i)
    Next i

End Sub


Private Sub AddNewJobType_Click()
    Dim Results As Object
    Dim SQLQuery As String
    
    NewJob = True
    EditMEICNumber.Text = ""
    
    ' Many fields are not cleared to facility adding extra jobs quickly
    EditPONumber.Text = ""
    EditPOTask.Text = ""

    EditStatus.Text = ""

    EditJobType.Text = ""
    EditIngresNo.Text = ""
    EditAssigned = ""
    EditAcknowledge.value = 0
    EditNoObs.Text = ""
    EditAcceptedObs.Text = ""
    EditRejectedObs.Text = ""
    EditComments.Text = " "

    Call JobTracking.InitialiseDatePicker(EditDatabased)
    Call JobTracking.InitialiseDatePicker(EditQACompleted)
    Call JobTracking.InitialiseDatePicker(EditValidated)

    EditQACompleteName.Text = ""
    EditValidationName.Text = ""
    EditDatabasedName.Text = ""

End Sub

Private Sub EditAcceptedObs_Change()
    Call JobTracking.ForceIntegerText(EditAcceptedObs)
End Sub

Private Sub EditIngresNo_Change()
    Call JobTracking.ForceIntegerText(EditIngresNo)
End Sub

Private Sub EditNoObs_Change()
    Call JobTracking.ForceIntegerText(EditNoObs)
End Sub

Private Sub EditPONumber_Change()
    Call JobTracking.ForceIntegerText(EditPONumber)
End Sub

Private Sub EditRejectedObs_Change()
    Call JobTracking.ForceIntegerText(EditRejectedObs)
End Sub

Public Sub SetDateFromDB(Results As Object, picker As DTPicker, dbFieldStub As String)
    Dim Field As String
    
    Field = "year" & "_" & dbFieldStub
    If Results(Field) <> "" Then
        ' when changing date need to be careful to ensure a valid date is
        ' always set. so setting to 01/01/YYYY
        picker.Day = "01"
        picker.Month = "01"
        picker.Year = Results(Field)
    End If
    Field = "month" & "_" & dbFieldStub
    If Results(Field) <> "" Then
        picker.Month = Results(Field)
    End If
    Field = "day" & "_" & dbFieldStub
    If Results(Field) <> "" Then
        picker.Day = Results(Field)
    End If
End Sub


Private Sub Form_Load()
    Dim Results As Object
    Dim SQLQuery As String
    
    Call JobTracking.InitialiseDatePicker(EditReceived)
    Call JobTracking.InitialiseDatePicker(EditCollectionStart)
    Call JobTracking.InitialiseDatePicker(EditCollectionEnd)
    Call JobTracking.InitialiseDatePicker(EditQATarget)
    Call JobTracking.InitialiseDatePicker(EditQACompleted)
    Call JobTracking.InitialiseDatePicker(EditDatabased)
    Call JobTracking.InitialiseDatePicker(EditValidated)
    Call JobTracking.InitialiseJobTypeTypeField(EditJobType)
    Call JobTracking.InitialiseStatusField(EditStatus)
    Call JobTracking.InitialiseAssignedField(EditAssigned)
    Call JobTracking.InitialiseAssignedField(EditQACompleteName)
    Call JobTracking.InitialiseAssignedField(EditValidationName)
    Call JobTracking.InitialiseAssignedField(EditDatabasedName)
    Call JobTracking.InitialiseClassificationField(EditClassification)
    Call JobTracking.InitialiseSourceField(EditSource)
    
    Dim i As Integer
    
    For i = 0 To ErrorText.Count - 1
        JobErrorInitialValues(i) = ""
        ErrorText(i).Visible = False
        ErrorValue(i).Text = ""
        ErrorValue(i).Visible = False
        NumberText(i).Visible = False
    Next i
        
    SQLQuery = "SELECT meds_error_type, error_description FROM meds_errors ORDER by meds_error_type"

    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    While Not Results.EOF
        Dim error_number As Integer
        
        error_number = Val(Results("meds_error_type"))
        
        If error_number >= 0 And error_number < ErrorText.Count Then
            ErrorText(error_number).Caption = Results("error_description")
            ErrorText(error_number).Visible = True
            ErrorValue(error_number).Visible = True
            NumberText(error_number).Visible = True
        End If
        
        Results.MoveNext
    Wend
    
    If NewJob Then
        Exit Sub
    End If
    
    SQLQuery = " SELECT meic_number, po_number, po_task, status, ingres_no," & _
                " supplier, source, classification, description, " & _
                " TO_CHAR(date_received, 'DD' ) day_received, TO_CHAR(date_received, 'MM') month_received, TO_CHAR(date_received, 'YYYY') year_received," & _
                " assigned, acknowledge, priority_region1, priority_region2, priority_region3," & _
                " priority_region4, priority_region5, priority_region6, no_obs, obs_accepted, obs_rejected," & _
                 " TO_CHAR(collection_start, 'DD' ) day_collection_start, TO_CHAR(collection_start, 'MM') month_collection_start, TO_CHAR(collection_start, 'YYYY') year_collection_start," & _
                 " TO_CHAR(collection_end, 'DD' ) day_collection_end, TO_CHAR(collection_end, 'MM') month_collection_end, TO_CHAR(collection_end, 'YYYY') year_collection_end," & _
                 " TO_CHAR(databased, 'DD' ) day_databased, TO_CHAR(databased, 'MM') month_databased, TO_CHAR(databased, 'YYYY') year_databased," & _
                 " TO_CHAR(validated, 'DD' ) day_validated, TO_CHAR(validated, 'MM') month_validated, TO_CHAR(validated, 'YYYY') year_validated," & _
                 " TO_CHAR(qa_processing_target, 'DD' ) day_qa_target, TO_CHAR(qa_processing_target, 'MM') month_qa_target, TO_CHAR(qa_processing_target, 'YYYY') year_qa_target," & _
                 " TO_CHAR(qa_processing_completed, 'DD' ) day_qa_completed, TO_CHAR(qa_processing_completed, 'MM') month_qa_completed, TO_CHAR(qa_processing_completed, 'YYYY') year_qa_completed," & _
               " qa_processing_name,databased_name,validated_name,comments " & _
               " FROM job_tracking j, meds_job_type t " & _
               " WHERE j.job_type_number = t.job_type_number AND " & _
               "      meic_number = " & MEICNumber & ""
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    If Not Results.EOF Then
        EditMEICNumber.Text = Results("meic_number")

        If Results("po_number") <> "" Then
            EditPONumber.Text = Results("po_number")
        End If
        If Results("po_task") <> "" Then
            EditPOTask.Text = Results("po_task")
        End If
        
        EditStatus.Text = Results("status")
        If Results("supplier") <> "" Then
            EditSupplier.Text = Results("supplier")
        End If
        If Results("source") <> "" Then
            EditSource.Text = Results("source")
        End If
        If Results("classification") <> "" Then
            EditClassification.Text = Results("classification")
        End If
        EditJobType.Text = Results("description")
        If Results("ingres_no") <> "" Then
            EditIngresNo.Text = Results("ingres_no")
        End If
        
        Call SetDateFromDB(Results, EditReceived, "received")
        
        If Results("assigned") <> "" Then
            EditAssigned = Results("assigned")
        End If
        If Results("acknowledge") = "Y" Then
            EditAcknowledge.value = 1
        Else
            EditAcknowledge.value = 0
        End If
        If Results("priority_region1") = "Y" Then
            EditPriorityRegion1.value = 1
        Else
            EditPriorityRegion1.value = 0
        End If
        If Results("priority_region2") = "Y" Then
            EditPriorityRegion2.value = 1
        Else
            EditPriorityRegion2.value = 0
        End If
        If Results("priority_region3") = "Y" Then
            EditPriorityRegion3.value = 1
        Else
            EditPriorityRegion3.value = 0
        End If
        If Results("priority_region4") = "Y" Then
            EditPriorityRegion4.value = 1
        Else
            EditPriorityRegion4.value = 0
        End If
        If Results("priority_region5") = "Y" Then
            EditPriorityRegion5.value = 1
        Else
            EditPriorityRegion5.value = 0
        End If
        If Results("priority_region6") = "Y" Then
            EditPriorityRegion6.value = 1
        Else
            EditPriorityRegion6.value = 0
        End If
        If Results("no_obs") <> "" Then
            EditNoObs.Text = Results("no_obs")
        End If
        If Results("obs_accepted") <> "" Then
            EditAcceptedObs.Text = Results("obs_accepted")
        End If
        If Results("obs_rejected") <> "" Then
            EditRejectedObs.Text = Results("obs_rejected")
        End If
        If Results("comments") <> "" Then
            EditComments.Text = Results("comments")
        End If
        
        Call SetDateFromDB(Results, EditCollectionStart, "collection_start")
        
        Call SetDateFromDB(Results, EditCollectionEnd, "collection_end")
        
        Call SetDateFromDB(Results, EditDatabased, "databased")

        Call SetDateFromDB(Results, EditQATarget, "qa_target")
        
        Call SetDateFromDB(Results, EditQACompleted, "qa_completed")
        
        If Results("qa_processing_name") <> "" Then
            EditQACompleteName = Results("qa_processing_name")
        End If
        
        Call SetDateFromDB(Results, EditValidated, "validated")
        
        If Results("validated_name") <> "" Then
            EditValidationName = Results("validated_name")
        End If
        If Results("databased_name") <> "" Then
            EditDatabasedName = Results("databased_name")
        End If
    End If
    

    SQLQuery = "SELECT meds_error_type, num_errors FROM meds_job_error WHERE meic_number = " & MEICNumber
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    While Not Results.EOF
        
        error_number = Val(Results("meds_error_type"))
        
        If error_number >= 0 And error_number < ErrorText.Count Then
            ErrorValue(error_number).Text = Results("num_errors")
            JobErrorInitialValues(error_number) = Results("num_errors")
        End If
        
        Results.MoveNext
    Wend
    
    EditPONumber.Enabled = False
    EditPOTask.Enabled = False
    
End Sub

Private Function ConvertToYN(value As Integer) As String
    If value = 1 Then
        ConvertToYN = "Y"
    Else
        ConvertToYN = "N"
    End If
End Function

Private Sub AddStrField(ByRef SQLQuery As String, value As String)
    If value <> "" Then
        SQLQuery = SQLQuery & "'" & value & "',"
    Else
        SQLQuery = SQLQuery & "NULL,"
    End If
End Sub

Private Sub AddNumField(ByRef SQLQuery As String, value As String)
    If value <> "" Then
        SQLQuery = SQLQuery & "" & value & ","
    Else
        SQLQuery = SQLQuery & "NULL,"
    End If
End Sub

Public Sub AddDatePickerField(ByRef SQLQuery As String, thisDate As DTPicker)
    If thisDate.Day <> "" And thisDate.Month <> "" And thisDate.Year <> "" Then
        SQLQuery = SQLQuery & "TO_DATE('" & thisDate.Day & "/" & thisDate.Month & "/" & thisDate.Year & "','DD/MM/YYYY'),"
    Else
        SQLQuery = SQLQuery & "NULL,"
    End If
End Sub

Private Sub AddCheckBoxField(ByRef SQLQuery As String, value As Integer)
    If value = 1 Then
        SQLQuery = SQLQuery & "'Y',"
    Else
        SQLQuery = SQLQuery & "'N',"
    End If
End Sub


Private Sub Form_Unload(Cancel As Integer)
    Call JobTracking.ClearSearchResults
    Call JobTracking.DisplayResultsSet
End Sub

Private Sub GetJobTypeNumber(description As String, ByRef job_type_number As Integer, _
                            ByRef success As Boolean)
    Dim Results As Object
    Dim SQLQuery As String
    
    SQLQuery = "SELECT job_type_number FROM meds_job_type where description = '" & description & "'"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    If Not Results.EOF Then
        job_type_number = Results("job_type_number")
        success = True
    Else
        success = False
    End If
        
End Sub


Private Sub AddNumberChange(ByRef SetQuery As String, _
                             FieldName As String, _
                             ByRef Results As Object, EditText As String)
    If Results(FieldName) <> "" Then
        If EditText <> Results(FieldName) Then
            If EditText <> "" Then
                SetQuery = SetQuery & FieldName & "=" & EditText & ","
            Else
                SetQuery = SetQuery & FieldName & "=NULL,"
            End If
        End If
    ElseIf EditText <> "" Then
        SetQuery = SetQuery & FieldName & "=" & EditText & ","
    End If
End Sub

Private Sub AddStringChange(ByRef SetQuery As String, _
                             FieldName As String, _
                             ByRef Results As Object, EditText As String)
    If Results(FieldName) <> "" Then
        If EditText <> Results(FieldName) Then
            SetQuery = SetQuery & FieldName & "='" & EditText & "',"
        End If
    ElseIf EditText <> "" Then
        SetQuery = SetQuery & FieldName & "='" & EditText & "',"
    End If
End Sub

Private Sub AddJobErrors()
    Dim Results As Object
    Dim SQLQuery As String
    Dim i As Integer
    
    For i = 0 To ErrorText.Count - 1
        SQLQuery = ""

        If JobErrorInitialValues(i) <> "" Then
            If ErrorValue(i).Text <> "" Then
                If ErrorValue(i).Text <> JobErrorInitialValues(i) Then
                    ' Modified
                    SQLQuery = "UPDATE meds_job_error SET num_errors = " & ErrorValue(i).Text & _
                                "WHERE meic_number = " & MEICNumber & "AND meds_error_type = " & i
                End If
                
            Else
                ' Error deleted
                SQLQuery = "DELETE from meds_job_error " & _
                            "WHERE meic_number = " & MEICNumber & "AND meds_error_type = " & i
                
            End If
        Else
            If ErrorValue(i).Text <> "" Then
                'Insert
                SQLQuery = "INSERT into meds_job_error ( meic_number, meds_error_type, num_errors ) VALUES ( " & _
                            MEICNumber & "," & i & "," & ErrorValue(i).Text & ")"
                            

            End If
        End If
        
        If SQLQuery <> "" Then
            OraDatabase.BeginTrans
            OraDatabase.ExecuteSQL (SQLQuery)
            OraDatabase.CommitTrans
        End If
    Next i
End Sub

Private Sub AddDatePickerChange(ByRef SetQuery As String, DBFieldName As String, _
                FieldAbbrev As String, Results As Object, _
                EditDate As DTPicker)

    Dim DayId As String
    Dim MonthId As String
    Dim YearId As String
    
    DayId = "day_" & FieldAbbrev
    MonthId = "month_" & FieldAbbrev
    YearId = "year_" & FieldAbbrev
    
    If Results(DayId) <> "" Then
        If IsNull(EditDate) Then
            SetQuery = SetQuery & DBFieldName & " = NULL,"
        ElseIf EditDate.Day <> Results(DayId) Or _
            EditDate.Month <> Results(MonthId) Or _
            EditDate.Year <> Results(YearId) Then
            If EditDate.Day <> "" And EditDate.Month <> "" And EditDate.Year <> "" Then
                SetQuery = SetQuery & DBFieldName & " = " & _
                            "TO_DATE('" & EditDate.Day & "/" & EditDate.Month & "/" & EditDate.Year & "','DD/MM/YYYY'),"
            Else
                SetQuery = SetQuery & DBFieldName & " = NULL,"
            End If
        End If
    ElseIf EditDate.Day <> "" And EditDate.Month <> "" And EditDate.Year <> "" Then
        SetQuery = SetQuery & DBFieldName & " = " & _
                               "TO_DATE('" & EditDate.Day & "/" & EditDate.Month & "/" & EditDate.Year & "','DD/MM/YYYY'),"
    End If

End Sub

                
Private Sub SaveButton_Click()
    Dim Results As Object
    Dim SQLQuery As String
    Dim UpdateQuery As String
    
    ' check mandatory not null fields have been selected
    If EditJobType.Text = "" Then
        MsgBox "Job Type field must be completed before saving is possible"
        Exit Sub
    End If
    
    ' Retrieve the original record so that only the changed field is altered
    If Not NewJob Then
    
        SQLQuery = " SELECT meic_number, po_number, po_task, status, ingres_no," & _
                " supplier, source, classification, description, " & _
                " TO_CHAR(date_received, 'DD' ) day_received, TO_CHAR(date_received, 'MON') month_received, TO_CHAR(date_received, 'YYYY') year_received," & _
                " assigned, acknowledge, priority_region1, priority_region2, priority_region3," & _
                " priority_region4, priority_region5, priority_region6, no_obs, obs_accepted, obs_rejected," & _
                 " TO_CHAR(collection_start, 'DD' ) day_collection_start, TO_CHAR(collection_start, 'MON') month_collection_start, TO_CHAR(collection_start, 'YYYY') year_collection_start," & _
                 " TO_CHAR(collection_end, 'DD' ) day_collection_end, TO_CHAR(collection_end, 'MON') month_collection_end, TO_CHAR(collection_end, 'YYYY') year_collection_end," & _
                 " TO_CHAR(databased, 'DD' ) day_databased, TO_CHAR(databased, 'MON') month_databased, TO_CHAR(databased, 'YYYY') year_databased," & _
                 " TO_CHAR(validated, 'DD' ) day_validated, TO_CHAR(validated, 'MON') month_validated, TO_CHAR(validated, 'YYYY') year_validated," & _
                 " TO_CHAR(qa_processing_target, 'DD' ) day_qa_target, TO_CHAR(qa_processing_target, 'MON') month_qa_target, TO_CHAR(qa_processing_target, 'YYYY') year_qa_target," & _
                 " TO_CHAR(qa_processing_completed, 'DD' ) day_qa_completed, TO_CHAR(qa_processing_completed, 'MON') month_qa_completed, TO_CHAR(qa_processing_completed, 'YYYY') year_qa_completed," & _
                 "qa_processing_name,databased_name,validated_name," & _
                " comments " & _
               " FROM job_tracking j, meds_job_type t " & _
               " WHERE j.job_type_number = t.job_type_number AND " & _
               "      meic_number = '" & MEICNumber & "'"
    
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
            ' PONumber and  POTask are not editable
            Dim SetQuery As String
            SetQuery = ""
        
            If EditStatus.Text <> Results("status") Then
                SetQuery = SetQuery & "status = '" & EditStatus.Text & "',"
            End If

            If Results("supplier") <> "" Then
                If EditSupplier.Text <> Results("supplier") Then
                    SetQuery = SetQuery & "supplier = '" & EditSupplier.Text & "',"
                End If
            ElseIf EditSupplier.Text <> "" Then
                SetQuery = SetQuery & "supplier = '" & EditSupplier.Text & "',"
            End If
            If Results("source") <> "" Then
                If EditSource.Text <> Results("source") Then
                    SetQuery = SetQuery & "source = '" & EditSource.Text & "',"
                End If
            ElseIf EditSource.Text <> "" Then
                SetQuery = SetQuery & "source = '" & EditSource.Text & "',"
            End If
            
            If Results("Classification") <> "" Then
                If EditClassification.Text <> Results("Classification") Then
                    SetQuery = SetQuery & "classification = '" & EditClassification.Text & "',"
                End If
            ElseIf EditClassification.Text <> "" Then
                    SetQuery = SetQuery & "classification = '" & EditClassification.Text & "',"
            End If
            If EditJobType.Text <> Results("description") Then
                Dim job_type_number As Integer
                Dim success As Boolean
                
                Call GetJobTypeNumber(EditJobType.Text, job_type_number, success)
                If success Then
                    SetQuery = SetQuery & "job_type_number = " & job_type_number & ","
                Else
                    MsgBox "Invalid job description '" & EditJobType.Text & "'"
                    Exit Sub
                End If
            End If
       
            If Results("ingres_no") <> "" Then
                ' Column value not null
                If Results("ingres_no") <> EditIngresNo.Text Then
                    SetQuery = SetQuery & "ingres_no = '" & EditIngresNo.Text & "',"
                End If
            ElseIf EditIngresNo.Text <> "" Then
                SetQuery = SetQuery & "ingres_no = '" & EditIngresNo.Text & "',"
            End If
        
            Call AddDatePickerChange(SetQuery, "date_received", "received", Results, _
                 EditReceived)
            
            Call AddStringChange(SetQuery, "assigned", Results, EditAssigned.Text)
        
            If ConvertToYN(EditAcknowledge.value) <> Results("acknowledge") Then
                SetQuery = SetQuery & "acknowledge = '" & ConvertToYN(EditAcknowledge.value) & "',"
            End If

            If ConvertToYN(EditPriorityRegion1.value) <> Results("priority_region1") Then
                SetQuery = SetQuery & "priority_region1 = '" & ConvertToYN(EditPriorityRegion1.value) & "',"
            End If
            If ConvertToYN(EditPriorityRegion2.value) <> Results("priority_region2") Then
                SetQuery = SetQuery & "priority_region2 = '" & ConvertToYN(EditPriorityRegion2.value) & "',"
            End If
            If ConvertToYN(EditPriorityRegion3.value) <> Results("priority_region3") Then
                SetQuery = SetQuery & "priority_region3 = '" & ConvertToYN(EditPriorityRegion3.value) & "',"
            End If
            If ConvertToYN(EditPriorityRegion4.value) <> Results("priority_region4") Then
                SetQuery = SetQuery & "priority_region4 = '" & ConvertToYN(EditPriorityRegion4.value) & "',"
            End If
            If ConvertToYN(EditPriorityRegion5.value) <> Results("priority_region5") Then
                SetQuery = SetQuery & "priority_region5 = '" & ConvertToYN(EditPriorityRegion5.value) & "',"
            End If
            If ConvertToYN(EditPriorityRegion6.value) <> Results("priority_region6") Then
                SetQuery = SetQuery & "priority_region6 = '" & ConvertToYN(EditPriorityRegion6.value) & "',"
            End If
            
            Call AddNumberChange(SetQuery, "no_obs", Results, EditNoObs.Text)
            Call AddNumberChange(SetQuery, "obs_accepted", Results, EditAcceptedObs.Text)
            Call AddNumberChange(SetQuery, "obs_rejected", Results, EditRejectedObs.Text)

            If EditComments.Text <> Results("comments") Then
                SetQuery = SetQuery & "comments = '" & EditComments.Text & "',"
            End If
            
            Call AddDatePickerChange(SetQuery, "collection_start", "collection_start", Results, _
                 EditCollectionStart)
            
            Call AddDatePickerChange(SetQuery, "collection_end", "collection_end", Results, _
                 EditCollectionEnd)
                    
            Call AddDatePickerChange(SetQuery, "databased", "databased", Results, _
                 EditDatabased)
            
            Call AddStringChange(SetQuery, "databased_name", Results, EditDatabasedName.Text)
            
            Call AddDatePickerChange(SetQuery, "qa_processing_target", "qa_target", Results, _
                                EditQATarget)

            Call AddDatePickerChange(SetQuery, "qa_processing_completed", "qa_completed", Results, _
                                EditQACompleted)
                                
            Call AddStringChange(SetQuery, "qa_processing_name", Results, EditQACompleteName.Text)
            
            Call AddDatePickerChange(SetQuery, "validated", "validated", Results, _
                                EditValidated)
                        
            Call AddStringChange(SetQuery, "validated_name", Results, EditValidationName.Text)
            
            
            If SetQuery <> "" Then
                SetQuery = SetQuery + " meic_number='" & MEICNumber & "'"
            
                UpdateQuery = "UPDATE job_tracking SET " & SetQuery & " WHERE meic_number='" & MEICNumber & "'"
            
                OraDatabase.BeginTrans
                OraDatabase.ExecuteSQL (UpdateQuery)
                OraDatabase.CommitTrans
    
            End If
            
            Call AddJobErrors
            
        End If
    
    Else
        Dim next_meic_number As Integer
        
        SQLQuery = "SELECT MAX(meic_number)+1 next_meic_number FROM job_tracking"
        
        OraDatabase.BeginTrans
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
           next_meic_number = Results("next_meic_number")
        Else
            MsgBox "Error selecting next meic_number from job_tracking table"
            OraDatabase.CommitTrans
            Exit Sub
        End If
          
        SQLQuery = "INSERT INTO job_tracking (" & _
                        "meic_number, po_number," & _
                        "po_task," & _
                        "status," & _
                        "job_type_number," & _
                        "ingres_no   , " & _
                        "Date_Received   ," & _
                        "Supplier    ," & _
                        "Source, Classification," & _
                        "Assigned," & _
                        "Acknowledge ," & _
                        "Priority_Region1, " & _
                        "Priority_Region2," & _
                        "Priority_Region3," & _
                        "Priority_Region4," & _
                        "Priority_Region5," & _
                        "Priority_Region6," & _
                        "No_Obs,Obs_Accepted,Obs_Rejected," & _
                        "Collection_Start," & _
                        "Collection_End," & _
                        "QA_Processing_Target," & _
                        "QA_Processing_Completed," & _
                        "databased,qa_processing_name,databased_name,validated_name,validated," & _
                        "Comments ) VALUES ( "

        SQLQuery = SQLQuery & next_meic_number & ","
        
        Call AddStrField(SQLQuery, EditPONumber.Text)
        Call AddStrField(SQLQuery, EditPOTask.Text)
        
        If EditStatus.Text = "" Then
            SQLQuery = SQLQuery & "'UNKNOWN',"
        Else
            Call AddStrField(SQLQuery, EditStatus.Text)
        End If
        
        If EditJobType.Text = "" Then
            MsgBox "A valid job type must be chosen"
            Exit Sub
        Else
            Dim SubQuery As String
            
            SubQuery = "select job_type_number from meds_job_type where description = '" & EditJobType.Text & "'"
            
            Set Results = OraDatabase.CreateDynaset(SubQuery, 0&)
    
            If Not Results.EOF Then
                SQLQuery = SQLQuery & Results("job_type_number") & ","
            Else
                MsgBox "A valid job type must be chosen"
                Exit Sub
            End If
        End If
        
        
        Call AddNumField(SQLQuery, EditIngresNo.Text)
        Call AddDatePickerField(SQLQuery, EditReceived)
        Call AddStrField(SQLQuery, EditSupplier.Text)
        Call AddStrField(SQLQuery, EditSource.Text)
        Call AddStrField(SQLQuery, EditClassification.Text)
        Call AddStrField(SQLQuery, EditAssigned.Text)
        Call AddCheckBoxField(SQLQuery, EditAcknowledge.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion1.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion2.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion3.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion4.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion5.value)
        Call AddCheckBoxField(SQLQuery, EditPriorityRegion6.value)
        Call AddNumField(SQLQuery, EditNoObs.Text)
        Call AddNumField(SQLQuery, EditAcceptedObs.Text)
        Call AddNumField(SQLQuery, EditRejectedObs.Text)
        Call AddDatePickerField(SQLQuery, EditCollectionStart)
        Call AddDatePickerField(SQLQuery, EditCollectionEnd)
        Call AddDatePickerField(SQLQuery, EditQATarget)
        Call AddDatePickerField(SQLQuery, EditQACompleted)
        Call AddDatePickerField(SQLQuery, EditDatabased)
        Call AddStrField(SQLQuery, EditQACompleteName.Text)
        Call AddStrField(SQLQuery, EditDatabasedName.Text)
        Call AddStrField(SQLQuery, EditValidationName.Text)
        Call AddDatePickerField(SQLQuery, EditValidated)
              
        If EditComments.Text = "" Then
            SQLQuery = SQLQuery & "' ')"
        Else
            SQLQuery = SQLQuery & "'" & EditComments.Text & "')"
        End If
        
        OraDatabase.ExecuteSQL (SQLQuery)
        OraDatabase.CommitTrans
        
        If Results.EOF Then
            MsgBox "Error Inserting new entry into job_tracking table"
            Exit Sub
        End If
        
    End If

    Unload Me

End Sub
