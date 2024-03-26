VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form SelectDataForm 
   Caption         =   "Select Data"
   ClientHeight    =   7005
   ClientLeft      =   1980
   ClientTop       =   2040
   ClientWidth     =   11175
   LinkTopic       =   "Form1"
   ScaleHeight     =   7005
   ScaleWidth      =   11175
   Begin VB.Frame Frame1 
      Caption         =   "Data Type and Themes"
      Height          =   4455
      Index           =   1
      Left            =   480
      TabIndex        =   2
      Top             =   840
      Width           =   9375
      Begin VB.ComboBox TypeCombo 
         Height          =   315
         Left            =   7560
         Style           =   2  'Dropdown List
         TabIndex        =   162
         Top             =   2700
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.CheckBox FixExtents 
         Caption         =   "Fix Extents"
         Height          =   255
         Left            =   7560
         TabIndex        =   161
         Top             =   3360
         Width           =   1335
      End
      Begin VB.ComboBox GridType 
         Height          =   315
         Left            =   7560
         Style           =   2  'Dropdown List
         TabIndex        =   160
         Top             =   720
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.ComboBox Resolution 
         Height          =   315
         Left            =   7560
         Style           =   2  'Dropdown List
         TabIndex        =   159
         Top             =   1380
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.ComboBox MonthCombo 
         Height          =   315
         Left            =   7560
         Style           =   2  'Dropdown List
         TabIndex        =   158
         Top             =   2040
         Visible         =   0   'False
         Width           =   1455
      End
      Begin VB.TextBox Suffix 
         Height          =   285
         Left            =   3000
         TabIndex        =   105
         Top             =   2730
         Width           =   4215
      End
      Begin VB.CheckBox LoadSavedLayer 
         Caption         =   "Load Layer"
         Height          =   255
         Left            =   480
         TabIndex        =   60
         Top             =   3480
         Width           =   1215
      End
      Begin VB.ComboBox SavedLayer 
         Height          =   315
         Left            =   3000
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   59
         Top             =   3840
         Visible         =   0   'False
         Width           =   4335
      End
      Begin VB.CheckBox SaveLayer 
         Caption         =   "Save Layer"
         Height          =   255
         Left            =   480
         TabIndex        =   58
         Top             =   3840
         Width           =   1455
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         Index           =   1
         Left            =   3000
         Style           =   2  'Dropdown List
         TabIndex        =   11
         Top             =   2060
         Width           =   4335
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Index           =   1
         Left            =   3000
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   1390
         Width           =   4335
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Index           =   1
         Left            =   3000
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   8
         Top             =   720
         Width           =   4335
      End
      Begin VB.Label TypeLabel 
         Caption         =   "Data Type"
         Height          =   255
         Left            =   7560
         TabIndex        =   157
         Top             =   2460
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.Label MonthTitle 
         Caption         =   "Month"
         Height          =   255
         Left            =   7560
         TabIndex        =   132
         Top             =   1800
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.Label ResolutionTitle 
         Caption         =   "Resolution"
         Height          =   255
         Left            =   7560
         TabIndex        =   131
         Top             =   1140
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label GridTypeTitle 
         Caption         =   "Grid Type"
         Height          =   255
         Left            =   7560
         TabIndex        =   130
         Top             =   480
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "Select Data Type"
         Height          =   255
         Index           =   1
         Left            =   480
         TabIndex        =   9
         Top             =   780
         Width           =   3855
      End
      Begin VB.Label Label38 
         Caption         =   "Layer Name"
         Height          =   255
         Left            =   480
         TabIndex        =   104
         Top             =   2760
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Select Theme Parameter"
         Height          =   255
         Left            =   480
         TabIndex        =   12
         Top             =   1450
         Width           =   3255
      End
      Begin VB.Label Label3 
         Caption         =   "Select Theme Type"
         Height          =   255
         Left            =   480
         TabIndex        =   13
         Top             =   2120
         Width           =   3255
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Edit Database Output Columns"
      Height          =   4455
      Index           =   6
      Left            =   1680
      TabIndex        =   7
      Top             =   2040
      Width           =   9375
      Begin VB.ComboBox ComboCaptions 
         Height          =   315
         Left            =   600
         TabIndex        =   128
         Text            =   "<Please Enter a Name>"
         Top             =   2040
         Width           =   3855
      End
      Begin VB.CommandButton Command4 
         Caption         =   "<<"
         Height          =   375
         Left            =   3960
         TabIndex        =   126
         Top             =   1440
         Width           =   615
      End
      Begin VB.CommandButton DeleteParameters 
         Caption         =   "Delete Group"
         Height          =   375
         Left            =   2640
         TabIndex        =   125
         Top             =   3000
         Width           =   2055
      End
      Begin VB.CommandButton AddParameters 
         Caption         =   "Add Parameter Group"
         Height          =   375
         Left            =   480
         TabIndex        =   124
         Top             =   3000
         Width           =   1815
      End
      Begin VB.ListBox ParameterList 
         Height          =   3765
         Left            =   5160
         TabIndex        =   123
         Top             =   480
         Width           =   3975
      End
      Begin VB.CommandButton AddParameter 
         Caption         =   ">>"
         Height          =   375
         Left            =   3960
         TabIndex        =   122
         Top             =   840
         Width           =   615
      End
      Begin VB.ComboBox ComboParameters 
         Height          =   315
         Left            =   600
         Style           =   2  'Dropdown List
         TabIndex        =   120
         Top             =   840
         Width           =   3135
      End
      Begin VB.Label Label44 
         Caption         =   "Enter or Select Caption Name"
         Height          =   255
         Left            =   600
         TabIndex        =   127
         Top             =   1800
         Width           =   2895
      End
      Begin VB.Label Label43 
         Caption         =   "Select Columns for Output Parameters"
         Height          =   255
         Left            =   600
         TabIndex        =   121
         Top             =   600
         Width           =   3135
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Select Position Rectangle"
      Height          =   4455
      Index           =   3
      Left            =   1080
      TabIndex        =   3
      Top             =   1320
      Width           =   9375
      Begin VB.CheckBox PositionRect 
         Caption         =   "Enable"
         Height          =   375
         Left            =   120
         TabIndex        =   156
         Top             =   3960
         Width           =   975
      End
      Begin VB.ComboBox SouthHemi 
         Height          =   315
         Left            =   4920
         TabIndex        =   40
         Text            =   "S"
         Top             =   3120
         Width           =   495
      End
      Begin VB.ComboBox WestHemi 
         Height          =   315
         Left            =   1680
         TabIndex        =   39
         Text            =   "W"
         Top             =   1920
         Width           =   510
      End
      Begin VB.ComboBox EastHemi 
         Height          =   315
         Left            =   8040
         TabIndex        =   38
         Text            =   "E"
         Top             =   1920
         Width           =   510
      End
      Begin VB.TextBox SouthMin 
         Height          =   285
         Left            =   4440
         TabIndex        =   37
         Text            =   "0"
         Top             =   3120
         Width           =   375
      End
      Begin VB.TextBox WestMin 
         Height          =   285
         Left            =   1200
         TabIndex        =   36
         Text            =   "0"
         Top             =   1920
         Width           =   375
      End
      Begin VB.TextBox EastMin 
         Height          =   285
         Left            =   7560
         TabIndex        =   35
         Text            =   "0"
         Top             =   1920
         Width           =   375
      End
      Begin VB.TextBox EastDeg 
         Height          =   285
         Left            =   6840
         TabIndex        =   34
         Text            =   "180"
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox WestDeg 
         Height          =   285
         Left            =   600
         TabIndex        =   33
         Text            =   "180"
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox SouthDeg 
         Height          =   285
         Left            =   3720
         TabIndex        =   32
         Text            =   "90"
         Top             =   3120
         Width           =   495
      End
      Begin VB.ComboBox NorthHemi 
         Height          =   315
         Left            =   4920
         TabIndex        =   20
         Text            =   "N"
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox NorthMin 
         Height          =   285
         Left            =   4440
         TabIndex        =   17
         Text            =   "0"
         Top             =   840
         Width           =   375
      End
      Begin VB.TextBox NorthDeg 
         Height          =   285
         Left            =   3720
         TabIndex        =   16
         Text            =   "90"
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label19 
         Caption         =   "Longitude (Western Extent)"
         Height          =   255
         Left            =   480
         TabIndex        =   43
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label Label18 
         Caption         =   "Latitude (Southern Extent)"
         Height          =   255
         Left            =   3600
         TabIndex        =   42
         Top             =   3480
         Width           =   1935
      End
      Begin VB.Label Label17 
         Caption         =   "Longitude (Eastern Extent)"
         Height          =   255
         Left            =   6720
         TabIndex        =   41
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label Label16 
         Caption         =   "N/S"
         Height          =   255
         Left            =   4800
         TabIndex        =   31
         Top             =   2880
         Width           =   375
      End
      Begin VB.Label Label15 
         Caption         =   "E/W"
         Height          =   255
         Left            =   1680
         TabIndex        =   30
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Label14 
         Caption         =   "E/W"
         Height          =   255
         Left            =   8040
         TabIndex        =   29
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Label13 
         Caption         =   "Min"
         Height          =   255
         Left            =   1200
         TabIndex        =   28
         Top             =   1680
         Width           =   255
      End
      Begin VB.Label Label12 
         Caption         =   "Min"
         Height          =   255
         Left            =   4440
         TabIndex        =   27
         Top             =   2880
         Width           =   255
      End
      Begin VB.Label Label11 
         Caption         =   "Min"
         Height          =   255
         Left            =   7560
         TabIndex        =   26
         Top             =   1680
         Width           =   255
      End
      Begin VB.Label Label10 
         Caption         =   "Deg"
         Height          =   255
         Left            =   720
         TabIndex        =   25
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Label9 
         Caption         =   "Deg"
         Height          =   255
         Left            =   3720
         TabIndex        =   24
         Top             =   2880
         Width           =   375
      End
      Begin VB.Label Label8 
         Caption         =   "Deg"
         Height          =   255
         Left            =   6840
         TabIndex        =   23
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label Label7 
         Caption         =   "Latitude (Northern Extent)"
         Height          =   255
         Left            =   3720
         TabIndex        =   22
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label6 
         Caption         =   "N/S"
         Height          =   255
         Left            =   4920
         TabIndex        =   21
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Label5 
         Caption         =   "Min"
         Height          =   255
         Left            =   4440
         TabIndex        =   19
         Top             =   600
         Width           =   255
      End
      Begin VB.Label Label4 
         Caption         =   "Deg"
         Height          =   255
         Left            =   3720
         TabIndex        =   18
         Top             =   600
         Width           =   375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Database Output Columns"
      Height          =   4455
      Index           =   4
      Left            =   1200
      TabIndex        =   5
      Top             =   1560
      Width           =   9375
      Begin VB.ComboBox ColumnName 
         Height          =   315
         Left            =   240
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   97
         Top             =   1680
         Width           =   2895
      End
      Begin VB.ComboBox TableName 
         Height          =   315
         Left            =   240
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   96
         Top             =   960
         Width           =   2895
      End
      Begin VB.CommandButton AddUserDefinedSet 
         Caption         =   ">>"
         Height          =   255
         Left            =   3240
         TabIndex        =   103
         Top             =   3840
         Width           =   495
      End
      Begin VB.CommandButton RemoveField 
         Caption         =   "<<"
         Height          =   495
         Left            =   3600
         TabIndex        =   100
         Top             =   960
         Width           =   495
      End
      Begin VB.CommandButton AddField 
         Caption         =   ">>"
         Height          =   495
         Left            =   3600
         TabIndex        =   99
         Top             =   1680
         Width           =   495
      End
      Begin VB.ListBox SelectedParameters 
         Height          =   3765
         Left            =   4320
         Sorted          =   -1  'True
         TabIndex        =   98
         Top             =   360
         Width           =   4695
      End
      Begin VB.Frame Frame2 
         Caption         =   "By Database Table - Field"
         Height          =   1695
         Left            =   120
         TabIndex        =   113
         Top             =   480
         Width           =   3255
      End
      Begin VB.Frame Frame3 
         Caption         =   "User Defined"
         Height          =   2055
         Left            =   120
         TabIndex        =   114
         Top             =   2280
         Width           =   4095
         Begin VB.CommandButton AddUserColumnName 
            Caption         =   ">>"
            Height          =   255
            Left            =   3120
            TabIndex        =   119
            Top             =   720
            Width           =   495
         End
         Begin VB.ComboBox UserColumnName 
            Height          =   315
            Left            =   240
            TabIndex        =   118
            Top             =   720
            Width           =   2775
         End
         Begin VB.ComboBox UserDefined 
            Height          =   315
            Left            =   240
            TabIndex        =   116
            Top             =   1560
            Width           =   2775
         End
         Begin VB.Label Label42 
            Caption         =   "By Column Name"
            Height          =   255
            Left            =   240
            TabIndex        =   117
            Top             =   360
            Width           =   2775
         End
         Begin VB.Label Label37 
            Caption         =   "User Defined List"
            Height          =   255
            Left            =   360
            TabIndex        =   115
            Top             =   1200
            Width           =   2175
         End
      End
      Begin VB.Label Label36 
         Caption         =   "Column Name"
         Height          =   255
         Left            =   240
         TabIndex        =   102
         Top             =   1440
         Width           =   2535
      End
      Begin VB.Label Label35 
         Caption         =   "Table Name"
         Height          =   255
         Left            =   240
         TabIndex        =   101
         Top             =   720
         Width           =   2055
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Edit Database Output Crteria"
      Height          =   4455
      Index           =   5
      Left            =   1440
      TabIndex        =   6
      Top             =   1800
      Width           =   9375
      Begin VB.CommandButton RemoveThisLayer 
         Caption         =   "Remove This Layer"
         Height          =   375
         Left            =   7320
         TabIndex        =   64
         Top             =   2520
         Width           =   1815
      End
      Begin VB.ComboBox AllLayers 
         Height          =   315
         Left            =   6000
         Sorted          =   -1  'True
         TabIndex        =   63
         Text            =   "AllLayers"
         Top             =   1800
         Width           =   3135
      End
      Begin VB.CommandButton AddThisLayer 
         Caption         =   "Add This Layer"
         Height          =   375
         Left            =   5640
         TabIndex        =   62
         Top             =   2520
         Width           =   1575
      End
      Begin VB.ComboBox User 
         Height          =   315
         Left            =   6000
         TabIndex        =   57
         Top             =   720
         Width           =   1815
      End
      Begin VB.CommandButton Add 
         Caption         =   "Add Criteria"
         Height          =   375
         Left            =   480
         TabIndex        =   55
         Top             =   3840
         Width           =   1575
      End
      Begin VB.CommandButton Remove 
         Caption         =   "Remove Criteria"
         Height          =   375
         Left            =   2760
         TabIndex        =   54
         Top             =   3840
         Width           =   1455
      End
      Begin VB.ComboBox ColName 
         Height          =   315
         Left            =   1920
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   53
         Top             =   1920
         Width           =   2295
      End
      Begin VB.ComboBox Field1 
         Height          =   315
         Left            =   1920
         Sorted          =   -1  'True
         TabIndex        =   51
         Text            =   "Field1"
         Top             =   3120
         Width           =   2295
      End
      Begin VB.ComboBox Table 
         Height          =   315
         Left            =   1920
         Sorted          =   -1  'True
         TabIndex        =   49
         Text            =   "Table"
         Top             =   2520
         Width           =   2295
      End
      Begin VB.ComboBox ExtractionType 
         Height          =   315
         Left            =   1920
         Style           =   2  'Dropdown List
         TabIndex        =   47
         Top             =   1320
         Width           =   2295
      End
      Begin VB.ComboBox Caption1 
         Height          =   315
         Left            =   1920
         Sorted          =   -1  'True
         TabIndex        =   45
         Text            =   "Caption1"
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label Label26 
         Caption         =   "Saved Layers"
         Height          =   255
         Left            =   4800
         TabIndex        =   61
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label25 
         Caption         =   "User "
         Height          =   255
         Left            =   4920
         TabIndex        =   56
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label24 
         Caption         =   "Column Name"
         Height          =   255
         Left            =   360
         TabIndex        =   52
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Label Label23 
         Caption         =   "Database Field"
         Height          =   255
         Left            =   360
         TabIndex        =   50
         Top             =   3120
         Width           =   1335
      End
      Begin VB.Label Label22 
         Caption         =   "Database Table"
         Height          =   255
         Left            =   360
         TabIndex        =   48
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label Label21 
         Caption         =   "Extraction Type"
         Height          =   255
         Left            =   360
         TabIndex        =   46
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label Label20 
         Caption         =   "Caption"
         Height          =   255
         Left            =   360
         TabIndex        =   44
         Top             =   720
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Database Output Selection Criteria"
      Height          =   4455
      Index           =   2
      Left            =   960
      TabIndex        =   4
      Top             =   1080
      Width           =   9375
      Begin VB.Frame DataEntry 
         Caption         =   "Data Entry"
         Height          =   2175
         Index           =   2
         Left            =   720
         TabIndex        =   91
         Top             =   2640
         Visible         =   0   'False
         Width           =   5055
         Begin VB.TextBox Year2 
            Height          =   285
            Left            =   4080
            TabIndex        =   149
            Text            =   "2001"
            Top             =   1200
            Width           =   615
         End
         Begin VB.TextBox Month2 
            Height          =   285
            Left            =   3600
            TabIndex        =   148
            Text            =   "01"
            Top             =   1200
            Width           =   375
         End
         Begin VB.TextBox Day2 
            Height          =   285
            Left            =   3120
            TabIndex        =   147
            Text            =   "01"
            Top             =   1200
            Width           =   375
         End
         Begin VB.TextBox Year1 
            Height          =   285
            Left            =   4080
            TabIndex        =   146
            Text            =   "1901"
            Top             =   480
            Width           =   615
         End
         Begin VB.TextBox Month1 
            Height          =   285
            Left            =   3600
            TabIndex        =   145
            Text            =   "01"
            Top             =   480
            Width           =   375
         End
         Begin VB.TextBox Day1 
            Height          =   285
            Left            =   3120
            TabIndex        =   144
            Text            =   "01"
            Top             =   480
            Width           =   375
         End
         Begin VB.TextBox FieldData2 
            Height          =   285
            Left            =   2880
            TabIndex        =   95
            Top             =   1200
            Visible         =   0   'False
            Width           =   1815
         End
         Begin VB.TextBox FieldData1 
            Height          =   285
            Left            =   2880
            TabIndex        =   94
            Top             =   480
            Width           =   1815
         End
         Begin VB.Label Year2Label 
            Caption         =   "YYYY"
            Height          =   255
            Left            =   4080
            TabIndex        =   155
            Top             =   960
            Width           =   615
         End
         Begin VB.Label Month2Label 
            Caption         =   "MM"
            Height          =   255
            Left            =   3600
            TabIndex        =   154
            Top             =   960
            Width           =   375
         End
         Begin VB.Label Day2Label 
            Caption         =   "DD"
            Height          =   255
            Left            =   3120
            TabIndex        =   153
            Top             =   960
            Width           =   375
         End
         Begin VB.Label Year1Label 
            Caption         =   "YYYY"
            Height          =   255
            Left            =   4080
            TabIndex        =   152
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Month1Label 
            Caption         =   "MM"
            Height          =   255
            Left            =   3600
            TabIndex        =   151
            Top             =   240
            Width           =   375
         End
         Begin VB.Label Day1Label 
            Caption         =   "DD"
            Height          =   255
            Left            =   3120
            TabIndex        =   150
            Top             =   240
            Width           =   375
         End
         Begin VB.Label SecondFieldTitle 
            Caption         =   "Label35"
            Height          =   255
            Left            =   360
            TabIndex        =   93
            Top             =   1200
            Visible         =   0   'False
            Width           =   2535
         End
         Begin VB.Label FirstFieldTitle 
            Caption         =   "Field 1"
            Height          =   255
            Left            =   360
            TabIndex        =   92
            Top             =   480
            Width           =   2535
         End
      End
      Begin VB.Frame DataEntry 
         Caption         =   "Data Entry"
         Height          =   2175
         Index           =   1
         Left            =   600
         TabIndex        =   74
         Top             =   2400
         Visible         =   0   'False
         Width           =   5055
         Begin VB.ComboBox DatabaseColumnValue 
            Height          =   315
            Left            =   240
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   75
            Top             =   1080
            Width           =   3855
         End
         Begin VB.Label DataColumnTitle 
            Caption         =   "Database Column Value"
            Height          =   255
            Left            =   240
            TabIndex        =   76
            Top             =   720
            Width           =   4575
         End
      End
      Begin VB.Frame DataEntry 
         Caption         =   "Data Entry"
         Height          =   2175
         Index           =   3
         Left            =   960
         TabIndex        =   106
         Top             =   2880
         Visible         =   0   'False
         Width           =   5055
         Begin VB.ComboBox FlagStatus 
            Height          =   315
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   112
            Top             =   960
            Width           =   2295
         End
         Begin VB.ComboBox FlagCategory 
            Height          =   315
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   111
            Top             =   480
            Width           =   2295
         End
         Begin VB.TextBox FlagValue 
            Height          =   285
            Left            =   1680
            TabIndex        =   110
            Top             =   1440
            Width           =   2295
         End
         Begin VB.Label Label41 
            Caption         =   "Flag Value"
            Height          =   255
            Left            =   360
            TabIndex        =   109
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label40 
            Caption         =   "Flag Status"
            Height          =   255
            Left            =   360
            TabIndex        =   108
            Top             =   960
            Width           =   1335
         End
         Begin VB.Label Label39 
            Caption         =   "Flag Category"
            Height          =   255
            Left            =   360
            TabIndex        =   107
            Top             =   480
            Width           =   1215
         End
      End
      Begin VB.Frame DataEntry 
         Caption         =   "Data Entry"
         Height          =   2175
         Index           =   0
         Left            =   360
         TabIndex        =   73
         Top             =   2160
         Visible         =   0   'False
         Width           =   5055
         Begin VB.ComboBox MonthTo 
            Height          =   315
            Left            =   3240
            Style           =   2  'Dropdown List
            TabIndex        =   82
            Top             =   1080
            Width           =   855
         End
         Begin VB.ComboBox MonthFrom 
            Height          =   315
            Left            =   960
            Style           =   2  'Dropdown List
            TabIndex        =   81
            Top             =   1080
            Width           =   855
         End
         Begin VB.TextBox YearTo 
            Height          =   285
            Left            =   4200
            TabIndex        =   80
            Text            =   "2002"
            Top             =   1080
            Width           =   615
         End
         Begin VB.TextBox DayTo 
            Height          =   285
            Left            =   2760
            TabIndex        =   79
            Text            =   "01"
            Top             =   1080
            Width           =   375
         End
         Begin VB.TextBox YearFrom 
            Height          =   285
            Left            =   1920
            TabIndex        =   78
            Text            =   "2002"
            Top             =   1080
            Width           =   615
         End
         Begin VB.TextBox DayFrom 
            Height          =   285
            Left            =   360
            TabIndex        =   77
            Text            =   "01"
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label Label33 
            Caption         =   "Date To"
            Height          =   255
            Left            =   2760
            TabIndex        =   90
            Top             =   360
            Width           =   2055
         End
         Begin VB.Label Label32 
            Caption         =   "Date From "
            Height          =   255
            Left            =   360
            TabIndex        =   89
            Top             =   360
            Width           =   1935
         End
         Begin VB.Label Label31 
            Caption         =   "Year"
            Height          =   255
            Left            =   4320
            TabIndex        =   88
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label30 
            Caption         =   "Month"
            Height          =   255
            Left            =   3360
            TabIndex        =   87
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label29 
            Caption         =   "Day"
            Height          =   255
            Left            =   2760
            TabIndex        =   86
            Top             =   720
            Width           =   375
         End
         Begin VB.Label Label28 
            Caption         =   "Year"
            Height          =   255
            Left            =   1920
            TabIndex        =   85
            Top             =   720
            Width           =   495
         End
         Begin VB.Label Label27 
            Caption         =   "Month"
            Height          =   255
            Left            =   960
            TabIndex        =   84
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label34 
            Caption         =   "Day"
            Height          =   255
            Left            =   360
            TabIndex        =   83
            Top             =   720
            Width           =   375
         End
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   19
         Left            =   6960
         TabIndex        =   143
         Top             =   1680
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   18
         Left            =   6960
         TabIndex        =   142
         Top             =   1320
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   17
         Left            =   6960
         TabIndex        =   141
         Top             =   960
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   16
         Left            =   6960
         TabIndex        =   140
         Top             =   600
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   15
         Left            =   6960
         TabIndex        =   139
         Top             =   240
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   14
         Left            =   4560
         TabIndex        =   138
         Top             =   1680
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   13
         Left            =   4560
         TabIndex        =   137
         Top             =   1320
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   12
         Left            =   4560
         TabIndex        =   136
         Top             =   960
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   11
         Left            =   4560
         TabIndex        =   135
         Top             =   600
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   10
         Left            =   4560
         TabIndex        =   134
         Top             =   240
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   9
         Left            =   2400
         TabIndex        =   133
         Top             =   1680
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.ListBox CriteriaList 
         Height          =   1425
         Left            =   5520
         TabIndex        =   129
         Top             =   2280
         Width           =   3615
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   8
         Left            =   2400
         TabIndex        =   72
         Top             =   1320
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   7
         Left            =   2400
         TabIndex        =   71
         Top             =   960
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   6
         Left            =   2400
         TabIndex        =   70
         Top             =   600
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   5
         Left            =   2400
         TabIndex        =   69
         Top             =   240
         Visible         =   0   'False
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   68
         Top             =   1680
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   67
         Top             =   1320
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   66
         Top             =   960
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   65
         Top             =   600
         Visible         =   0   'False
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check 1"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   15
         Top             =   240
         Visible         =   0   'False
         Width           =   2535
      End
   End
   Begin VB.CommandButton AddButton 
      Caption         =   "CREATE LAYER"
      Height          =   495
      Left            =   1200
      TabIndex        =   14
      Top             =   6240
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "CANCEL"
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   6240
      Width           =   1335
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   5055
      Left            =   240
      TabIndex        =   1
      Top             =   480
      Width           =   9855
      _ExtentX        =   17383
      _ExtentY        =   8916
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   6
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Data Selection"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "User Extractions"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Spatial Extraction"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab4 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Labels"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab5 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Edit User Extractions"
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab6 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "Edit Labels"
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "SelectDataForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim ThemeType(7) As String
Dim ptr As Integer
Dim DataTypeIndex As Integer
Private mintCurFrame As Integer ' Current Frame visible
Private iLastCriteria As Integer
Private strObsTable As String
Private m_fEast As Double
Private m_fWest As Double
Private m_fNorth As Double
Private m_fSouth As Double
Private CriteriaDict As Object

Enum VariableDataType
   UnknownType = -1
   NumericType = 0
   CharType = 1
   DateType = 2
End Enum


Private Sub Add_Click()
    Dim strTmp As String
    Dim strSQL As String
    Dim Dyn As Object
    Dim iType As Integer
    Dim Caption As String
    Dim Test As String
    
    Caption = Caption1.Text
    Caption = Trim(Caption)
    Caption = RTrim(Caption)
    
    If ExtractionType.Text = "" Then
        MsgBox ("You must enter an xtraction Type")
        Exit Sub
    End If
    strSQL = "select * from extraction_types_lookup where desciption = '" & ExtractionType.Text & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    iType = Dyn("extraction_type")
    Dyn.Close
    
    strTmp = UCase$(UID)
    strSQL = "select * from extraction_option_lookup where user_name = '" & strTmp & "' and data_type_index = " & DataTypeIndex & " and caption = '" & Caption & "'"
    Debug.Print strSQL
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        strSQL = "update extraction_option_lookup set table_name = '" & Table.Text & "',extraction_type = " & iType & ",field_name_one = '" & Field1.Text & "' where caption = '" & Caption & "' and user_name = '" & strTmp & "'"
        Debug.Print strSQL
        OraDatabase.ExecuteSQL (strSQL)
    Else
        Dim Results As Object
        Dim NumUserExtractions As Integer
        
        strSQL = "select count(*) from extraction_option_lookup where user_name ='" & strTmp & "' and data_type_index = " & DataTypeIndex
        Set Results = OraDatabase.CreateDynaset(strSQL, 0&)
    
        NumUserExtractions = Results("count(*)")
        
        If NumUserExtractions <= Check1.UBound Then
            strSQL = "insert into extraction_option_lookup (data_type_index,extraction_type,table_name,field_name_one,caption,user_name) values (" & DataTypeIndex & "," & iType & ",'" & Table.Text & "','" & Field1.Text & "','" & Caption & "','" & strTmp & "')"
            Debug.Print strSQL
            OraDatabase.ExecuteSQL (strSQL)
        Else
            MsgBox ("Cannot add extraction as max number of extractions has been exceeded")
        End If
        
            
    End If
    Call SetCaptions
End Sub

Private Sub AddField_Click()
    Dim strTmp As String
    Dim strSQL As String
    Dim Dyn As Object

    If LoadSavedLayer.value = 1 Then
        MsgBox ("You cannot change criteria when loading a stored layer")
        Exit Sub
    End If
        
    strTmp = TableName.Text & "." & ColumnName.Text
    If strTmp = "." Or ColumnName.Text = "" Then
        Exit Sub
    End If
    If Fields.Exists(strTmp) = False Then
        Fields.Add strTmp, GetColumn(TableName.Text, ColumnName.Text)
    End If
    If Tables.Exists(TableName.Text) = False Then
        Tables.Add TableName.Text, True
    End If
    Call SetParameterList
End Sub

Private Sub AddParameter_Click()
    ParameterList.AddItem ComboParameters.Text
End Sub

Private Sub AddParameters_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    Dim i As Integer
    
    strUser = UCase$(UID)
    If ComboCaptions.Text = "" Or ComboCaptions.Text = "<Please Enter a Name>" Then
        MsgBox ("You must enter a caption name !")
        Exit Sub
    End If
    
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & ComboCaptions.Text & "' and user_name = '" & strUser & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        strSQL = "delete from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & ComboCaptions.Text & "' and user_name = '" & strUser & "'"
        OraDatabase.ExecuteSQL (strSQL)
    End If
    For i = 0 To ParameterList.ListCount - 1
        strSQL = "insert into extraction_option_lookup (user_name,caption,data_type_index,extraction_type,table_name,field_name_one,field_name_two) values ('" & strUser & "','" & ComboCaptions.Text & "'," & DataTypeIndex & ",300,'" & GetTableFromName(ParameterList.List(i)) & "','" & GetFieldFromName(ParameterList.List(i)) & "','" & ParameterList.List(i) & "')"
        OraDatabase.ExecuteSQL (strSQL)
    Next
    Call SetParameterLists
End Sub

Private Sub AddThisLayer_Click()
    Dim strSQL As String
    Dim strLayerSQL As String
    Dim Dyn As Object
    Dim strUser As String
    
    
    strUser = UCase$(UID)
    strSQL = "select * from layer_lookup where user_name = '" & User.Text & "' and layer_name = '" & AllLayers.Text & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    strLayerSQL = Dyn("layer_sql")
    Dyn.Close
    
    strSQL = "insert into layer_lookup (layer_name,user_name,layer_sql) values ('" & AllLayers.Text & "','" & strUser & "','" & strLayerSQL & "')"
    OraDatabase.ExecuteSQL (strSQL)
    Call SetCaptions
    
End Sub

Private Sub AddUserColumnName_Click()
    Dim strTmp As String
    
    If LoadSavedLayer.value = 1 Then
        MsgBox ("You cannot change criteria when loading a stored layer")
        Exit Sub
    End If
    If UserColumnName.Text = "" Then
        Exit Sub
    End If
    If Fields.Exists(Columns.Item(UserColumnName.Text)) = False Then
        Fields.Add Columns.Item(UserColumnName.Text), UserColumnName.Text
    End If
    strTmp = left(Columns.Item(UserColumnName.Text), InStr(1, Columns.Item(UserColumnName.Text), ".") - 1)
    If Tables.Exists(strTmp) = False Then
        Tables.Add strTmp, True
    End If
    Call SetParameterList
End Sub

Private Sub AddUserDefinedSet_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strTmp As String
    
    If LoadSavedLayer.value = 1 Then
        MsgBox ("You cannot change criteria when loading a stored layer")
        Exit Sub
    End If
    
    If UserDefined.Text = "" Then
        Exit Sub
    End If
    
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & UserDefined.Text & "' and user_name = '" & UCase$(UID) & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        strTmp = Dyn("table_name") & "." & Dyn("field_name")
        If Fields.Exists(strTmp) = False Then
            Fields.Add strTmp, GetColumn(Dyn("table_name"), Dyn("field_name"))
        End If
        strTmp = Dyn("table_name")
        If Tables.Exists(strTmp) = False Then
            Tables.Add strTmp & "." & Dyn("field_name"), True
        End If
        Dyn.MoveNext
    Wend
    Call SetParameterList
End Sub

Private Sub SetDate1Visible(value As Boolean)
    Day1Label.Visible = value
    Month1Label.Visible = value
    Year1Label.Visible = value
    Day1.Visible = value
    Month1.Visible = value
    Year1.Visible = value
End Sub

Private Sub SetDate2Visible(value As Boolean)
    Day2Label.Visible = value
    Month2Label.Visible = value
    Year2Label.Visible = value
    Day2.Visible = value
    Month2.Visible = value
    Year2.Visible = value
End Sub

Private Sub Check1_Click(Index As Integer)
    Dim strSQL As String
    Dim Dyn As Object
    Dim TDyn As Object
    Dim iType As Integer
    Dim Y As Integer
    Dim strTable As String
    Dim strField As String
    Dim strCaption As String
    Dim bIsDate As Boolean
    Dim ColumnDataType As VariableDataType
    
    If LoadSavedLayer.value = 1 Then
        MsgBox ("You cannot change criteria when loading a stored layer")
        Check1(Index).value = 0
        Exit Sub
    End If
    If iLastCriteria <> 99 Then
        Call CreateCriteria
    End If
    iLastCriteria = Index
    FieldData1.Text = ""
    FieldData2.Text = ""
    FieldData1.Visible = True
    SetDate1Visible (False)
    SetDate2Visible (False)
                
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & Check1(Index).Caption & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    iType = Dyn("extraction_type")
    If iType <> 108 And iType <> 109 Then
        strField = Dyn("field_name_one")
        strTable = Dyn("table_name")
        'Dyn.Close
        'strSQL = "select column_name from field_lookup where table_name = '" & strTable & "' and field_name = '" & strField & "'"
        'Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        strCaption = Dyn("caption")
        Dyn.Close
    Else
        strCaption = "Flags"
    End If
    
    strSQL = "select * from field_lookup where data_type_index = " & DataTypeIndex & " and table_name = '" & strTable & "' and field_name = '" & strField & "'"
    Set TDyn = OraDatabase.CreateDynaset(strSQL, 0&)

    Call DetermineColumnType(strTable, strField, ColumnDataType)
    
    For Y = DataEntry.LBound To DataEntry.UBound
    
        DataEntry(Y).Visible = False
        DataEntry(Y).Caption = strCaption
        
        ' because I like to stack the frames so you can see they actually exist then I
        ' have to move them all at run-time to the position of the first frame
        
        DataEntry(Y).left = DataEntry(0).left
        DataEntry(Y).top = DataEntry(0).top
        DataEntry(Y).width = DataEntry(0).width
        DataEntry(Y).height = DataEntry(0).height
    Next Y
    
    Select Case iType
    Case 0
        If Check1(Index).value = 1 Then
            DataEntry(0).Visible = True
            MonthFrom.ListIndex = 0
            MonthTo.ListIndex = 0
        Else
            DataEntry(0).Visible = False
        End If
    Case 1
        If Check1(Index).value = 1 Then
            DataEntry(1).Visible = True
        Else
            DataEntry(1).Visible = False
        End If
        DataColumnTitle.Caption = strTable & " : " & strField & " - Value"
        If strField = "PROTECTION" Then
            strSQL = "select * from job_lookups where type = 'Protection'"
        Else
            If strField = "DATA_USE_CODE" Then
                strSQL = "select distinct data_use_code from meds_processing_job where data_use_code is not null"
            Else
                strSQL = "select distinct " & strField & " from " & strTable
            End If
        End If
        DatabaseColumnValue.Clear
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        While Not Dyn.EOF
            If strField = "PROTECTION" Then
                DatabaseColumnValue.AddItem Dyn("Description")
            Else
                If Dyn(strField) <> "" Then
                    DatabaseColumnValue.AddItem Dyn(strField)
                End If
            End If
            Dyn.MoveNext
        Wend
        Dyn.Close
        If DatabaseColumnValue.ListCount <> 0 Then
            DatabaseColumnValue.ListIndex = 0
        End If
    Case 2
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Cruise Name"
    Case 3
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "MEDS Job Number"
    Case 4
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        End If
    Case 100
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = True
        SecondFieldTitle.Visible = True
        FirstFieldTitle.Caption = "Between "
        SecondFieldTitle.Caption = "and     "
    Case 101
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Equal To"
    Case 102
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Less Than"
    Case 103
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Greater Than"
    Case 104
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Greater Than Or Equal To"
    Case 105
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Less Then Or Equal To"
    Case 106
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Like"
    Case 107
        If Check1(Index).value = 1 Then
            DataEntry(2).Visible = True
        Else
            DataEntry(2).Visible = False
        End If
        FieldData2.Visible = False
        SecondFieldTitle.Visible = False
        FirstFieldTitle.Caption = "Is Not Equal To"
    Case 108, 109
        If Check1(Index).value = 1 Then
            DataEntry(3).Visible = True
        Else
            DataEntry(3).Visible = False
        End If
        
        If iType = 108 Then
            DataEntry(3).Caption = "Extract data with following flags setting:"
        Else
            DataEntry(3).Caption = "Exclude data with following falgs settings:"
        End If
        
        FlagCategory.Clear
        FlagStatus.Clear
            
        strSQL = "select * from flag_types_lookup"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        FlagCategory.AddItem "ANY"
        While Not Dyn.EOF
            FlagCategory.AddItem Dyn("flag_type_name")
            Dyn.MoveNext
        Wend
        FlagCategory.Text = "ANY"
        FlagStatus.AddItem "ANY"
        FlagStatus.AddItem "Historical"
        FlagStatus.AddItem "Current"
        FlagStatus.AddItem "Closed"
        FlagStatus.Text = "ANY"
        Dyn.Close
    End Select
    
    If ColumnDataType = DateType And FieldData1.Visible Then
        SetDate1Visible (True)
        FieldData1.Visible = False
    End If
        
    If ColumnDataType = DateType And FieldData2.Visible Then
        SetDate2Visible (True)
        FieldData2.Visible = False
    End If
            

    
End Sub


Private Sub ComboCaptions_Click()
    Call ListParameters
End Sub

Private Sub Command4_Click()
    Dim i As Integer
    
    For i = ParameterList.ListCount - 1 To 0 Step -1
        If ParameterList.Selected(i) = True Then
            ParameterList.RemoveItem (i)
        End If
    Next
        
End Sub


Private Sub DeleteParameters_Click()
    Dim strUser As String
    Dim strSQL As String
    
    strUser = UCase$(UID)
    strSQL = "delete from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & ComboCaptions.Text & "' and user_name = '" & strUser & "'"
    OraDatabase.ExecuteSQL (strSQL)
    Call SetParameterLists
End Sub


Private Sub FixExtents_Click()
    If FixExtents.value = 1 Then
        PositionRect.value = 0
    End If
End Sub


Private Sub NorthDeg_LostFocus()
    If NorthDeg.Text > 90 Then NorthDeg.Text = "90"
    m_fNorth = NorthDeg.Text + ((1 / 60) * NorthMin.Text)
    If NorthHemi.Text = "S" Then
        m_fNorth = 0 - m_fNorth
    End If
End Sub


Private Sub NorthHemi_LostFocus()
    m_fNorth = NorthDeg.Text + ((1 / 60) * NorthMin.Text)
    If NorthHemi.Text = "S" Then
        m_fNorth = 0 - m_fNorth
    End If
End Sub

Private Sub NorthMin_LostFocus()
    If NorthMin.Text > 59 Then
        If NorthDeg.Text > 89 Then NorthDeg.Text = "89"
        NorthMin.Text = "59"
    End If
    m_fNorth = NorthDeg.Text + ((1 / 60) * NorthMin.Text)
    If NorthHemi.Text = "S" Then
        m_fNorth = 0 - m_fNorth
    End If
End Sub

Private Sub PositionRect_Click()
    If LoadSavedLayer.value = 1 Then
        MsgBox ("You cannot change criteria when loading a stored layer")
        PositionRect.value = 0
        Exit Sub
    End If
    
    If PositionRect.value = 1 Then
        FixExtents.value = 0
        'Frame1(3).Enabled = True
        NorthDeg.Enabled = True
        NorthMin.Enabled = True
        NorthHemi.Enabled = True
        SouthDeg.Enabled = True
        SouthMin.Enabled = True
        SouthHemi.Enabled = True
        EastDeg.Enabled = True
        EastMin.Enabled = True
        EastHemi.Enabled = True
        WestDeg.Enabled = True
        WestMin.Enabled = True
        WestHemi.Enabled = True
        Label7.Enabled = True
        Label17.Enabled = True
        Label18.Enabled = True
        Label19.Enabled = True
        Call NorthMin_LostFocus
        Call SouthMin_LostFocus
        Call EastMin_LostFocus
        Call WestMin_LostFocus
    Else
        ' Frame1(3).Enabled = False
        NorthDeg.Enabled = False
        NorthMin.Enabled = False
        NorthHemi.Enabled = False
        SouthDeg.Enabled = False
        SouthMin.Enabled = False
        SouthHemi.Enabled = False
        EastDeg.Enabled = False
        EastMin.Enabled = False
        EastHemi.Enabled = False
        WestDeg.Enabled = False
        WestMin.Enabled = False
        WestHemi.Enabled = False
        Label7.Enabled = False
        Label17.Enabled = False
        Label18.Enabled = False
        Label19.Enabled = False
    End If
End Sub



Private Sub Resolution_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim CDyn As Object
    Dim strSearch As String
    
    If DataTypeIndex = 64 Then
        Exit Sub
    End If
    Combo1(1).Clear
    Select Case left(Resolution.Text, 1)
    Case 1
        strSearch = "one"
    Case 2
        strSearch = "half"
    Case 4
        strSearch = "quarter"
    End Select
    strSQL = "select resolution,data_type_index from class_information where data_class = 'REPRESENTATIVE' and data_type_index is not null"
    Set CDyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not CDyn.EOF
        If InStr(1, CDyn("resolution"), strSearch) <> 0 Then
            
            strSQL = "SELECT description from job_lookups WHERE index_field = " & CDyn("data_type_index")
            Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
            Combo1(1).AddItem Dyn("description")
            Dyn.Close
        End If
        CDyn.MoveNext
    Wend
    CDyn.Close
    MonthTitle.Visible = False
    MonthCombo.Visible = False
    MonthCombo.ListIndex = 0
    TypeLabel.Visible = False
    TypeCombo.Visible = False
End Sub

Private Sub SavedLayer_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    Dim strCaption As String
    Dim strCriteria As String
    
    If LoadSavedLayer.value = 1 Then
    strUser = UCase$(UID)
    
    strSQL = "select * from layer_lookup where layer_name = '" & SavedLayer.Text & "' and user_name = '" & strUser & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        If Not Dyn.EOF Then
            strSQL = "select * from layer_criteria_lookup where layer_index = " & Dyn("layer_index")
            Dyn.Close
            Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
            CriteriaDict.RemoveAll
            While Not Dyn.EOF
                strCaption = Dyn("caption")
                strCriteria = Dyn("criteria_string")
                CriteriaDict.Add strCaption, strCriteria
                Dyn.MoveNext
            Wend
            Dyn.Close
            Call SetCriteriaList
        End If
    End If
End Sub

Private Sub SaveLayer_Click()
    Dim LayerName As String
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    
    strUser = UCase$(UID)
    
    If SaveLayer.value = 1 Then
        LayerName = Suffix.Text
        Trim (LayerName)
        strSQL = "select * from layer_lookup where user_name = '" & strUser & "' and layer_name = '" & LayerName & "'"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        If Not Dyn.EOF Then
            MsgBox ("Layer '" & LayerName & "' exists - please select another name.")
            SaveLayer.value = 0
        End If
    End If
End Sub




Private Sub SouthDeg_LostFocus()
    If SouthDeg.Text > 90 Then SouthDeg.Text = "90"
    m_fSouth = SouthDeg.Text + ((1 / 60) * SouthMin.Text)
    If SouthHemi.Text = "S" Then
        m_fSouth = 0 - m_fSouth
    End If
End Sub


Private Sub SouthHemi_LostFocus()
    m_fSouth = SouthDeg.Text + ((1 / 60) * SouthMin.Text)
    If SouthHemi.Text = "S" Then
        m_fSouth = 0 - m_fSouth
    End If
End Sub

Private Sub SouthMin_LostFocus()
    If SouthMin.Text > 59 Then
        If SouthDeg.Text > 89 Then SouthDeg.Text = "89"
        SouthMin.Text = "59"
    End If
    m_fSouth = SouthDeg.Text + ((1 / 60) * SouthMin.Text)
    If SouthHemi.Text = "S" Then
        m_fSouth = 0 - m_fSouth
    End If
End Sub

Private Sub TypeCombo_Click()
    ' when this entry changes, update the layer name
    Dim LayerName As String
    Dim strTmp As String
    Dim i As Integer
      
    LayerName = Combo1(1).Text & " (" & TypeCombo.Text & ")"
    If Main.LayerExists(LayerName) = True Then
        i = 1
        strTmp = LayerName & " " & i
        While Main.LayerExists(strTmp)
            i = i + 1
            strTmp = LayerName & " " & i
        Wend
        LayerName = strTmp
    End If
    Trim (LayerName)
    
    Suffix = LayerName
End Sub

Private Sub WestDeg_LostFocus()
    m_fWest = WestDeg.Text + ((1 / 60) * WestMin.Text)
    If WestHemi.Text = "W" Then
        m_fWest = 0 - m_fWest
    End If
End Sub


Private Sub WestHemi_LostFocus()
    m_fWest = WestDeg.Text + ((1 / 60) * WestMin.Text)
    If WestHemi.Text = "W" Then
        m_fWest = 0 - m_fWest
    End If
End Sub

Private Sub WestMin_LostFocus()
    If WestMin.Text > 59 Then
        If WestDeg.Text > 89 Then WestDeg.Text = "89"
        WestMin.Text = "59"
    End If
    m_fWest = WestDeg.Text + ((1 / 60) * WestMin.Text)
    If WestHemi.Text = "W" Then
        m_fWest = 0 - m_fWest
    End If
End Sub
Private Sub EastDeg_LostFocus()
    m_fEast = EastDeg.Text + ((1 / 60) * EastMin.Text)
    If EastHemi.Text = "W" Then
        m_fEast = 0 - m_fEast
    End If
End Sub


Private Sub EastHemi_LostFocus()
    m_fEast = EastDeg.Text + ((1 / 60) * EastMin.Text)
    If EastHemi.Text = "W" Then
        m_fEast = 0 - m_fEast
    End If
End Sub

Private Sub EastMin_LostFocus()
    If EastMin.Text > 59 Then
        If EastDeg.Text > 89 Then EastDeg.Text = "89"
        EastMin.Text = "59"
    End If
    m_fEast = EastDeg.Text + ((1 / 60) * EastMin.Text)
    If EastHemi.Text = "W" Then
        m_fEast = 0 - m_fEast
    End If
End Sub

Private Sub ColName_Click()
    Dim strField As String
    Dim strTable As String
    Dim strSQL As String
    Dim Dyn As Object
    Dim i
    
    If Columns.Exists(ColName.Text) = True Then
        strTable = Columns.Item(ColName.Text)
    Else
        If ColName.Text = "MEDS_JOB_NUMBER" Or ColName.Text = "MEDS_OBSERVATION_NUMBER" Then
            strTable = strObsTable & "." & ColName.Text
        Else
            strSQL = "select * from field_lookup where data_type_index = " & DataTypeIndex & " and column_name = '" & ColName.Text & "'"
            Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
            strTable = Dyn("table_name") & "." & Dyn("field_name")
            Dyn.Close
        End If
    End If
    Table.Text = GetTableName(strTable)
    Call Table_Click

    Field1.Text = GetFieldName(strTable)
End Sub


Private Sub Combo1_Click(Index As Integer)

Dim OraDynaset As Object
Dim SQLStatement As String
Dim StandardDyn As Object
Dim StandardSQL As String
Dim strTmp As String
Dim strTmp1 As String
Dim LayerName As String
Dim i As Integer
Dim strUser As String
Dim MassagedLayerName As String
    
    strUser = UCase$(UID)
    
    Combo3(1).Clear
    
    On Error GoTo Combo1ErrorHandler
    
    Columns.RemoveAll
    ColumnFields.RemoveAll
    Tables.RemoveAll
    ComboParameters.Clear
    Combo3(1).Clear
  
    LayerName = Combo1(1).Text
    If Main.LayerExists(LayerName) = True Then
        i = 1
        strTmp = LayerName & " " & i
        While Main.LayerExists(strTmp)
            i = i + 1
            strTmp = LayerName & " " & i
        Wend
        LayerName = strTmp
    End If
    Trim (LayerName)
    
    Suffix = LayerName
    
    ptr = Combo1(1).ListIndex + 1
    
    If ptr <> 0 Then
        SQLStatement = "select index_field from job_lookups where description = '" & Combo1(1).Text & "'"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        If OraDynaset.EOF Then
            MsgBox ("No Data Type defined for this selection")
            Combo1(1).RemoveItem (Combo1(1).ListIndex)
            Suffix = ""
            Exit Sub
        Else
            DataTypeIndex = OraDynaset("index_field")
        End If
        OraDynaset.Close
        If DataTypeIndex = 73 Then
            SQLStatement = "select distinct species_type from repres_species_l1 order by species_type"
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            MonthCombo.Clear
            While Not OraDynaset.EOF
                MonthCombo.AddItem OraDynaset("species_type")
                MonthTitle.Caption = "Species Type"
                OraDynaset.MoveNext
            Wend
            OraDynaset.Close
            MonthTitle.Visible = True
            MonthCombo.Visible = True
            MonthCombo.ListIndex = 0
            TypeLabel.Visible = False
            TypeCombo.Visible = False
        Else
            If DataTypeIndex = 72 Then
                GridType.ListIndex = 0 ' at the moment only have "Lattice" climatology
                ' other datatypes use this combo box for
                ' different things - make sure it is initialised with months
                Call PopulateMonthCombo(MonthCombo)
                MonthTitle.Caption = "Month"
                MonthTitle.Visible = True
                MonthCombo.Visible = True
                Call PopulateDataTypeCombo
                TypeLabel.Visible = True
                TypeCombo.Visible = True
                TypeCombo.ListIndex = 0
            Else
                MonthTitle.Visible = False
                MonthCombo.Visible = False
                TypeLabel.Visible = False
                TypeCombo.Visible = False
            End If
        End If
        If DataTypeIndex = 64 Then
            GridTypeTitle.Visible = True
            GridType.Visible = True
            ResolutionTitle.Visible = True
            Resolution.Visible = True
        End If
        
         ' add in the standard set of lookups possible for all data types
        StandardSQL = "select description, table_name, column_name from standard_lookup "
        Set StandardDyn = OraDatabase.CreateDynaset(StandardSQL, 0&)
        
        While Not StandardDyn.EOF
            Dim desc As String
            Dim table_dot_column As String
            
            desc = StandardDyn("description")
            table_dot_column = StandardDyn("table_name") & "." & StandardDyn("column_name")
            
            Columns.Add desc, table_dot_column
            ComboParameters.AddItem desc
            
            StandardDyn.MoveNext
            
        Wend
        StandardDyn.Close
        
        SQLStatement = "select distinct FIELD_NAME,COLUMN_NAME,TABLE_NAME from field_lookup where data_type_index = " & DataTypeIndex & " and repeat_count = 0"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        Tables.Add "MEDS_PROCESSING_JOB", True
                 
        If GenericIndex <> 5 Then
            Combo3(1).AddItem "Data Use Code"
            Combo3(1).AddItem "MEDS Archive Date"
            Combo3(1).AddItem "Classification"
        
            While Not OraDynaset.EOF
            
                If OraDynaset("COLUMN_NAME") <> "" Then
                    Combo3(1).AddItem OraDynaset("COLUMN_NAME")
                    strTmp = OraDynaset("COLUMN_NAME")
                    strTmp1 = OraDynaset("TABLE_NAME") & "." & OraDynaset("FIELD_NAME")
                    If OraDynaset("FIELD_NAME") <> "MEDS_JOB_NUMBER" Or OraDynaset("TABLE_NAME") = strObsTable Then
                        If Columns.Exists(strTmp) = False Then
                            Columns.Add strTmp, strTmp1
                        End If
                    End If
                    If OraDynaset("field_name") <> "LATITUDE" And OraDynaset("field_name") <> "LONGITUDE" And OraDynaset("field_name") <> "MEDS_JOB_NUMBER" And OraDynaset("field_name") <> "MEDS_OBSERVATION_NUMBER" Then
                        ComboParameters.AddItem OraDynaset("column_name")
                    End If
                    strTmp1 = OraDynaset("FIELD_NAME")
                    If ColumnFields.Exists(strTmp) = False Then
                        ColumnFields.Add strTmp, strTmp1
                    End If
                Else
                    Combo3(1).AddItem OraDynaset("FIELD_NAME")
                End If
                OraDynaset.MoveNext
            
            Wend
            OraDynaset.Close
            
            SQLStatement = "select table_name from field_lookup where " & _
                           "data_type_index = " & DataTypeIndex & _
                           "and (field_name = 'LOCATION' or " & _
                           "field_name = 'GRID_INDEX' or field_name = 'ENVELOPE')"
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            strObsTable = OraDynaset("table_name")
            If Tables.Exists(strObsTable) = False Then
                Tables.Add strObsTable, 1
            End If
            OraDynaset.Close

        Else
            Combo3(1).AddItem "Latitude"
            Combo3(1).AddItem "Longitude"
            Combo3(1).AddItem "Grid Index"
            Combo3(1).AddItem "DBDBV Depth"
            Columns.Add "Latitude", "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & ".LATITUDE"
            Columns.Add "Longitude", "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & ".LONGITUDE"
            Columns.Add "Grid Index", "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & ".GRID_INDEX"
            Columns.Add "DBDBV Depth", "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & ".DBDBV_DEPTH"
            SQLStatement = "select table_name from field_lookup where data_type_index = " & DataTypeIndex & " and (field_name = 'LOCATION' or field_name = 'GRID_INDEX')"
            OraDynaset.Close
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            strObsTable = OraDynaset("table_name")
            If strObsTable = "REPRES_PROFILE_L1_JAN" Then
                strObsTable = "REPRES_PROFILE_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & "_" & MonthCombo.Text
            End If
                
            If Tables.Exists(strObsTable) = False Then
                Tables.Add strObsTable, 1
            End If
            
       End If

        
        OraDynaset.Close
        
        TableName.Clear
        If GenericIndex <> 5 Then
            SQLStatement = "select distinct table_name from field_lookup where data_type_index = " & DataTypeIndex & " and repeat_count = 0"
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            While Not OraDynaset.EOF
                TableName.AddItem OraDynaset("table_name")
                OraDynaset.MoveNext
            Wend
            OraDynaset.Close
        Else
            TableName.AddItem "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1)
        End If
        
        Call SetParameterLists
        SQLStatement = "SELECT * from layer_lookup WHERE user_name =  '" & strUser & "' and data_type_index = " & DataTypeIndex & " order by layer_name"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        
        While Not OraDynaset.EOF
            SavedLayer.AddItem OraDynaset("layer_name")
             OraDynaset.MoveNext
        Wend
        OraDynaset.Close
        If SavedLayer.ListCount <> 0 Then
            SavedLayer.ListIndex = 0
        End If
        
    End If
    
    Exit Sub
    
Combo1ErrorHandler:

    MsgBox err.description

         
End Sub

Private Sub AddButton_Click()
Dim LayerName As String
Dim AttributeQuery As String
Dim AttributeWhere As String
Dim Colour As String
Dim bitmapFile As String
Dim Items() As String
Dim FieldPtr As Integer
Dim Lyr As Layer
Dim Ds As mapxlib.Dataset
Dim ThemePtr As Integer
Dim strTable As String
Dim SQLStatement As String
Dim OraDynaset As Object
Dim Dyn As Object
Dim strSQL As String
Dim strUser As String
Dim strTmp As String
Dim strMasterGrid As String
Dim i As Integer
Dim k
    '
    ' Need to set the Tables variable the table name used to Display Point Information
    '
    If GenericIndex <> 5 Then
        SQLStatement = "select table_name from field_lookup where " & _
                       "data_type_index = " & DataTypeIndex & " and (" & _
                       "field_name = 'LOCATION' or " & _
                       "field_name = 'GRID_INDEX' or " & _
                       "field_name = 'ENVELOPE')"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        strObsTable = OraDynaset("table_name")
        OraDynaset.Close
        If Tables.Exists(strObsTable) = False Then
            Tables.Add strObsTable, 1
        End If
    Else
        SQLStatement = "select table_name from field_lookup where " & _
                       "data_type_index = " & DataTypeIndex & " and (" & _
                       "field_name = 'LOCATION' or " & _
                       "field_name = 'GRID_INDEX' or " & _
                       "field_name = 'ENVELOPE')"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        strObsTable = OraDynaset("table_name")
        OraDatabase.Close
        If strObsTable = "REPRES_PROFILE_L1_JAN" Then
            ' remove the REPRES_PROFILE stored in tables if any and replace with the
            ' correct one
            k = Tables.keys
            For i = 0 To Tables.Count - 1
                If left(k(i), 14) = "REPRES_PROFILE" Then
                    Tables.Remove (k(i))
                End If
            Next i
            
            strObsTable = "REPRES_PROFILE_" & left(GridType.Text, 1) & left(Resolution.Text, 1) & "_" & MonthCombo.Text
        End If
        
        If Tables.Exists(strObsTable) = False Then
            Tables.Add strObsTable, 1
        End If

    End If

    If iLastCriteria <> 99 Then
        Call CreateCriteria
    End If
    
    If LoadSavedLayer.value = 0 Then
        If Combo3(1).ListIndex <> -1 And Combo4(1).ListIndex <> -1 Then
            If Fields.Exists(Columns.Item(Combo3(1).Text)) = False Then
                Fields.Add Columns.Item(Combo3(1).Text), Combo3(1).Text
            End If
            strTmp = left(Columns.Item(Combo3(1).Text), InStr(1, Columns.Item(Combo3(1).Text), ".") - 1)
            If Tables.Exists(strTmp) = False Then
                Tables.Add strTmp, True
            End If
        End If
        LayerName = Suffix
        
        
        SQLStatement = "select table_name,field_name from field_lookup where " & _
                       "data_type_index = " & DataTypeIndex & " and (" & _
                       "field_name = 'LOCATION' or " & _
                       "field_name = 'GRID_INDEX' or " & _
                       "field_name = 'ENVELOPE') and repeat_count = 0"
        Debug.Print SQLStatement
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        AttributeQuery = "Select "
        strTable = OraDynaset("TABLE_NAME")
        If OraDynaset("FIELD_NAME") = "LOCATION" Or _
           OraDynaset("FIELD_NAME") = "ENVELOPE" _
        Then
            If strTable <> "MEDS_PROCESSING_JOB" Then
                AttributeQuery = AttributeQuery & strTable & "." & "MEDS_JOB_NUMBER" & ","
            Else
                AttributeQuery = AttributeQuery & strTable & "." & "job_number" & ","
            End If
            If GenericIndex <> 8 Then
                AttributeQuery = AttributeQuery & strTable & "." & "meds_observation_number" & ","
            Else
                AttributeQuery = AttributeQuery & strTable & "." & "meds_track_number" & ","
            End If
            AttributeQuery = AttributeQuery & strTable & "." & OraDynaset("FIELD_NAME")
        Else
            strMasterGrid = "MASTER_GRID_" & left(GridType, 1) & left(Resolution, 1)
            AttributeQuery = AttributeQuery & strMasterGrid & "." & GetJobColumn(False) & ", " & strMasterGrid & ".location," & strMasterGrid & ".latitude," & strMasterGrid & ".longitude," & strMasterGrid & ".grid_index"
            If left(GridType, 1) = "L" Then
                AttributeQuery = AttributeQuery & "," & strMasterGrid & ".DBDBV_DEPTH"
            End If
        End If
        OraDynaset.Close
        
        If Fields.Count <> 0 Then
            If strMasterGrid = "" Then
                ' Add in any extra fields specified by the user
                AttributeQuery = AttributeQuery & ", "
                k = Fields.keys
                For i = 0 To Fields.Count - 1
                    AttributeQuery = AttributeQuery & k(i)
                    If i < Fields.Count - 1 Then
                        AttributeQuery = AttributeQuery & ", "
                    End If
                Next i
                ' Add in any extra tables that the fields require
                
                
            Else 'Climatology
                Dim strFrom As String
                k = Fields.keys
                For i = 0 To Fields.Count - 1
                    If InStr(1, k(i), "MASTER_GRID") <> 0 Or InStr(1, k(i), "MEDS_PROCESSING_JOB") <> 0 Then
                        If strFrom <> "" Then
                            strFrom = strFrom & ","
                        End If
                        strFrom = strFrom & k(i)
                    End If
                Next i
                If strFrom <> "" Then
                    AttributeQuery = AttributeQuery & ", " & strFrom
                End If
            End If
        End If
        
        AttributeQuery = AttributeQuery & " from "
        If strMasterGrid <> "" Then
            AttributeQuery = AttributeQuery & strMasterGrid & " ,MEDS_PROCESSING_JOB "
        Else
            If Tables.Exists("MEDS_PROCESSING_JOB") = False Then
                Tables.Add "MEDS_PROCESSING_JOB", True
            End If
            k = Tables.keys
            For i = 0 To Tables.Count - 1
                AttributeQuery = AttributeQuery & k(i)
                If i < Tables.Count - 1 Then
                    AttributeQuery = AttributeQuery & ", "
                End If
            Next i
        End If
            
            
        If FixExtents.value = 1 And PositionRect.value = 0 Then
            Call SetCriteriaList
            If strMasterGrid <> "" Then
                AttributeQuery = AttributeQuery & " where "
                strTmp = strMasterGrid
                AttributeWhere = AttributeWhere & strTmp & ".latitude between " & m_fSouth & " and " & m_fNorth & " and " & strTmp & ".longitude between " & m_fWest & " and " & m_fEast & " "
            Else
                If GenericIndex <> 8 Then
                    SQLStatement = "select table_name from field_lookup where " & _
                                   "data_type_index = " & DataTypeIndex & " and " & _
                                   "field_name = 'LATITUDE' and repeat_count = 0"
                Else
                    SQLStatement = "select table_name from field_lookup where " & _
                                   "data_type_index = " & DataTypeIndex & " and (" & _
                                   "field_name = 'LOCATION' or " & _
                                   "field_name = 'GRID_INDEX' or " & _
                                   "field_name = 'ENVELOPE')"
                End If
                Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
                If Not OraDynaset.EOF Then
                    strTmp = OraDynaset("table_name")
                    If Tables.Exists(strTmp) = False Then
                        Tables.Add strTmp, True
                    End If
                    If GenericIndex <> 8 Then
                        If Fields.Exists(strTmp & "LATITUDE") = False Then
                            Fields.Add strTmp & "LATITUDE", "Latitude"
                        End If
                        If Fields.Exists(strTmp & "LONGITUDE") = False Then
                            Fields.Add strTmp & "LONGITUDE", "Longitude"
                        End If
                    End If
                    If AttributeWhere <> "" Then
                        AttributeWhere = AttributeWhere & " and "
                    Else
                        AttributeWhere = " where "
                    End If
                    If GenericIndex <> 8 Then
                        AttributeWhere = AttributeWhere & strTmp & ".latitude between " & m_fSouth & " and " & m_fNorth & " and " & strTmp & ".longitude between " & m_fWest & " and " & m_fEast & " "
                    Else
                        AttributeWhere = AttributeWhere & GetSpatialMbrQuery(m_fSouth, m_fNorth, m_fWest, m_fEast)
                    End If
                Else
                    ' No Latitude, Longitude fields to search on
                    ' so leave blank
                    AttributeWhere = ""
                End If
                OraDynaset.Close
           End If
        End If
        
        If FixExtents.value = 0 And PositionRect.value = 1 Then
            If strMasterGrid <> "" Then
                strTmp = strMasterGrid
            Else
                If GenericIndex <> 8 Then
                    SQLStatement = "select table_name from field_lookup where " & _
                                   "data_type_index = " & DataTypeIndex & " and " & _
                                   "field_name = 'LATITUDE' and repeat_count = 0"
                Else
                    SQLStatement = "select table_name from field_lookup where " & _
                                   "data_type_index = " & DataTypeIndex & " and (" & _
                                   "field_name = 'LOCATION' or " & _
                                   "field_name = 'GRID_INDEX' or " & _
                                   "field_name = 'ENVELOPE')"
                End If
                Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
                strTmp = OraDynaset("table_name")
                OraDynaset.Close
                If Tables.Exists(strTmp) = False Then
                    Tables.Add strTmp, True
                End If
                If GenericIndex <> 8 Then
                    If Fields.Exists(strTmp & "LATITUDE") = False Then
                        Fields.Add strTmp & "LATITUDE", "Latitude"
                    End If
                    If Fields.Exists(strTmp & "LONGITUDE") = False Then
                        Fields.Add strTmp & "LONGITUDE", "Longitude"
                    End If
                End If
            End If
            If AttributeWhere <> "" Then
                AttributeWhere = AttributeWhere & " and "
            Else
                AttributeWhere = " where "
            End If
            If GenericIndex <> 8 Then
                AttributeWhere = AttributeWhere & strTmp & ".latitude between " & m_fSouth & " and " & m_fNorth & " and " & strTmp & ".longitude between " & m_fWest & " and " & m_fEast & " "
            Else
                AttributeWhere = AttributeWhere & GetSpatialMbrQuery(m_fSouth, m_fNorth, m_fWest, m_fEast)
            End If
        End If
        
        If Criteria.Count <> 0 Then
            k = Criteria.keys
            
            If strMasterGrid <> "" Then
                If AttributeWhere <> "" Then
                    AttributeWhere = AttributeWhere & " and "
                Else
                    AttributeWhere = " where "
                End If
                Dim strMasterWhere As String
                Dim strRepeatWhere As String
                Dim strRepeatTable As String
                Dim X As Integer
                Dim kf
                
                If Criteria.Count > 0 Then
                    For i = 0 To Criteria.Count - 1 'Iterate the array
                        If InStr(1, Criteria.Item(k(i)), "MASTER_GRID") = 0 And InStr(1, Criteria.Item(k(i)), "MEDS_PROCESSING_JOB") = 0 Then
                            If strRepeatWhere <> "" Then
                                strRepeatWhere = strRepeatWhere & " and "
                            End If
                            strRepeatWhere = strRepeatWhere & Criteria.Item(k(i))
                            kf = Fields.keys
                            For X = 0 To Fields.Count - 1
                                If InStr(1, kf(X), "MASTER_GRID") = 0 And InStr(1, kf(X), "MEDS_PROCESSING_JOB") = 0 Then
                                    strRepeatTable = kf(X)
                                    strRepeatTable = GetTableName(strRepeatTable)
                                End If
                            Next X
                        Else
                            If strMasterWhere <> "" Then
                                strMasterWhere = strMasterWhere & " and "
                            End If
                            strMasterWhere = strMasterWhere & Criteria.Item(k(i))
                        End If
                    Next
                    If strMasterWhere <> "" Then
                        AttributeWhere = AttributeWhere & strMasterWhere
                    End If
                    If strRepeatWhere <> "" Then
                        If strMasterWhere <> "" Then
                            AttributeWhere = AttributeWhere & " and "
                        End If
                        AttributeWhere = AttributeWhere & strMasterGrid & ".grid_index in (select distinct grid_index from " & strTable & " where " & strRepeatWhere & " and " & strTable & ".grid_index = " & strMasterGrid & ".grid_index) "
                    End If
                    'AttributeWhere = AttributeWhere & strMasterGrid & ".grid_index in (select distinct grid_index from " & Tables.Item(1) & " where "
                    'AttributeWhere = AttributeWhere & " grid_index = " & strMasterGrid & ".grid_index) "
                End If
                
            
            Else
            
                For i = 0 To Criteria.Count - 1 'Iterate the array
                    If AttributeWhere <> "" Then
                        AttributeWhere = AttributeWhere & " and "
                    Else
                        AttributeWhere = " where "
                    End If
                    AttributeWhere = AttributeWhere & Criteria.Item(k(i))
                Next
            End If
        End If
        Debug.Print AttributeWhere
        If Tables.Count > 1 And strMasterGrid = "" Then
                
            k = Tables.keys
            For i = 0 To Tables.Count - 1
                If k(i) <> strObsTable Then
                    If AttributeWhere = "" Then
                        AttributeWhere = " where "
                    Else
                        AttributeWhere = AttributeWhere & " and "
                    End If
                    If k(i) <> "MEDS_PROCESSING_JOB" Then
                        AttributeWhere = AttributeWhere & strObsTable & ".MEDS_JOB_NUMBER = " & k(i) & ".MEDS_JOB_NUMBER and " & strObsTable & ".meds_observation_number = " & k(i) & ".meds_observation_number"
                    Else
                        AttributeWhere = AttributeWhere & strObsTable & ".MEDS_JOB_NUMBER = " & k(i) & ".job_number "
                    End If
                End If
            Next i
        End If
        
        
        If strMasterGrid <> "" Then
            If AttributeWhere <> "" Then
                AttributeWhere = AttributeWhere & " and "
            Else
                AttributeWhere = " where "
            End If
            If DataTypeIndex <> 64 Then
                AttributeWhere = AttributeWhere & strMasterGrid & "." & GetJobColumn(False) & " is not null and "
            Else
                AttributeWhere = AttributeWhere & strMasterGrid & "." & GetJobColumn(False) & " < 0 and "
            End If
            AttributeWhere = AttributeWhere & strMasterGrid & "." & GetJobColumn(False) & " = MEDS_PROCESSING_JOB.job_number"
            If DataTypeIndex = 72 Then
                AttributeWhere = AttributeWhere & " and " & _
                strMasterGrid & ".DATATYPE = '" & TypeCombo.Text & "'"
            End If
        End If
        
        AttributeQuery = AttributeQuery & AttributeWhere
        
    Else
        '
        ' Load a saved layer :
        ' This code looks to me like it needs a stack of changes making
        '
        strUser = UCase$(UID)
        SQLStatement = "select * from layer_lookup where layer_name = '" & SavedLayer.Text & "' and user_name = '" & strUser & "'"
        Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
        LayerName = OraDynaset("layer_name")
        AttributeQuery = OraDynaset("layer_sql")
        
        strObsTable = OraDynaset("data_table")
        Tables.RemoveAll
        Tables.Add strObsTable, 1
        
        OraDynaset.Close
    End If
    Debug.Print AttributeQuery
    
        
    'Set default colour and file type for child layers
        
    Colour = 255
    
    bitmapFile = "cross.bmp"
   
    If SQLDict.Exists(LayerName & "Generic") = False Then
        SQLDict.Add LayerName & "Generic", GenericIndex
    End If
    
    If SQLDict.Exists(LayerName & "SelectDataType") = True Then
        SQLDict.Remove (LayerName & "SelectDataType")
    End If
    
    If GenericIndex = 5 Then
        SQLDict.Add LayerName & "SelectDataType", TypeCombo.Text
    End If
   
    
    'Now add new layer using addlayer routine in main
  
    If (Main.AddLayer(AttributeQuery, LayerName, bitmapFile, Colour) = True) Then
    Dim strJob
    'Store layer details for use at a later stage
    Call Main.UpdateSelectableLayer
    If SQLDict.Exists(LayerName & "Gridded") = False Then
        SQLDict.Add LayerName & "Gridded", False
    Else
        SQLDict(LayerName & "Gridded") = False
    End If
    Select Case GenericIndex
        Case 1 To 4
            SQLCurrentLayer(0) = "OBSERVED"
        Case 5
            For i = 8 To Len(strObsTable)
                If Mid(strObsTable, i, 1) = "_" Then
                    strTable = Mid(strObsTable, 1, i - 1)
                    i = Len(strObsTable)
                End If
            Next
            SQLStatement = "select * from class_information where table_name like '" & strTable & "%'"
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            strJob = "JOB_" & OraDynaset("job_col")
            OraDynaset.Close
            SQLCurrentLayer(0) = "REPRESENTATIVE"
            SQLDict.Item(LayerName & "Gridded") = True
        Case 6
            SQLCurrentLayer(0) = "OBSERVED"
        Case 8
            SQLCurrentLayer(0) = "OBSERVED TRACKS"
        End Select
            SQLCurrentLayer(1) = LayerName
            SQLCurrentLayer(2) = ""
            SQLCurrentLayer(3) = ""
            SQLCurrentLayer(4) = LayerName
            SQLCurrentLayer(5) = strJob
            SQLCurrentLayer(6) = "SINGLE"
    
        AdditionalInfo.StoreSQLLayer LayerName, AttributeQuery, "PARENT LAYER"
    
           'on theme add error jump to exit
           
           On Error GoTo ThemeErrorHandler
           
           'Now add theme if required
           Screen.MousePointer = vbHourglass
           Set Lyr = Main.Map1.Layers(LayerName)
           FieldPtr = Combo3(1).ListIndex
           
           If Combo4(1).ListIndex = -1 Then
                ThemePtr = 9
           Else
                ThemePtr = Combo4(1).ListIndex
           End If
           
           If FieldPtr >= 0 Then
                Set Ds = Lyr.Datasets.Item(Main.DatasetNameFromLayer(LayerName))
                If ColumnFields.Exists(Combo3(1).List(FieldPtr)) = True Then
                    strTmp = ColumnFields.Item(Combo3(1).List(FieldPtr))
                Else
                    strTmp = Combo3(1).List(FieldPtr)
                End If
                Ds.Themes.Add ThemePtr, strTmp, strTmp
           End If
           
           Screen.MousePointer = vbDefault
   
            Lyr.Selectable = True
            Main.txtSelectableLayer = LayerName
            If SaveLayer.value = 1 Then
                strUser = UCase$(UID)
                strSQL = "insert into layer_lookup (layer_sql,user_name,layer_name,layer_index,data_type_index,data_table) values ('" & Replace(AttributeQuery, "'", "''") & "','" & strUser & "','" & Main.txtSelectableLayer & "', layer_sequence.nextval, " & DataTypeIndex & ",'" & strObsTable & "')"
                OraDatabase.ExecuteSQL (strSQL)
                k = CriteriaDict.keys
                For i = 0 To CriteriaDict.Count - 1
                    strSQL = "insert into layer_criteria_lookup (layer_index,criteria_string,caption) values (layer_sequence.currval,'" & Replace(CriteriaDict.Item(k(i)), "'", "''") & "','" & k(i) & "')"
                    OraDatabase.ExecuteSQL (strSQL)
                Next
            End If
            Tables.RemoveAll
            
            SQLStatement = "select distinct table_name,repeat_count from field_lookup where data_type_index = " & DataTypeIndex & " and table_name <> '" & strObsTable & "' order by repeat_count"
            Debug.Print SQLStatement
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            Tables.Add strObsTable, True
            While Not OraDynaset.EOF
                strTmp = OraDynaset("table_name")
                If Tables.Exists(strTmp) = False Then
                    If left(strObsTable, 14) = "REPRES_PROFILE" Then
                        If left(strTmp, 14) <> "REPRES_PROFILE" Then
                            ' only add one REPRES_PROFILE to the list of tables
                            Tables.Add strTmp, True
                        End If
                    Else
                        Tables.Add strTmp, True
                    End If
                        
                End If
                OraDynaset.MoveNext
            Wend
            OraDynaset.Close
            If SQLDict.Exists(LayerName & "Attribute") = False Then
                SQLDict.Add LayerName & "Attribute", AttributeQuery
            End If
            If SQLDict.Exists(LayerName & "ObsTable") = False Then
                SQLDict.Add LayerName & "ObsTable", strObsTable
            End If
            If SQLDict.Exists(LayerName & "DataTypeIndex") = False Then
                SQLDict.Add LayerName & "DataTypeIndex", DataTypeIndex
            End If
            If SQLDict.Exists(LayerName & "Name") = False Then
                SQLDict.Add LayerName & "Name", LayerName
            End If
            If SQLDict.Exists(LayerName & "JobColumn") = False Then
                SQLDict.Add LayerName & "JobColumn", GetJobColumn(False)
            End If
            If SelectedParameters.ListCount > 0 Then
                Dim d As Dataset
                Dim S As String
                Dim l As Layer
                
                'Set l = Main.Map1.Layers(Main.txtSelectableLayer)
                'Set d = Main.Map1.Datasets.Item(Main.txtSelectableLayer)
                's = SelectedParameters.List(0)
                'strTmp = GetFieldName(Columns.Item(s))
                
                'Set l.LabelProperties.Dataset = d
                'Set l.LabelProperties.DataField = d.Fields.Item(strTmp)
                
            End If
                                
    End If
    DataTypeIndex = 0
    Unload Me
    Exit Sub

ThemeErrorHandler:
    MsgBox err.description
    Screen.MousePointer = vbDefault
    Unload Me
    
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub



Private Sub Form_Load()
Dim Results As Object
Dim JobQuery As String
Dim strUser As String
Dim strTmp As String
Dim i As Integer
Dim arr(1, 8) As String
Dim r As Integer
Dim strPass As String
Dim strKey As String
    
    mintCurFrame = 1
    iLastCriteria = 99
    Frame1(1).Visible = True
    Frame1(2).Visible = False
    Frame1(3).Visible = False
    Frame1(4).Visible = False
    Frame1(5).Visible = False
    Frame1(6).Visible = False
    Frame1(3).Enabled = True
    NorthDeg.Enabled = False
    NorthMin.Enabled = False
    NorthHemi.Enabled = False
    NorthHemi.AddItem ("N")
    NorthHemi.AddItem ("S")
    SouthDeg.Enabled = False
    SouthMin.Enabled = False
    SouthHemi.Enabled = False
    SouthHemi.AddItem ("N")
    SouthHemi.AddItem ("S")
    EastDeg.Enabled = False
    EastMin.Enabled = False
    EastHemi.Enabled = False
    EastHemi.AddItem ("E")
    EastHemi.AddItem ("W")
    WestDeg.Enabled = False
    WestMin.Enabled = False
    WestHemi.Enabled = False
    WestHemi.AddItem ("E")
    WestHemi.AddItem ("W")
    Label7.Enabled = False
    Label17.Enabled = False
    Label18.Enabled = False
    Label19.Enabled = False
    
    Set Criteria = CreateObject("Scripting.Dictionary")
    Set Tables = CreateObject("Scripting.Dictionary")
    Set Fields = CreateObject("Scripting.Dictionary")
    Set Columns = CreateObject("Scripting.Dictionary")
    Set ColumnFields = CreateObject("Scripting.Dictionary")

    Set CriteriaDict = CreateObject("Scripting.Dictionary")

    'Put in defaults for the combo box's
    
    Call PopulateMonthCombo(MonthCombo)
 
    Call PopulateMonthCombo(MonthTo)
 
    Call PopulateMonthCombo(MonthFrom)

    GridType.AddItem ("Lattice")
    GridType.AddItem ("Domain")
    
    Resolution.AddItem ("1 - One Degree")
    Resolution.AddItem ("2 - Half Degree")
    Resolution.AddItem ("4 - Quarter Degree")
    
    If GenericIndex = 5 Then
        GridTypeTitle.Visible = True
        GridType.Visible = True
        ResolutionTitle.Visible = True
        Resolution.Visible = True
    Else
        If GenericIndex = 8 Then
            Combo3(1).Visible = False
            Combo4(1).Visible = False
            Label2.Visible = False
            Label3.Visible = False
            JobQuery = "SELECT distinct 'Track for '||j.description track_desc, " & _
                       "a.table_name from job_lookups j ,all_tab_columns a " & _
                       "where j.generic = 1 and j.type = 'Data Type' " & _
                       "and (a.table_name =  j.usage||'_TRACK') " & _
                       "UNION " & _
                       "SELECT distinct 'Envelope for '||j.description track_desc, " & _
                       "a.table_name from job_lookups j ,all_tab_columns a " & _
                       "where j.generic = 1 and j.type = 'Data Type'" & _
                       "and (a.table_name =  j.usage||'_ENVELOPE') " & _
                       "order by track_desc"
            Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
            While Not Results.EOF
                Combo1(1).AddItem Results("track_desc")
                Results.MoveNext
            Wend
            Results.Close
        Else    '(GenericIndex <> 5) And (GenericIndex <> 8)
                ' Get the list of data types from the job_lookups table
            JobQuery = "SELECT description from job_lookups WHERE generic = " & GenericIndex
            Set Results = OraDatabase.CreateDynaset(JobQuery, 0&)
            While Not Results.EOF
                Combo1(1).AddItem Results("description")
                Results.MoveNext
            Wend
            Results.Close
        End If
    End If
    
    'store results and poulate the drop array list
    i = Main.Map1.Bounds.Xmin
    If i < 0 Then
        i = 0 - i
    Else
        WestHemi = "E"
    End If
    WestDeg = i
    i = Main.Map1.Bounds.Xmax
    If i < 0 Then
        i = 0 - i
        EastHemi = "W"
    End If
    EastDeg = i
    i = Main.Map1.Bounds.Ymin
    If i < 0 Then
        i = 0 - i
    Else
        SouthHemi = "N"
    End If
    SouthDeg = i
    i = Main.Map1.Bounds.Ymax
    If i < 0 Then
        i = 0 - i
        NorthHemi = "S"
    End If
    NorthDeg = i
    If GenericIndex = 6 Then ' Serd and Climatology
        FixExtents.value = 1
        FixExtents.Enabled = False
    End If
    
    strUser = UCase$(UID)
    
    
    Combo4(1).AddItem "Ranged Theme"
    Combo4(1).AddItem "Bar Chart Theme"
    Combo4(1).AddItem "Pie Chart Theme"
    Combo4(1).AddItem "Graduated Symbol Theme"
    Combo4(1).AddItem "Dot Density Theme"
    Combo4(1).AddItem "Individual Value Theme"
    Combo4(1).AddItem "Individual Theme Auto"
    
     
End Sub

Private Sub LoadSavedLayer_Click()
    If LoadSavedLayer.value = 1 Then
        SavedLayer.Visible = True
        Call SavedLayer_Click
    Else
        SavedLayer.Visible = False
        CriteriaList.Clear
    End If
End Sub

Private Sub Remove_Click()
    Dim strSQL As String
    Dim strUser As String
    
    strUser = UCase$(UID)
    strSQL = "delete from extraction_option_lookup where user_name = '" & strUser & "' and data_type_index = " & DataTypeIndex & " and caption = '" & Caption1.Text & "'"
    OraDatabase.ExecuteSQL (strSQL)
    Call SetCaptions
    
End Sub

Private Sub RemoveField_Click()
    Dim i
    Dim strTmp As String
    
    For i = SelectedParameters.ListCount - 1 To 0 Step -1
        If SelectedParameters.Selected(i) Then
            strTmp = SelectedParameters.List(i)
            Fields.Remove (Columns.Item(strTmp))
            SelectedParameters.RemoveItem (i)
        End If
    Next
    Call SetParameterList
End Sub

Private Sub RemoveThisLayer_Click()
    Dim strSQL As String
    Dim strUser As String
        
    strUser = UCase$(UID)
    strSQL = "delete from layer_lookup where user_name = '" & strUser & "' and layer_name = '" & AllLayers.Text & "'"
    OraDatabase.ExecuteSQL (strSQL)
    
    Call SetCaptions
End Sub



Private Sub Table_Click()
    Dim Dyn As Object
    Dim strSQL As String
    
    Field1.Clear
    If Table.Text <> "" Then
        strSQL = "select field_name from field_lookup where include_in_input = 1 and table_name = '" & Table.Text & "'"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        While Not Dyn.EOF
            Field1.AddItem Dyn("field_name")
            Dyn.MoveNext
        Wend
        Dyn.Close
    End If
End Sub


Private Sub TableName_Click()
    Dim strSQL As String
    Dim Dyn As Object
    
    ColumnName.Clear
    If GenericIndex <> 5 Then
        strSQL = "select field_name from field_lookup where table_name = '" & TableName.Text & "' and data_type_index = " & DataTypeIndex
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        While Not Dyn.EOF
            ColumnName.AddItem Dyn("field_name")
            Dyn.MoveNext
        Wend
    Else
        ColumnName.AddItem "LATITUDE"
        ColumnName.AddItem "LONGITUDE"
        ColumnName.AddItem "GRID_INDEX"
        ColumnName.AddItem "DBDBV_DEPTH"
    End If
End Sub

Private Sub TabStrip1_Click()

    Dim k, i
    If Combo1(1).Text = "" And TabStrip1.SelectedItem.Index <> 1 Then
        MsgBox ("You must first select a Data Type")
        TabStrip1.Tabs(1).Selected = True
    End If
    If TabStrip1.SelectedItem.Index = mintCurFrame _
       Then Exit Sub ' No need to change frame.
    ' Otherwise, hide old frame, show new.
    Frame1(TabStrip1.SelectedItem.Index).Visible = True
    Frame1(mintCurFrame).Visible = False
    Frame1(TabStrip1.SelectedItem.Index).left = Frame1(1).left
    Frame1(TabStrip1.SelectedItem.Index).top = Frame1(1).top
    Frame1(TabStrip1.SelectedItem.Index).width = Frame1(1).width
    Frame1(TabStrip1.SelectedItem.Index).height = Frame1(1).height
    
    ' Set mintCurFrame to new value.
    mintCurFrame = TabStrip1.SelectedItem.Index
        
    Select Case mintCurFrame
        Case 2
            Call SetCriteriaOptions
            Call SetCriteriaList
        Case 4
            Dim strSQL As String
            Dim Dyn As Object
            strSQL = "select distinct caption from extraction_option_lookup where extraction_type = 200 and data_type_index = " & DataTypeIndex & " and user_name = '" & UCase$(UID) & "'"
            Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
            While Not Dyn.EOF
                UserDefined.AddItem Dyn("caption")
                Dyn.MoveNext
            Wend
            If GenericIndex <> 5 Then
                k = Columns.keys
                For i = 0 To Columns.Count - 1
                    UserColumnName.AddItem k(i)
                Next
            Else
                UserColumnName.AddItem "Latitude"
                UserColumnName.AddItem "Longitude"
                UserColumnName.AddItem "Grid Index"
                UserColumnName.AddItem "DBDBV Depth"
            End If
            
            Call SetParameterList
        Case 5
            Call SetCaptions
        End Select
End Sub

Private Sub SetCaptions()
    Dim strSQL As String
    Dim Dyn As Object
    Dim StandardSQL As String
    Dim StandardDyn As Object
    Dim strUser As String
    Dim flag As Boolean
    
    
    If User.Text = "" Then
        strUser = UCase$(UID)
        flag = False
    Else
        strUser = User.Text
        flag = True
    End If
    
    ExtractionType.Clear
    Field1.Clear
    
    strSQL = "select * from extraction_types_lookup where extraction_type < 200 and extraction_type <> 2"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        ExtractionType.AddItem Dyn("desciption")
        Dyn.MoveNext
    Wend
    Dyn.Close
    Caption1.Clear
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and extraction_type < 200 and user_name = '" & strUser & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        Caption1.AddItem Dyn("caption")
        Dyn.MoveNext
    Wend
    Caption1.Text = "<Please Select>"
    Dyn.Close
    
    Table.Clear
    strSQL = "select distinct table_name from field_lookup where data_type_index = " & DataTypeIndex
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        Table.AddItem Dyn("table_name")
        Dyn.MoveNext
    Wend
    Dyn.Close
    strSQL = "select * from field_lookup where data_type_index = " & DataTypeIndex & " and column_name is not null and field_name <> 'MEDS_JOB_NUMBER' and field_name <> 'MEDS_OBSERVATION_NUMBER'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    ColName.Clear
    While Not Dyn.EOF
        ColName.AddItem Dyn("column_name")
        Dyn.MoveNext
    Wend
    
    ' add in the standard set of lookups possible for all data types
    StandardSQL = "select description, table_name, column_name from standard_lookup "
    Set StandardDyn = OraDatabase.CreateDynaset(StandardSQL, 0&)
        
    While Not StandardDyn.EOF
        ColName.AddItem StandardDyn("description")
            
        StandardDyn.MoveNext
            
    Wend
    
    
    If flag = False Then
        User.Clear
        strSQL = "select distinct user_name from extraction_option_lookup where extraction_type < 200"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        While Not Dyn.EOF
            User.AddItem Dyn("user_name")
            Dyn.MoveNext
        Wend
        Dyn.Close
        User.Text = strUser
    End If
    
    AllLayers.Clear
    SavedLayer.Clear
    strSQL = "select * from layer_lookup where user_name = '" & User.Text & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        AllLayers.AddItem Dyn("layer_name")
        SavedLayer.AddItem Dyn("layer_name")
        Dyn.MoveNext
    Wend
    Dyn.Close
    
    strUser = UCase$(UID)
    If strUser <> User.Text Then
        Remove.Visible = False
        RemoveThisLayer.Visible = False
    Else
        Remove.Visible = True
        RemoveThisLayer.Visible = True
    End If
End Sub


Private Sub User_Click()
    SetCaptions
End Sub
Private Sub Caption1_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    Dim flag As Boolean
    Dim FDyn As Object
    Dim Caption As String
    
    Caption = Caption1.Text
    Trim (Caption)
    strUser = UCase$(UID)
    
    strSQL = "select distinct table_name from standard_lookup"
    Set FDyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not FDyn.EOF
        Table.AddItem FDyn("table_name")
        FDyn.MoveNext
    Wend
    FDyn.Close
    
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & Caption & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    Dim Count As Integer
    Count = 0
    Table.ListIndex = Count
    While Table.Text <> Dyn("table_name") And (Count + 1) < Table.ListCount
        Count = Count + 1
        Table.ListIndex = Count
    Wend
    

    
    
    
    Field1.Clear
    strSQL = "select field_name from field_lookup where data_type_index = " & DataTypeIndex & " and table_name = '" & Table.Text & "'"
    Set FDyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not FDyn.EOF
        Field1.AddItem FDyn("field_name")
        FDyn.MoveNext
    Wend
    FDyn.Close
    
    strSQL = "select distinct column_name from standard_lookup"
    Set FDyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not FDyn.EOF
        Field1.AddItem FDyn("column_name")
        FDyn.MoveNext
    Wend
    FDyn.Close
    
    Count = 0
    Field1.ListIndex = Count
    While Field1.Text <> Dyn("field_name_one")
        Count = Count + 1
        Field1.ListIndex = Count
    Wend
    
    strSQL = "select * from extraction_types_lookup where extraction_type = " & Dyn("extraction_type")
    Set FDyn = OraDatabase.CreateDynaset(strSQL, 0&)
    Count = 0
    ExtractionType.ListIndex = Count
    While ExtractionType.Text <> FDyn("desciption")
        Count = Count + 1
        ExtractionType.ListIndex = Count
    Wend
    
End Sub

'
' To speed up query execution sub clauses are expanded in line.
'
Private Sub ExecuteSubClause(strSubClauseSQL As String, _
                            strFieldName As String, _
                            ByRef StrItemsList As String, _
                            ByRef iNumberOfItems As Integer)
    Dim SubClauseDyn As Object
    Set SubClauseDyn = OraDatabase.CreateDynaset(strSubClauseSQL, 0&)
    
    StrItemsList = ""
    iNumberOfItems = 0
    
    While Not SubClauseDyn.EOF
        StrItemsList = StrItemsList & SubClauseDyn(strFieldName)
        iNumberOfItems = iNumberOfItems + 1
        SubClauseDyn.MoveNext
        If Not SubClauseDyn.EOF Then
            StrItemsList = StrItemsList & ","
        End If
    Wend
    
End Sub

Private Sub FormatValueForSQL(ColumnDataType As VariableDataType, _
                               strOperator As String, _
                               strValueField As String, _
                               ByRef strValue As String)
                               
    If ColumnDataType = CharType Then
        If strOperator = "like" Then
            strValue = "'%" & strValueField & "%'"
        Else
            strValue = "'" & strValueField & "'"
        End If
    Else
        If ColumnDataType = DateType Then
            strValue = "TO_DATE('" & Day1.Text & "/" & Month1.Text & "/" & Year1.Text & "','DD/MM/YYYY')"
        Else
            strValue = strValueField
        End If
    End If
            
End Sub
            

Private Sub AddClauseToSQL(Dyn As Object, _
                            strOperator As String, _
                            strVerboseOperator As String, _
                            ColumnDataType As VariableDataType, _
                            strMEDSColName As String, _
                            strColumn As String)
                            
    Dim strTmp As String
    Dim strSQL As String
    Dim strValue As String
    Dim TDyn As Object
    Dim ColInfoDyn As Object
    Dim k
    
    If Check1(iLastCriteria).value = 1 Then
        strSQL = "select repeat_count,field_type from field_lookup where table_name = '" & Dyn("table_name") & "' and field_name = '" & Dyn("field_name_one") & "'"
        Set TDyn = OraDatabase.CreateDynaset(strSQL, 0&)
        If TDyn("repeat_count") = 0 Then
            strTmp = Dyn("table_name")
            If Tables.Exists(strTmp) = False Then
                Tables.Add strTmp, False
            End If
            strTmp = Dyn("table_name") & "." & Dyn("field_name_one")
            If Fields.Exists(strTmp) = False Then
                Fields.Add strTmp, GetColumn(Dyn("table_name"), Dyn("field_name_one"))
            End If
            
            Call FormatValueForSQL(ColumnDataType, strOperator, FieldData1.Text, strValue)

            Criteria.Add iLastCriteria, Dyn("table_name") & "." & Dyn("field_name_one") & " " & strOperator & " " & strValue
        Else
            If TDyn("repeat_count") = 1 Then
                Call FormatValueForSQL(ColumnDataType, strOperator, FieldData1.Text, strValue)

                Criteria.Add iLastCriteria, strObsTable & ".meds_observation_number in (select distinct(meds_observation_number) from " & Dyn("table_name") & " where " & Dyn("table_name") & "." & strMEDSColName & " = " & strObsTable & ".MEDS_JOB_NUMBER and " & Dyn("table_name") & "." & Dyn("field_name_one") & " " & strOperator & " " & strValue & ")"
 
            Else
                '
                ' No rows in field lookup
                ' This will be one of the standard lookups possible in the 'standard_lookup' table
                '
                Dim strSubClauseSQL As String
                
                Call FormatValueForSQL(ColumnDataType, strOperator, FieldData1.Text, strValue)

                If Dyn("table_name") = "CRUISE_LAYER" Then
                    strSubClauseSQL = "select distinct(meds_cruise_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                    
                    Criteria.Add iLastCriteria, "meds_processing_job.meds_cruise_number in (" & strSubClauseSQL & ")"
                    
                ElseIf Dyn("table_name") = "SHIP_DETAILS" Then
                        strSubClauseSQL = "select distinct(meds_ship_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                        Criteria.Add iLastCriteria, "meds_processing_job.meds_ship_number in ( " & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "INSTRUMENT" Then
                        strSubClauseSQL = "select distinct(ocean) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                        Criteria.Add iLastCriteria, "meds_processing_job.instrument_code in ( " & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "JOB_TRACKING" Then
                        strSubClauseSQL = "select distinct(meic_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                        Criteria.Add iLastCriteria, "meds_processing_job.meic_number in ( " & strSubClauseSQL & ")"
                Else
                        ' MEDS_PROCESSING_JOB query
                        Criteria.Add iLastCriteria, strObsTable & ".meds_observation_number in (select distinct(meds_observation_number) from " & Dyn("table_name") & " where " & Dyn("table_name") & "." & strMEDSColName & " = " & strObsTable & ".MEDS_JOB_NUMBER and " & Dyn("table_name") & "." & Dyn("field_name_one") & " " & strOperator & " " & strValue & ")"
                End If
                
            End If
        End If
        If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = False Then
            CriteriaDict.Add Check1(iLastCriteria).Caption, strColumn & " " & strVerboseOperator & " " & strValue
        End If
    Else
        If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = True Then
            CriteriaDict.Remove Check1(iLastCriteria).Caption
        End If
    End If
 
End Sub


Private Sub DetermineColumnType(strTableName As String, _
                                strColumnName As String, _
                                ByRef ColumnDataType As VariableDataType)
    Dim strSQL As String
    Dim ColInfoDyn As Object
    
    strSQL = "select data_type from all_tab_columns where owner = '{insert-admin-user}' and " & _
                "table_name = '" & _
                strTableName & "' and column_name = '" & strColumnName & "'"
                
    Set ColInfoDyn = OraDatabase.CreateDynaset(strSQL, 0&)
        
    ColumnDataType = UnknownType
    
    If Not ColInfoDyn.EOF Then
        If ColInfoDyn("data_type") = "CHAR" Or ColInfoDyn("data_type") = "VARCHAR2" Then
            ColumnDataType = CharType
        Else
            If ColInfoDyn("data_type") = "DATE" Then
                ColumnDataType = DateType
            Else
                ColumnDataType = NumericType
            End If
        End If
    End If
    
End Sub


Private Sub CreateCriteria()

    Dim TDyn As Object
    Dim Dyn As Object
    Dim CDyn As Object
    Dim strSQL As String
    Dim strTmp As String
    Dim strTmp1 As String
    Dim OField As Object
    Dim k, i
    Dim iType As Integer
    Dim strTable As String
    Dim strField As String
    Dim strColumn As String
    Dim strCategory As String
    Dim strStatus As String
    Dim strValue As String
    Dim strFlags As String
    Dim strMEDSColName As String
    Dim ColumnDataType As VariableDataType
    Dim StrItemsList As String
    Dim strSubClauseSQL As String
    Dim strOperator As String
    
    strMEDSColName = "MEDS_JOB_NUMBER"
    If Criteria.Exists(iLastCriteria) Then
        Criteria.Remove iLastCriteria
    End If
    strSQL = "select * from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and caption = '" & Check1(iLastCriteria).Caption & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    iType = Dyn("extraction_type")
    
    If iType <> 108 And iType <> 109 Then
        If Dyn("table_name") = "MEDS_PROCESSING_JOB" Then
            Call DetermineColumnType(Dyn("table_name"), Dyn("field_name_one"), ColumnDataType)
            strMEDSColName = "JOB_NUMBER"
            strColumn = Dyn("caption")
        Else
            strTable = Dyn("table_name")
            strField = Dyn("field_name_one")
            strSQL = "select * from field_lookup where data_type_index = " & DataTypeIndex & " and table_name = '" & strTable & "' and field_name = '" & strField & "'"
            Set TDyn = OraDatabase.CreateDynaset(strSQL, 0&)
            If Not TDyn.EOF Then
                strColumn = TDyn("column_name")
            End If
            Call DetermineColumnType(Dyn("table_name"), Dyn("field_name_one"), ColumnDataType)
        End If
    End If
    
    Select Case iType
    Case 0          ' DATE Selection criteria
        If Check1(iLastCriteria).value = 1 Then
            If Dyn("table_name") = "MEDS_PROCESSING_JOB" Then
                Criteria.Add iLastCriteria, Dyn("table_name") & "." & Dyn("field_name_one") & " between TO_DATE('" & DayFrom.Text & "-" & MonthFrom.Text & "-" & YearFrom.Text & "','DD/MON/YYYY') and TO_DATE('" & DayTo.Text & "-" & MonthTo.Text & "-" & YearTo.Text & "','DD/MON/YYYY') "
            Else
                ' Between clause for a table not present in the standard QUERY such as
                ' CRUISE_LAYER or SHIP_DETAILS - NO NEED TO HANDLE INSTRUMENT QUERIES
                ' AS Instrument has not date fields
                
                If Dyn("table_name") = "CRUISE_LAYER" Then
                    strSubClauseSQL = "select distinct(meds_cruise_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " between TO_DATE('" & DayFrom.Text & "-" & MonthFrom.Text & "-" & YearFrom.Text & "','DD/MON/YYYY') and TO_DATE('" & DayTo.Text & "-" & MonthTo.Text & "-" & YearTo.Text & "','DD/MON/YYYY') "
                    
                    Criteria.Add iLastCriteria, "meds_processing_job.meds_cruise_number in (" & strSubClauseSQL & ")"

                ElseIf Dyn("table_name") = "SHIP_DETAILS" Then
                    strSubClauseSQL = "select distinct(meds_ship_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " between TO_DATE('" & DayFrom.Text & "-" & MonthFrom.Text & "-" & YearFrom.Text & "','DD/MON/YYYY') and TO_DATE('" & DayTo.Text & "-" & MonthTo.Text & "-" & YearTo.Text & "','DD/MON/YYYY') "
                        
                    Criteria.Add iLastCriteria, "meds_processing_job.meds_ship_number in ( " & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "JOB_TRACKING" Then
                    strSubClauseSQL = "select distinct(meic_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " between TO_DATE('" & DayFrom.Text & "-" & MonthFrom.Text & "-" & YearFrom.Text & "','DD/MON/YYYY') and TO_DATE('" & DayTo.Text & "-" & MonthTo.Text & "-" & YearTo.Text & "','DD/MON/YYYY') "
                        
                    Criteria.Add iLastCriteria, "meds_processing_job.meic_number in ( " & strSubClauseSQL & ")"
                
                End If
            End If
        Else
            DataEntry(0).Visible = False
        End If
    Case 1
        If Check1(iLastCriteria).value = 1 Then
            strSQL = "select distinct repeat_count from field_lookup where table_name = '" & Dyn("table_name") & "'"
            Set TDyn = OraDatabase.CreateDynaset(strSQL, 0&)
            If TDyn("repeat_count") = 0 Then
                strTmp = Dyn("table_name")
                If Tables.Exists(strTmp) = False Then
                    Tables.Add strTmp, False
                End If
                Call FormatValueForSQL(ColumnDataType, "=", DatabaseColumnValue, strValue)
                
                strTmp = Dyn("table_name") & "." & Dyn("field_name_one")
                If Fields.Exists(strTmp) = False Then
                    Fields.Add strTmp, GetColumn(Dyn("table_name"), Dyn("field_name_one"))
                End If
                Criteria.Add iLastCriteria, Dyn("table_name") & "." & Dyn("field_name_one") & " = " & strValue
            Else
                strOperator = "="
                k = Tables.keys
                Call FormatValueForSQL(ColumnDataType, "=", DatabaseColumnValue, strValue)
                
                If Dyn("table_name") = "CRUISE_LAYER" Then
                    strSubClauseSQL = "select distinct(meds_cruise_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                    
                    Criteria.Add iLastCriteria, "meds_processing_job.meds_cruise_number in (" & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "SHIP_DETAILS" Then
                    strSubClauseSQL = "select distinct(meds_ship_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                    Criteria.Add iLastCriteria, "meds_processing_job.meds_ship_number in ( " & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "INSTRUMENT" Then
                    strSubClauseSQL = "select distinct(ocean) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                    Criteria.Add iLastCriteria, "meds_processing_job.instrument_code in ( " & strSubClauseSQL & ")"
                ElseIf Dyn("table_name") = "JOB_TRACKING" Then
                    strSubClauseSQL = "select distinct(meic_number) from " & Dyn("table_name") & " where " & Dyn("field_name_one") & " " & strOperator & " " & strValue
                        
                    Criteria.Add iLastCriteria, "meds_processing_job.meic_number in ( " & strSubClauseSQL & ")"
                Else
                    Criteria.Add iLastCriteria, k(0) & ".meds_observation_number in (select distinct(meds_observation_number) from " & Dyn("table_name") & " where " & Dyn("table_name") & "." & strMEDSColName & " = " & strObsTable & ".MEDS_JOB_NUMBER and " & Dyn("table_name") & "." & Dyn("field_name_one") & " = " & strValue & ")"
                End If
            End If
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = False Then
              CriteriaDict.Add Check1(iLastCriteria).Caption, strColumn & " equal to '" & DatabaseColumnValue & "'"
            End If
        Else
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = True Then
                CriteriaDict.Remove Check1(iLastCriteria).Caption
            End If
            DataEntry(1).Visible = False
        End If
    Case 2
    Case 3
    Case 4
    Case 100
        If Check1(iLastCriteria).value = 1 Then
            strSQL = "select distinct repeat_count from field_lookup where table_name = '" & Dyn("table_name") & "'"
            Set TDyn = OraDatabase.CreateDynaset(strSQL, 0&)
            If TDyn("repeat_count") = 0 Then
                strTmp = Dyn("table_name")
                If Tables.Exists(strTmp) = False Then
                    Tables.Add strTmp, False
                End If
                strTmp = Dyn("table_name") & "." & Dyn("field_name_one")
                If Fields.Exists(strTmp) = False Then
                    Fields.Add strTmp, GetColumn(Dyn("table_name"), Dyn("field_name_one"))
                End If
                If ColumnDataType = CharType Then
                    strValue = " between '" & FieldData1.Text & "' and '" & FieldData2.Text & "'"
                Else
                    If ColumnDataType = DateType Then
                        strValue = " between " & _
                                " TO_DATE('" & Day1.Text & "/" & Month1.Text & "/" & Year1.Text & "','DD/MM/YYYY') and " & _
                                " TO_DATE('" & Day2.Text & "/" & Month2.Text & "/" & Year2.Text & "','DD/MM/YYYY')"
               
                    Else
                        strValue = " between " & FieldData1.Text & " AND " & FieldData2.Text
                    End If
                    Criteria.Add iLastCriteria, Dyn("table_name") & "." & Dyn("field_name_one") & strValue
                End If
            Else
                k = Tables.keys
                If ColumnDataType = CharType Then ' 1 = VARCHAR2
                    strValue = " between '" & FieldData1.Text & "' and '" & FieldData2.Text & "'"
                Else
                    If ColumnDataType = DateType Then
                        strValue = " between " & _
                                " TO_DATE('" & Day1.Text & "/" & Month1.Text & "/" & Year1.Text & "','DD/MM/YYYY') and " & _
                                " TO_DATE('" & Day2.Text & "/" & Month2.Text & "/" & Year2.Text & "','DD/MM/YYYY')"
               
                    Else
                        strValue = " between " & FieldData1.Text & " and " & FieldData2.Text
                    End If
                End If
                Criteria.Add iLastCriteria, strObsTable & ".meds_observation_number in (select distinct(meds_observation_number) from " & Dyn("table_name") & " where " & Dyn("table_name") & "." & strMEDSColName & " = " & strObsTable & ".MEDS_JOB_NUMBER and " & Dyn("table_name") & "." & Dyn("field_name_one") & strValue & " ) "
            End If
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = False Then
              CriteriaDict.Add Check1(iLastCriteria).Caption, strColumn & strValue
            End If
        Else
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = True Then
                CriteriaDict.Remove Check1(iLastCriteria).Caption
            End If
        End If
        
    Case 101
        Call AddClauseToSQL(Dyn, "=", " is Equal to ", ColumnDataType, strMEDSColName, strColumn)
    
    Case 102
         Call AddClauseToSQL(Dyn, "<", " is Less than ", ColumnDataType, strMEDSColName, strColumn)
     
     Case 103
          Call AddClauseToSQL(Dyn, ">", " is Greater than ", ColumnDataType, strMEDSColName, strColumn)
    
    Case 104
          Call AddClauseToSQL(Dyn, ">=", " is Greater or Equal to ", ColumnDataType, strMEDSColName, strColumn)
    
    Case 105
          Call AddClauseToSQL(Dyn, "<=", " is Less than or Equal to ", ColumnDataType, strMEDSColName, strColumn)
    
    Case 107
          Call AddClauseToSQL(Dyn, "<>", " is Not Equal to ", ColumnDataType, strMEDSColName, strColumn)
    
    Case 106
        Call AddClauseToSQL(Dyn, "like", " is Like ", ColumnDataType, strMEDSColName, strColumn)
        
    Case 107
          Call AddClauseToSQL(Dyn, "<>", " is Not Equal to ", ColumnDataType, strMEDSColName, strColumn)
        
    Case 108
        If Check1(iLastCriteria).value = 1 Then
            If FlagCategory.Text <> "ANY" Then
                strFlags = " meds_flags.category = '" & FlagCategory.Text & "'"
            End If
            If FlagStatus.Text <> "ANY" Then
                strStatus = " meds_flags.flag_status = " & FlagStatus.ListIndex - 1
                If strFlags <> "" Then
                    strFlags = strFlags & " and "
                End If
                strFlags = strFlags & strStatus
            End If
            If FlagValue.Text <> "" Then
                strValue = " meds_flags.flag_value = '" & FlagValue.Text & "'"
                If strFlags <> "" Then
                    strFlags = strFlags & " and "
                End If
                strFlags = strFlags & strValue
            End If
            k = Tables.keys
            If Tables.Exists("meds_flags") = False Then
                Tables.Add "meds_flags", True
                Fields.Add "meds_flags.category", "Category"
                Fields.Add "meds_flags.flag_status", "Flag Status"
                Fields.Add "meds_flags.flag_value", "Flag Value"
            End If
            If strFlags <> "" Then
                Criteria.Add iLastCriteria, strFlags
            Else
                Criteria.Add iLastCriteria, " meds_flags.category is not null "
            End If
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = False Then
              CriteriaDict.Add Check1(iLastCriteria).Caption, strColumn & " Flag Category/Status/Value = " & FlagCategory.Text & "/" & FlagStatus.Text & "/" & FlagValue.Text
            End If
        Else
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = True Then
                CriteriaDict.Remove Check1(iLastCriteria).Caption
            End If
        End If
    Case 109
        If Check1(iLastCriteria).value = 1 Then
            If FlagCategory.Text <> "ANY" Then
                strFlags = " meds_flags.category = '" & FlagCategory.Text & "'"
            End If
            If FlagStatus.Text <> "ANY" Then
                strStatus = " meds_flags.flag_status = " & FlagStatus.ListIndex - 1
                If strFlags <> "" Then
                    strFlags = strFlags & " and "
                End If
                strFlags = strFlags & strStatus
            End If
            If FlagValue.Text <> "" Then
                strValue = " meds_flags.flag_value = '" & FlagValue.Text & "'"
                If strFlags <> "" Then
                    strFlags = strFlags & " and "
                End If
                strFlags = strFlags & strValue
            End If
            k = Tables.keys
            strTmp = "(Concat(To_Char(" & strObsTable & ".MEDS_JOB_NUMBER),LPAD(To_Char(" & strObsTable & ".meds_observation_number),6,'0'))) not in "
            strTmp = strTmp & "(select (Concat(To_Char(meds_flags.MEDS_JOB_NUMBER),LPAD(To_Char(meds_flags.meds_observation_number),6,'0'))) from meds_flags where "
            If strFlags <> "" Then
                strTmp = strTmp & strFlags
            Else
                strTmp = strTmp & " meds_flags.category is not null "
            End If
            strTmp = strTmp & ") "
            Criteria.Add iLastCriteria, strTmp
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = False Then
              CriteriaDict.Add Check1(iLastCriteria).Caption, strColumn & " Exclude Flag Category/Status/Value " & FlagCategory.Text & "/" & FlagStatus.Text & "/" & FlagValue.Text
            End If
        Else
            If CriteriaDict.Exists(Check1(iLastCriteria).Caption) = True Then
                CriteriaDict.Remove Check1(iLastCriteria).Caption
            End If
        End If
    End Select
    Call SetCriteriaList
End Sub

Private Sub SetParameterList()
    Dim k, i
    
    SelectedParameters.Clear
    k = Fields.Items
    For i = 0 To Fields.Count - 1
        If k(i) <> "" Then
            SelectedParameters.AddItem k(i)
        End If
    Next
End Sub

Private Sub SetCriteriaOptions()

    Dim OraDynaset As Object
    Dim SQLStatement As String
    Dim strUser As String
    Dim iCount As Integer
    Dim X As Integer

    
    strUser = UCase$(UID)
    For iCount = 0 To Check1.Count - 1
        Check1(iCount).Visible = False
    Next iCount
    
    SQLStatement = "select count(extraction_type) from extraction_option_lookup where extraction_type < 200 and data_type_index = " & DataTypeIndex & " and user_name = '" & strUser & "'"
    Debug.Print SQLStatement
    Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
    iCount = OraDynaset("count(extraction_type)")
    OraDynaset.Close
    SQLStatement = "select * from extraction_option_lookup where extraction_type < 200 and data_type_index = " & DataTypeIndex & " and user_name = '" & strUser & "'"
    Debug.Print SQLStatement
    Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
    For X = 0 To iCount - 1
        Check1(X).Visible = True
        Check1(X).Caption = OraDynaset("caption")
        OraDynaset.MoveNext
    Next X
    OraDynaset.Close
    DataEntry(0).Visible = False
    DataEntry(1).Visible = False
    DataEntry(2).Visible = False

End Sub

Function GetColumn(TableName As String, FieldName As String) As String
    Dim strSQL As String
    Dim Dyn As Object
    
    strSQL = "select column_name from field_lookup where column_name is not null and table_name = '" & TableName & "' and field_name = '" & FieldName & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        GetColumn = Dyn("column_name")
    Else
        GetColumn = TableName & "." & FieldName
    End If
End Function

Function GetColumnField(TableName As String, FieldName As String) As String
    Dim strSQL As String
    Dim Dyn As Object
    
    strSQL = "select column_name from field_lookup where column_name is not null and table_name = '" & TableName & "' and field_name = '" & FieldName & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        GetColumnField = Dyn("column_name")
    Else
        GetColumnField = FieldName
    End If
End Function

Public Function IsStringType(FieldType As String) As Boolean
    If FieldType = "1" Or FieldType = "13" Or FieldType = "16" Or FieldType = "17" Or FieldType = "18" Or FieldType = "23" Or FieldType = "31" Then
        IsStringType = True
    Else
        IsStringType = False
    End If
End Function

' when passed a field name in the form TABLE_NAME.COLUMN_NAME
' will return TABLE_NAME_COLUMN_NAME
Public Function GetFieldNameNoDot(Field As String)
    If InStr(1, Field, ".") <> 0 Then
        Dim noDot As String
        
        noDot = Replace(Field, ".", "_", 1, 1)
        
        GetFieldNameNoDot = noDot

    Else
        GetFieldNameNoDot = Field
    End If
End Function
Public Function GetFieldName(Field As String) As String
    If InStr(1, Field, ".") <> 0 Then
        GetFieldName = Right(Field, Len(Field) - InStr(1, Field, "."))
    Else
        GetFieldName = Field
    End If
End Function
Public Function GetTableName(Field As String) As String
    If InStr(1, Field, ".") <> 0 Then
        GetTableName = Mid(Field, 1, InStr(1, Field, ".") - 1)
    Else
        GetTableName = Field
    End If
End Function
Public Sub SetParameterLists()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    
    strUser = UCase$(UID)
    ComboCaptions.Clear
    UserDefined.Clear
    
    strSQL = "select distinct caption from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and user_name = '" & strUser & "' and extraction_type = 300"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        ComboCaptions.AddItem Dyn("caption")
        UserDefined.AddItem Dyn("caption")
        Dyn.MoveNext
    Wend
    Dyn.Close
    
End Sub

Public Sub ListParameters()

    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    Dim strTmp As String
    
    strUser = UCase$(UID)
    ParameterList.Clear
    SelectedParameters.Clear
    
    strSQL = "select field_name_one, field_name_two from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and user_name = '" & strUser & "' and extraction_type = 300 and caption = '" & ComboCaptions.Text & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        ParameterList.AddItem Dyn("field_name_one")
        SelectedParameters.AddItem Dyn("field_name_two")
        strTmp = GetTableFromName(Dyn("field_name_two")) & "." & GetFieldFromName(Dyn("field_name_two"))
        If Fields.Exists(strTmp) = False Then
            Fields.Add strTmp, Dyn("field_name_two")
        End If
        If Tables.Exists(GetTableFromName(Dyn("field_name_two"))) = False Then
            Tables.Add GetTableFromName(Dyn("field_name_two")), True
        End If
        
        Dyn.MoveNext
    Wend

End Sub
Private Sub UserDefined_Click()
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    Dim strTmp As String
    
    
    strUser = UCase$(UID)
    SelectedParameters.Clear
    strSQL = "select field_name_two from extraction_option_lookup where data_type_index = " & DataTypeIndex & " and user_name = '" & strUser & "' and extraction_type = 300 and caption = '" & UserDefined.Text & "'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        SelectedParameters.AddItem Dyn("field_name_two")
        strTmp = GetTableFromName(Dyn("field_name_two")) & "." & GetFieldFromName(Dyn("field_name_two"))
        If Fields.Exists(strTmp) = False Then
            Fields.Add strTmp, Dyn("field_name_two")
        End If
        If Tables.Exists(GetTableFromName(Dyn("field_name_two"))) = False Then
            Tables.Add GetTableFromName(Dyn("field_name_two")), True
        End If
        Dyn.MoveNext
    Wend
End Sub

Private Sub SetCriteriaList()
    Dim i As Integer
    Dim k
    Dim SpatialQuery As String
    
    If FixExtents.value = 1 Then
        m_fSouth = Main.Map1.Bounds.Ymin
        m_fNorth = Main.Map1.Bounds.Ymax
        m_fWest = Main.Map1.Bounds.Xmin
        m_fEast = Main.Map1.Bounds.Xmax
    End If
    
    If GenericIndex <> 8 Then
        If CriteriaDict.Exists("LAT") Then
            CriteriaDict.Remove ("LAT")
        End If
        If CriteriaDict.Exists("LON") Then
            CriteriaDict.Remove ("LON")
        End If
        CriteriaDict.Add "LAT", "Latitude between " & m_fSouth & " and " & m_fNorth
        CriteriaDict.Add "LON", "Longitude between " & m_fWest & " and " & m_fEast
    Else
        If CriteriaDict.Exists("SpatialMbrQuery") Then
            CriteriaDict.Remove ("SpatialMbrQuery")
        End If
        
        SpatialQuery = GetSpatialMbrQuery(m_fSouth, _
                                          m_fNorth, _
                                          m_fWest, _
                                          m_fEast)
        
        CriteriaDict.Add "SpatialMbrQuery", SpatialQuery
    End If
    
    k = CriteriaDict.Items
    CriteriaList.Clear
    
    For i = 0 To CriteriaDict.Count - 1
        CriteriaList.AddItem k(i)
    Next
End Sub

Public Function GetJobColumn(fFlag As Boolean) As String
Dim OraDynaset As Object
Dim strTmp As String
Dim SQLStatement As String

    If InStr(1, strObsTable, "REPRES_PROFILE") <> 0 Then
        GetJobColumn = "JOB_PROFILE_" & MonthCombo.Text
    Else
        If DataTypeIndex = 73 Then 'Repres species
            strTmp = MonthCombo.Text
            strTmp = UCase$(strTmp)
            GetJobColumn = "JOB_SPECIES_" & strTmp
        Else
            If fFlag = True Then
                SQLStatement = "select job_col from class_information where data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
            Else
                SQLStatement = "select job_col from class_information where data_type_index = " & DataTypeIndex
            End If
            Set OraDynaset = OraDatabase.CreateDynaset(SQLStatement, 0&)
            If DataTypeIndex <> 64 Then
                GetJobColumn = "JOB_" & OraDynaset("job_col")
            Else
                GetJobColumn = "DBDBV_DEPTH"
            End If
            OraDynaset.Close
        End If
    End If

End Function

Public Function GetFieldFromName(strColumn As String) As String
    Dim strSQL As String
    Dim Dyn As Object
    
    strSQL = "select field_name from field_lookup where column_name = '" & strColumn & "' and data_type_index = " & DataTypeIndex
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Dyn("field_name") <> "" Then
        GetFieldFromName = Dyn("field_name")
    Else
        ' look in standard lookups for a match
        strSQL = "select column_name from standard_lookup where description = '" & strColumn & "'"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        GetFieldFromName = Dyn("column_name")
    End If
End Function

Public Function GetTableFromName(strColumn As String) As String
    Dim strSQL As String
    Dim Dyn As Object
    
    strSQL = "select table_name from field_lookup where column_name = '" & strColumn & "' and data_type_index = " & DataTypeIndex
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    
    If Dyn("table_name") <> "" Then
        GetTableFromName = Dyn("table_name")
    Else
        ' look in standard lookups for a match
        strSQL = "select table_name from standard_lookup where description = '" & strColumn & "'"
        Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
        GetTableFromName = Dyn("table_name")
    End If
End Function

Private Sub PopulateDataTypeCombo()
    Dim strSQL As String
    Dim Dyn As Object
    Dim TableName As String
    
    TypeCombo.Clear
    
    TableName = "MASTER_GRID_" & left(GridType.Text, 1) & left(Resolution.Text, 1)
    strSQL = "select distinct datatype from " & TableName
    
    Screen.MousePointer = vbHourglass
    On Error GoTo PopDataTypeErrorHandler
    
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    While Not Dyn.EOF
        TypeCombo.AddItem Dyn("datatype")
        Dyn.MoveNext
    Wend
    Dyn.Close
    Screen.MousePointer = vbDefault
    Exit Sub

PopDataTypeErrorHandler:
    TypeCombo.AddItem "GENERIC"
    Screen.MousePointer = vbDefault

End Sub

Private Sub PopulateMonthCombo(Combo As ComboBox)

    Combo.Visible = False
    Combo.Clear
    
    Combo.AddItem ("JAN")
    Combo.AddItem ("FEB")
    Combo.AddItem ("MAR")
    Combo.AddItem ("APR")
    Combo.AddItem ("MAY")
    Combo.AddItem ("JUN")
    Combo.AddItem ("JUL")
    Combo.AddItem ("AUG")
    Combo.AddItem ("SEP")
    Combo.AddItem ("OCT")
    Combo.AddItem ("NOV")
    Combo.AddItem ("DEC")

    Combo.ListIndex = 0
    
End Sub

Private Function GetSpatialMbrQuery(S As Double, _
                                    N As Double, _
                                    W As Double, _
                                    E As Double) As String
    Dim SQLStr As String
    Dim Results As Object
    Dim Srid As Double
    Dim FieldName As String
    
    On Error GoTo GetSpatialMbrQuery_Error
    
    ' get the SRID for this table
    SQLStr = "Select u.SRID,f.field_name from USER_SDO_GEOM_METADATA u, " & _
             "field_lookup f where " & _
             "f.data_type_index = " & DataTypeIndex & " and (" & _
             "f.field_name = 'LOCATION' or " & _
             "f.field_name = 'GRID_INDEX' or " & _
             "f.field_name = 'ENVELOPE') and " & _
             " u.TABLE_NAME = f.table_name"
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Srid = -1
    FieldName = ""
    If Not Results.EOF Then
        Srid = Results("SRID")
        FieldName = Results("field_name")
    End If
    
    Results.Close

    GetSpatialMbrQuery = "SDO_ANYINTERACT(" & FieldName & "," & _
                                "SDO_GEOMETRY(" & _
                                "2003," & _
                                Srid & "," & _
                                "NULL," & _
                                "SDO_ELEM_INFO_ARRAY(1,1003,3)," & _
                                "SDO_ORDINATE_ARRAY(" & W & "," & S & "," & _
                                E & "," & N & "))" & _
                                ") = 'TRUE'"

    Exit Function
     
GetSpatialMbrQuery_Error:

    If err.Number <> 32755 Then
        MsgBox "Error while getting Spatial MBR Query :" & err.Number & " " & err.description
    End If
    
    GetSpatialMbrQuery = "1 = 1"

End Function

