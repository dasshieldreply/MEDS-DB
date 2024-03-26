VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "tabctl32.ocx"
Begin VB.Form DataEdit 
   Caption         =   "Data Edit"
   ClientHeight    =   10335
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13065
   LinkTopic       =   "Form1"
   ScaleHeight     =   10335
   ScaleWidth      =   13065
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame EditFrame 
      Caption         =   "Frame1"
      Height          =   10200
      Left            =   120
      TabIndex        =   525
      Top             =   120
      Width           =   12855
      Begin VB.CommandButton RemoveFromTrackButton 
         Caption         =   "Remove Observation from its Track"
         Height          =   375
         Left            =   7320
         TabIndex        =   21
         Top             =   9720
         Width           =   3015
      End
      Begin VB.CommandButton EditTrackButton 
         Caption         =   "Edit Selected Track"
         Height          =   375
         Left            =   2160
         TabIndex        =   19
         Top             =   9720
         Width           =   2055
      End
      Begin VB.TextBox EditJobNumber 
         Height          =   285
         Left            =   5040
         TabIndex        =   5
         Top             =   1080
         Width           =   975
      End
      Begin VB.TextBox EditMEICNumber 
         Height          =   285
         Left            =   240
         TabIndex        =   1
         Top             =   480
         Width           =   1095
      End
      Begin VB.ComboBox TrackNumbers 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         BeginProperty Font 
            Name            =   "Courier"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   3000
         Style           =   2  'Dropdown List
         TabIndex        =   18
         ToolTipText     =   "Select Active Track"
         Top             =   9270
         Width           =   6255
      End
      Begin VB.CommandButton AddToTrackButton 
         Caption         =   "Add Observation To Selected Track"
         Height          =   375
         Left            =   4320
         TabIndex        =   20
         Top             =   9720
         Width           =   2895
      End
      Begin VB.Frame LocationFrame 
         Caption         =   "Location"
         Height          =   1215
         Left            =   6360
         TabIndex        =   52
         Top             =   120
         Width           =   6375
         Begin VB.CommandButton LocationModeToggleButton 
            Caption         =   "MODE"
            Height          =   255
            Left            =   3480
            TabIndex        =   6
            ToolTipText     =   "Switch between Decimal angles and DMS"
            Top             =   600
            Width           =   735
         End
         Begin VB.ComboBox EditLatitudeHemi 
            Height          =   315
            Left            =   2760
            TabIndex        =   9
            Top             =   360
            Width           =   615
         End
         Begin VB.TextBox EditLatitudeMin 
            Height          =   285
            Left            =   1920
            TabIndex        =   8
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox EditLatitudeDeg 
            Height          =   285
            Left            =   1080
            TabIndex        =   7
            Top             =   360
            Width           =   735
         End
         Begin VB.TextBox EditLatitude 
            Height          =   285
            Left            =   5160
            TabIndex        =   13
            Top             =   360
            Width           =   1095
         End
         Begin VB.TextBox EditLongitude 
            Height          =   285
            Left            =   5160
            TabIndex        =   14
            Top             =   810
            Width           =   1095
         End
         Begin VB.ComboBox EditLongitudeHemi 
            Height          =   315
            Left            =   2760
            TabIndex        =   12
            Top             =   840
            Width           =   615
         End
         Begin VB.TextBox EditLongitudeMin 
            Height          =   285
            Left            =   1920
            TabIndex        =   11
            Top             =   840
            Width           =   735
         End
         Begin VB.TextBox EditLongitudeDeg 
            Height          =   285
            Left            =   1080
            TabIndex        =   10
            Top             =   840
            Width           =   735
         End
         Begin VB.Label DecimalLongitudeLabel 
            Caption         =   "Longitude"
            Height          =   255
            Left            =   4320
            TabIndex        =   61
            Top             =   840
            Width           =   735
         End
         Begin VB.Label DecimalLatitudeLabel 
            Caption         =   "Latitude"
            Height          =   255
            Left            =   4320
            TabIndex        =   60
            Top             =   360
            Width           =   735
         End
         Begin VB.Label DecimalLabel 
            Caption         =   "Decimal"
            Height          =   255
            Left            =   5160
            TabIndex        =   59
            Top             =   120
            Width           =   1095
         End
         Begin VB.Label HemiLabel 
            Caption         =   "Hemi"
            Height          =   255
            Left            =   2760
            TabIndex        =   58
            Top             =   120
            Width           =   615
         End
         Begin VB.Label MinutesLabel 
            Caption         =   "Minutes"
            Height          =   255
            Left            =   1920
            TabIndex        =   57
            Top             =   120
            Width           =   735
         End
         Begin VB.Label DegreesLabel 
            Caption         =   "Degrees"
            Height          =   255
            Left            =   1080
            TabIndex        =   55
            Top             =   120
            Width           =   735
         End
         Begin VB.Label DegreeLatitudeLabel 
            Caption         =   "Latitude"
            Height          =   255
            Left            =   120
            TabIndex        =   54
            Top             =   360
            Width           =   735
         End
         Begin VB.Label DegreeLongitudeLabel 
            Caption         =   "Longitude"
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   840
            Width           =   855
         End
      End
      Begin VB.Frame DateRecordedFrame 
         Caption         =   "Date Recorded"
         Height          =   735
         Left            =   2520
         TabIndex        =   51
         Top             =   120
         Width           =   3735
         Begin VB.CheckBox TimeDeleteCheck 
            Height          =   375
            Left            =   3360
            TabIndex        =   531
            Top             =   240
            Width           =   220
         End
         Begin VB.CheckBox DateDeleteCheck 
            Height          =   375
            Left            =   3360
            TabIndex        =   530
            Top             =   240
            Width           =   220
         End
         Begin MSComCtl2.DTPicker EditTimeRecorded 
            Height          =   375
            Left            =   1920
            TabIndex        =   4
            Top             =   240
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   127139842
            CurrentDate     =   38513
         End
         Begin MSComCtl2.DTPicker EditDateRecorded 
            Height          =   375
            Left            =   120
            TabIndex        =   3
            Top             =   240
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   127139841
            CurrentDate     =   38513
         End
      End
      Begin VB.TextBox EditObsNumber 
         Height          =   285
         Left            =   1440
         TabIndex        =   2
         Top             =   480
         Width           =   975
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit - aborting changes"
         Height          =   375
         Left            =   10680
         TabIndex        =   23
         Top             =   9240
         Width           =   1935
      End
      Begin VB.CommandButton SaveButton 
         Caption         =   "Save Changes"
         Height          =   375
         Left            =   120
         TabIndex        =   22
         Top             =   9240
         Width           =   2055
      End
      Begin TabDlg.SSTab EditTabs 
         Height          =   7455
         Left            =   120
         TabIndex        =   15
         Top             =   1560
         Width           =   12615
         _ExtentX        =   22251
         _ExtentY        =   13150
         _Version        =   393216
         Style           =   1
         Tabs            =   11
         Tab             =   1
         TabsPerRow      =   20
         TabHeight       =   520
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "DataEdit.frx":0000
         Tab(0).ControlEnabled=   0   'False
         Tab(0).Control(0)=   "DeleteCheck(13)"
         Tab(0).Control(1)=   "DeleteCheck(12)"
         Tab(0).Control(2)=   "DeleteCheck(11)"
         Tab(0).Control(3)=   "DeleteCheck(10)"
         Tab(0).Control(4)=   "DeleteCheck(9)"
         Tab(0).Control(5)=   "DeleteCheck(8)"
         Tab(0).Control(6)=   "DeleteCheck(7)"
         Tab(0).Control(7)=   "DeleteCheck(6)"
         Tab(0).Control(8)=   "DeleteCheck(5)"
         Tab(0).Control(9)=   "DeleteCheck(4)"
         Tab(0).Control(10)=   "DeleteCheck(3)"
         Tab(0).Control(11)=   "DeleteCheck(2)"
         Tab(0).Control(12)=   "DeleteCheck(1)"
         Tab(0).Control(13)=   "DeleteCheck(0)"
         Tab(0).Control(14)=   "NextTab(0)"
         Tab(0).Control(15)=   "ColumnValue(13)"
         Tab(0).Control(16)=   "PrevTab(0)"
         Tab(0).Control(17)=   "ColumnValue(0)"
         Tab(0).Control(18)=   "ColumnValue(1)"
         Tab(0).Control(19)=   "ColumnValue(2)"
         Tab(0).Control(20)=   "ColumnValue(3)"
         Tab(0).Control(21)=   "ColumnValue(4)"
         Tab(0).Control(22)=   "ColumnValue(5)"
         Tab(0).Control(23)=   "ColumnValue(6)"
         Tab(0).Control(24)=   "ColumnValue(7)"
         Tab(0).Control(25)=   "ColumnValue(8)"
         Tab(0).Control(26)=   "ColumnValue(9)"
         Tab(0).Control(27)=   "ColumnValue(10)"
         Tab(0).Control(28)=   "ColumnValue(11)"
         Tab(0).Control(29)=   "ColumnValue(12)"
         Tab(0).Control(30)=   "TabDeleteLab(0)"
         Tab(0).Control(31)=   "ColumnName(1)"
         Tab(0).Control(32)=   "ColumnName(2)"
         Tab(0).Control(33)=   "ColumnName(3)"
         Tab(0).Control(34)=   "ColumnName(4)"
         Tab(0).Control(35)=   "ColumnName(5)"
         Tab(0).Control(36)=   "ColumnName(6)"
         Tab(0).Control(37)=   "ColumnName(7)"
         Tab(0).Control(38)=   "ColumnName(8)"
         Tab(0).Control(39)=   "ColumnName(9)"
         Tab(0).Control(40)=   "ColumnName(10)"
         Tab(0).Control(41)=   "ColumnName(11)"
         Tab(0).Control(42)=   "ColumnName(0)"
         Tab(0).Control(43)=   "ColumnName(12)"
         Tab(0).Control(44)=   "ColumnName(13)"
         Tab(0).ControlCount=   45
         TabCaption(1)   =   "Tab 1"
         TabPicture(1)   =   "DataEdit.frx":001C
         Tab(1).ControlEnabled=   -1  'True
         Tab(1).Control(0)=   "ColumnName(14)"
         Tab(1).Control(0).Enabled=   0   'False
         Tab(1).Control(1)=   "ColumnName(15)"
         Tab(1).Control(1).Enabled=   0   'False
         Tab(1).Control(2)=   "ColumnName(16)"
         Tab(1).Control(2).Enabled=   0   'False
         Tab(1).Control(3)=   "ColumnName(17)"
         Tab(1).Control(3).Enabled=   0   'False
         Tab(1).Control(4)=   "ColumnName(18)"
         Tab(1).Control(4).Enabled=   0   'False
         Tab(1).Control(5)=   "ColumnName(19)"
         Tab(1).Control(5).Enabled=   0   'False
         Tab(1).Control(6)=   "ColumnName(20)"
         Tab(1).Control(6).Enabled=   0   'False
         Tab(1).Control(7)=   "ColumnName(21)"
         Tab(1).Control(7).Enabled=   0   'False
         Tab(1).Control(8)=   "ColumnName(22)"
         Tab(1).Control(8).Enabled=   0   'False
         Tab(1).Control(9)=   "ColumnName(23)"
         Tab(1).Control(9).Enabled=   0   'False
         Tab(1).Control(10)=   "ColumnName(24)"
         Tab(1).Control(10).Enabled=   0   'False
         Tab(1).Control(11)=   "ColumnName(25)"
         Tab(1).Control(11).Enabled=   0   'False
         Tab(1).Control(12)=   "ColumnName(26)"
         Tab(1).Control(12).Enabled=   0   'False
         Tab(1).Control(13)=   "ColumnName(27)"
         Tab(1).Control(13).Enabled=   0   'False
         Tab(1).Control(14)=   "TabDeleteLab(1)"
         Tab(1).Control(14).Enabled=   0   'False
         Tab(1).Control(15)=   "ColumnValue(14)"
         Tab(1).Control(15).Enabled=   0   'False
         Tab(1).Control(16)=   "ColumnValue(15)"
         Tab(1).Control(16).Enabled=   0   'False
         Tab(1).Control(17)=   "ColumnValue(16)"
         Tab(1).Control(17).Enabled=   0   'False
         Tab(1).Control(18)=   "ColumnValue(17)"
         Tab(1).Control(18).Enabled=   0   'False
         Tab(1).Control(19)=   "ColumnValue(18)"
         Tab(1).Control(19).Enabled=   0   'False
         Tab(1).Control(20)=   "ColumnValue(19)"
         Tab(1).Control(20).Enabled=   0   'False
         Tab(1).Control(21)=   "ColumnValue(20)"
         Tab(1).Control(21).Enabled=   0   'False
         Tab(1).Control(22)=   "ColumnValue(21)"
         Tab(1).Control(22).Enabled=   0   'False
         Tab(1).Control(23)=   "ColumnValue(22)"
         Tab(1).Control(23).Enabled=   0   'False
         Tab(1).Control(24)=   "ColumnValue(23)"
         Tab(1).Control(24).Enabled=   0   'False
         Tab(1).Control(25)=   "ColumnValue(24)"
         Tab(1).Control(25).Enabled=   0   'False
         Tab(1).Control(26)=   "ColumnValue(25)"
         Tab(1).Control(26).Enabled=   0   'False
         Tab(1).Control(27)=   "ColumnValue(26)"
         Tab(1).Control(27).Enabled=   0   'False
         Tab(1).Control(28)=   "ColumnValue(27)"
         Tab(1).Control(28).Enabled=   0   'False
         Tab(1).Control(29)=   "PrevTab(1)"
         Tab(1).Control(29).Enabled=   0   'False
         Tab(1).Control(30)=   "NextTab(1)"
         Tab(1).Control(30).Enabled=   0   'False
         Tab(1).Control(31)=   "DeleteCheck(14)"
         Tab(1).Control(31).Enabled=   0   'False
         Tab(1).Control(32)=   "DeleteCheck(15)"
         Tab(1).Control(32).Enabled=   0   'False
         Tab(1).Control(33)=   "DeleteCheck(16)"
         Tab(1).Control(33).Enabled=   0   'False
         Tab(1).Control(34)=   "DeleteCheck(17)"
         Tab(1).Control(34).Enabled=   0   'False
         Tab(1).Control(35)=   "DeleteCheck(18)"
         Tab(1).Control(35).Enabled=   0   'False
         Tab(1).Control(36)=   "DeleteCheck(19)"
         Tab(1).Control(36).Enabled=   0   'False
         Tab(1).Control(37)=   "DeleteCheck(20)"
         Tab(1).Control(37).Enabled=   0   'False
         Tab(1).Control(38)=   "DeleteCheck(21)"
         Tab(1).Control(38).Enabled=   0   'False
         Tab(1).Control(39)=   "DeleteCheck(22)"
         Tab(1).Control(39).Enabled=   0   'False
         Tab(1).Control(40)=   "DeleteCheck(23)"
         Tab(1).Control(40).Enabled=   0   'False
         Tab(1).Control(41)=   "DeleteCheck(24)"
         Tab(1).Control(41).Enabled=   0   'False
         Tab(1).Control(42)=   "DeleteCheck(25)"
         Tab(1).Control(42).Enabled=   0   'False
         Tab(1).Control(43)=   "DeleteCheck(26)"
         Tab(1).Control(43).Enabled=   0   'False
         Tab(1).Control(44)=   "DeleteCheck(27)"
         Tab(1).Control(44).Enabled=   0   'False
         Tab(1).ControlCount=   45
         TabCaption(2)   =   "Tab 2"
         TabPicture(2)   =   "DataEdit.frx":0038
         Tab(2).ControlEnabled=   0   'False
         Tab(2).Control(0)=   "ColumnValue(28)"
         Tab(2).Control(1)=   "ColumnValue(29)"
         Tab(2).Control(2)=   "ColumnValue(30)"
         Tab(2).Control(3)=   "ColumnValue(32)"
         Tab(2).Control(4)=   "ColumnValue(33)"
         Tab(2).Control(5)=   "ColumnValue(34)"
         Tab(2).Control(6)=   "ColumnValue(35)"
         Tab(2).Control(7)=   "ColumnValue(36)"
         Tab(2).Control(8)=   "ColumnValue(37)"
         Tab(2).Control(9)=   "ColumnValue(38)"
         Tab(2).Control(10)=   "ColumnValue(39)"
         Tab(2).Control(11)=   "ColumnValue(40)"
         Tab(2).Control(12)=   "ColumnValue(41)"
         Tab(2).Control(13)=   "DeleteCheck(28)"
         Tab(2).Control(14)=   "DeleteCheck(29)"
         Tab(2).Control(15)=   "DeleteCheck(30)"
         Tab(2).Control(16)=   "DeleteCheck(31)"
         Tab(2).Control(17)=   "DeleteCheck(32)"
         Tab(2).Control(18)=   "DeleteCheck(33)"
         Tab(2).Control(19)=   "DeleteCheck(34)"
         Tab(2).Control(20)=   "DeleteCheck(35)"
         Tab(2).Control(21)=   "DeleteCheck(36)"
         Tab(2).Control(22)=   "DeleteCheck(37)"
         Tab(2).Control(23)=   "DeleteCheck(38)"
         Tab(2).Control(24)=   "DeleteCheck(39)"
         Tab(2).Control(25)=   "DeleteCheck(40)"
         Tab(2).Control(26)=   "DeleteCheck(41)"
         Tab(2).Control(27)=   "NextTab(2)"
         Tab(2).Control(28)=   "PrevTab(2)"
         Tab(2).Control(29)=   "ColumnValue(31)"
         Tab(2).Control(30)=   "TabDeleteLab(2)"
         Tab(2).Control(31)=   "ColumnName(28)"
         Tab(2).Control(32)=   "ColumnName(29)"
         Tab(2).Control(33)=   "ColumnName(30)"
         Tab(2).Control(34)=   "ColumnName(31)"
         Tab(2).Control(35)=   "ColumnName(32)"
         Tab(2).Control(36)=   "ColumnName(33)"
         Tab(2).Control(37)=   "ColumnName(34)"
         Tab(2).Control(38)=   "ColumnName(35)"
         Tab(2).Control(39)=   "ColumnName(36)"
         Tab(2).Control(40)=   "ColumnName(37)"
         Tab(2).Control(41)=   "ColumnName(38)"
         Tab(2).Control(42)=   "ColumnName(39)"
         Tab(2).Control(43)=   "ColumnName(40)"
         Tab(2).Control(44)=   "ColumnName(41)"
         Tab(2).ControlCount=   45
         TabCaption(3)   =   "Tab 3"
         TabPicture(3)   =   "DataEdit.frx":0054
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "DeleteCheck(55)"
         Tab(3).Control(1)=   "DeleteCheck(54)"
         Tab(3).Control(2)=   "DeleteCheck(53)"
         Tab(3).Control(3)=   "DeleteCheck(52)"
         Tab(3).Control(4)=   "DeleteCheck(51)"
         Tab(3).Control(5)=   "DeleteCheck(50)"
         Tab(3).Control(6)=   "DeleteCheck(49)"
         Tab(3).Control(7)=   "DeleteCheck(48)"
         Tab(3).Control(8)=   "DeleteCheck(47)"
         Tab(3).Control(9)=   "DeleteCheck(46)"
         Tab(3).Control(10)=   "DeleteCheck(45)"
         Tab(3).Control(11)=   "DeleteCheck(44)"
         Tab(3).Control(12)=   "DeleteCheck(43)"
         Tab(3).Control(13)=   "DeleteCheck(42)"
         Tab(3).Control(14)=   "NextTab(3)"
         Tab(3).Control(15)=   "PrevTab(3)"
         Tab(3).Control(16)=   "ColumnValue(55)"
         Tab(3).Control(17)=   "ColumnValue(54)"
         Tab(3).Control(18)=   "ColumnValue(53)"
         Tab(3).Control(19)=   "ColumnValue(52)"
         Tab(3).Control(20)=   "ColumnValue(51)"
         Tab(3).Control(21)=   "ColumnValue(50)"
         Tab(3).Control(22)=   "ColumnValue(49)"
         Tab(3).Control(23)=   "ColumnValue(48)"
         Tab(3).Control(24)=   "ColumnValue(47)"
         Tab(3).Control(25)=   "ColumnValue(46)"
         Tab(3).Control(26)=   "ColumnValue(45)"
         Tab(3).Control(27)=   "ColumnValue(44)"
         Tab(3).Control(28)=   "ColumnValue(43)"
         Tab(3).Control(29)=   "ColumnValue(42)"
         Tab(3).Control(30)=   "TabDeleteLab(3)"
         Tab(3).Control(31)=   "ColumnName(55)"
         Tab(3).Control(32)=   "ColumnName(54)"
         Tab(3).Control(33)=   "ColumnName(53)"
         Tab(3).Control(34)=   "ColumnName(52)"
         Tab(3).Control(35)=   "ColumnName(51)"
         Tab(3).Control(36)=   "ColumnName(50)"
         Tab(3).Control(37)=   "ColumnName(49)"
         Tab(3).Control(38)=   "ColumnName(48)"
         Tab(3).Control(39)=   "ColumnName(47)"
         Tab(3).Control(40)=   "ColumnName(46)"
         Tab(3).Control(41)=   "ColumnName(45)"
         Tab(3).Control(42)=   "ColumnName(44)"
         Tab(3).Control(43)=   "ColumnName(43)"
         Tab(3).Control(44)=   "ColumnName(42)"
         Tab(3).ControlCount=   45
         TabCaption(4)   =   "Tab 4"
         TabPicture(4)   =   "DataEdit.frx":0070
         Tab(4).ControlEnabled=   0   'False
         Tab(4).Control(0)=   "DeleteCheck(69)"
         Tab(4).Control(1)=   "DeleteCheck(68)"
         Tab(4).Control(2)=   "DeleteCheck(67)"
         Tab(4).Control(3)=   "DeleteCheck(66)"
         Tab(4).Control(4)=   "DeleteCheck(65)"
         Tab(4).Control(5)=   "DeleteCheck(64)"
         Tab(4).Control(6)=   "DeleteCheck(63)"
         Tab(4).Control(7)=   "DeleteCheck(62)"
         Tab(4).Control(8)=   "DeleteCheck(61)"
         Tab(4).Control(9)=   "DeleteCheck(60)"
         Tab(4).Control(10)=   "DeleteCheck(59)"
         Tab(4).Control(11)=   "DeleteCheck(58)"
         Tab(4).Control(12)=   "DeleteCheck(57)"
         Tab(4).Control(13)=   "DeleteCheck(56)"
         Tab(4).Control(14)=   "NextTab(4)"
         Tab(4).Control(15)=   "PrevTab(4)"
         Tab(4).Control(16)=   "ColumnValue(69)"
         Tab(4).Control(17)=   "ColumnValue(68)"
         Tab(4).Control(18)=   "ColumnValue(67)"
         Tab(4).Control(19)=   "ColumnValue(66)"
         Tab(4).Control(20)=   "ColumnValue(65)"
         Tab(4).Control(21)=   "ColumnValue(64)"
         Tab(4).Control(22)=   "ColumnValue(63)"
         Tab(4).Control(23)=   "ColumnValue(62)"
         Tab(4).Control(24)=   "ColumnValue(61)"
         Tab(4).Control(25)=   "ColumnValue(60)"
         Tab(4).Control(26)=   "ColumnValue(59)"
         Tab(4).Control(27)=   "ColumnValue(58)"
         Tab(4).Control(28)=   "ColumnValue(57)"
         Tab(4).Control(29)=   "ColumnValue(56)"
         Tab(4).Control(30)=   "TabDeleteLab(4)"
         Tab(4).Control(31)=   "ColumnName(69)"
         Tab(4).Control(32)=   "ColumnName(68)"
         Tab(4).Control(33)=   "ColumnName(67)"
         Tab(4).Control(34)=   "ColumnName(66)"
         Tab(4).Control(35)=   "ColumnName(65)"
         Tab(4).Control(36)=   "ColumnName(64)"
         Tab(4).Control(37)=   "ColumnName(63)"
         Tab(4).Control(38)=   "ColumnName(62)"
         Tab(4).Control(39)=   "ColumnName(61)"
         Tab(4).Control(40)=   "ColumnName(60)"
         Tab(4).Control(41)=   "ColumnName(59)"
         Tab(4).Control(42)=   "ColumnName(58)"
         Tab(4).Control(43)=   "ColumnName(57)"
         Tab(4).Control(44)=   "ColumnName(56)"
         Tab(4).ControlCount=   45
         TabCaption(5)   =   "Tab 5"
         TabPicture(5)   =   "DataEdit.frx":008C
         Tab(5).ControlEnabled=   0   'False
         Tab(5).Control(0)=   "DeleteCheck(83)"
         Tab(5).Control(1)=   "DeleteCheck(82)"
         Tab(5).Control(2)=   "DeleteCheck(81)"
         Tab(5).Control(3)=   "DeleteCheck(80)"
         Tab(5).Control(4)=   "DeleteCheck(79)"
         Tab(5).Control(5)=   "DeleteCheck(78)"
         Tab(5).Control(6)=   "DeleteCheck(77)"
         Tab(5).Control(7)=   "DeleteCheck(76)"
         Tab(5).Control(8)=   "DeleteCheck(75)"
         Tab(5).Control(9)=   "DeleteCheck(74)"
         Tab(5).Control(10)=   "DeleteCheck(73)"
         Tab(5).Control(11)=   "DeleteCheck(72)"
         Tab(5).Control(12)=   "DeleteCheck(71)"
         Tab(5).Control(13)=   "DeleteCheck(70)"
         Tab(5).Control(14)=   "NextTab(5)"
         Tab(5).Control(15)=   "PrevTab(5)"
         Tab(5).Control(16)=   "ColumnValue(83)"
         Tab(5).Control(17)=   "ColumnValue(82)"
         Tab(5).Control(18)=   "ColumnValue(81)"
         Tab(5).Control(19)=   "ColumnValue(80)"
         Tab(5).Control(20)=   "ColumnValue(79)"
         Tab(5).Control(21)=   "ColumnValue(78)"
         Tab(5).Control(22)=   "ColumnValue(77)"
         Tab(5).Control(23)=   "ColumnValue(76)"
         Tab(5).Control(24)=   "ColumnValue(75)"
         Tab(5).Control(25)=   "ColumnValue(74)"
         Tab(5).Control(26)=   "ColumnValue(73)"
         Tab(5).Control(27)=   "ColumnValue(72)"
         Tab(5).Control(28)=   "ColumnValue(71)"
         Tab(5).Control(29)=   "ColumnValue(70)"
         Tab(5).Control(30)=   "TabDeleteLab(5)"
         Tab(5).Control(31)=   "ColumnName(83)"
         Tab(5).Control(32)=   "ColumnName(82)"
         Tab(5).Control(33)=   "ColumnName(81)"
         Tab(5).Control(34)=   "ColumnName(80)"
         Tab(5).Control(35)=   "ColumnName(79)"
         Tab(5).Control(36)=   "ColumnName(78)"
         Tab(5).Control(37)=   "ColumnName(77)"
         Tab(5).Control(38)=   "ColumnName(76)"
         Tab(5).Control(39)=   "ColumnName(75)"
         Tab(5).Control(40)=   "ColumnName(74)"
         Tab(5).Control(41)=   "ColumnName(73)"
         Tab(5).Control(42)=   "ColumnName(72)"
         Tab(5).Control(43)=   "ColumnName(71)"
         Tab(5).Control(44)=   "ColumnName(70)"
         Tab(5).ControlCount=   45
         TabCaption(6)   =   "Tab 6"
         TabPicture(6)   =   "DataEdit.frx":00A8
         Tab(6).ControlEnabled=   0   'False
         Tab(6).Control(0)=   "DeleteCheck(97)"
         Tab(6).Control(1)=   "DeleteCheck(96)"
         Tab(6).Control(2)=   "DeleteCheck(95)"
         Tab(6).Control(3)=   "DeleteCheck(94)"
         Tab(6).Control(4)=   "DeleteCheck(93)"
         Tab(6).Control(5)=   "DeleteCheck(92)"
         Tab(6).Control(6)=   "DeleteCheck(91)"
         Tab(6).Control(7)=   "DeleteCheck(90)"
         Tab(6).Control(8)=   "DeleteCheck(89)"
         Tab(6).Control(9)=   "DeleteCheck(88)"
         Tab(6).Control(10)=   "DeleteCheck(87)"
         Tab(6).Control(11)=   "DeleteCheck(86)"
         Tab(6).Control(12)=   "DeleteCheck(85)"
         Tab(6).Control(13)=   "DeleteCheck(84)"
         Tab(6).Control(14)=   "NextTab(6)"
         Tab(6).Control(15)=   "PrevTab(6)"
         Tab(6).Control(16)=   "ColumnValue(97)"
         Tab(6).Control(17)=   "ColumnValue(96)"
         Tab(6).Control(18)=   "ColumnValue(95)"
         Tab(6).Control(19)=   "ColumnValue(94)"
         Tab(6).Control(20)=   "ColumnValue(93)"
         Tab(6).Control(21)=   "ColumnValue(92)"
         Tab(6).Control(22)=   "ColumnValue(91)"
         Tab(6).Control(23)=   "ColumnValue(90)"
         Tab(6).Control(24)=   "ColumnValue(89)"
         Tab(6).Control(25)=   "ColumnValue(88)"
         Tab(6).Control(26)=   "ColumnValue(87)"
         Tab(6).Control(27)=   "ColumnValue(86)"
         Tab(6).Control(28)=   "ColumnValue(85)"
         Tab(6).Control(29)=   "ColumnValue(84)"
         Tab(6).Control(30)=   "TabDeleteLab(6)"
         Tab(6).Control(31)=   "ColumnName(97)"
         Tab(6).Control(32)=   "ColumnName(96)"
         Tab(6).Control(33)=   "ColumnName(95)"
         Tab(6).Control(34)=   "ColumnName(94)"
         Tab(6).Control(35)=   "ColumnName(93)"
         Tab(6).Control(36)=   "ColumnName(92)"
         Tab(6).Control(37)=   "ColumnName(91)"
         Tab(6).Control(38)=   "ColumnName(90)"
         Tab(6).Control(39)=   "ColumnName(89)"
         Tab(6).Control(40)=   "ColumnName(88)"
         Tab(6).Control(41)=   "ColumnName(87)"
         Tab(6).Control(42)=   "ColumnName(86)"
         Tab(6).Control(43)=   "ColumnName(85)"
         Tab(6).Control(44)=   "ColumnName(84)"
         Tab(6).ControlCount=   45
         TabCaption(7)   =   "Tab 7"
         TabPicture(7)   =   "DataEdit.frx":00C4
         Tab(7).ControlEnabled=   0   'False
         Tab(7).Control(0)=   "ColumnValue(98)"
         Tab(7).Control(1)=   "DeleteCheck(98)"
         Tab(7).Control(2)=   "DeleteCheck(111)"
         Tab(7).Control(3)=   "DeleteCheck(110)"
         Tab(7).Control(4)=   "DeleteCheck(109)"
         Tab(7).Control(5)=   "DeleteCheck(108)"
         Tab(7).Control(6)=   "DeleteCheck(107)"
         Tab(7).Control(7)=   "DeleteCheck(106)"
         Tab(7).Control(8)=   "DeleteCheck(105)"
         Tab(7).Control(9)=   "DeleteCheck(104)"
         Tab(7).Control(10)=   "DeleteCheck(103)"
         Tab(7).Control(11)=   "DeleteCheck(102)"
         Tab(7).Control(12)=   "DeleteCheck(101)"
         Tab(7).Control(13)=   "DeleteCheck(100)"
         Tab(7).Control(14)=   "DeleteCheck(99)"
         Tab(7).Control(15)=   "NextTab(7)"
         Tab(7).Control(16)=   "PrevTab(7)"
         Tab(7).Control(17)=   "ColumnValue(111)"
         Tab(7).Control(18)=   "ColumnValue(110)"
         Tab(7).Control(19)=   "ColumnValue(109)"
         Tab(7).Control(20)=   "ColumnValue(108)"
         Tab(7).Control(21)=   "ColumnValue(107)"
         Tab(7).Control(22)=   "ColumnValue(106)"
         Tab(7).Control(23)=   "ColumnValue(105)"
         Tab(7).Control(24)=   "ColumnValue(104)"
         Tab(7).Control(25)=   "ColumnValue(103)"
         Tab(7).Control(26)=   "ColumnValue(102)"
         Tab(7).Control(27)=   "ColumnValue(101)"
         Tab(7).Control(28)=   "ColumnValue(100)"
         Tab(7).Control(29)=   "ColumnValue(99)"
         Tab(7).Control(30)=   "TabDeleteLab(7)"
         Tab(7).Control(31)=   "ColumnName(111)"
         Tab(7).Control(32)=   "ColumnName(110)"
         Tab(7).Control(33)=   "ColumnName(109)"
         Tab(7).Control(34)=   "ColumnName(108)"
         Tab(7).Control(35)=   "ColumnName(107)"
         Tab(7).Control(36)=   "ColumnName(106)"
         Tab(7).Control(37)=   "ColumnName(105)"
         Tab(7).Control(38)=   "ColumnName(104)"
         Tab(7).Control(39)=   "ColumnName(103)"
         Tab(7).Control(40)=   "ColumnName(102)"
         Tab(7).Control(41)=   "ColumnName(101)"
         Tab(7).Control(42)=   "ColumnName(100)"
         Tab(7).Control(43)=   "ColumnName(99)"
         Tab(7).Control(44)=   "ColumnName(98)"
         Tab(7).ControlCount=   45
         TabCaption(8)   =   "Tab 8"
         TabPicture(8)   =   "DataEdit.frx":00E0
         Tab(8).ControlEnabled=   0   'False
         Tab(8).Control(0)=   "DeleteCheck(125)"
         Tab(8).Control(1)=   "DeleteCheck(124)"
         Tab(8).Control(2)=   "DeleteCheck(123)"
         Tab(8).Control(3)=   "DeleteCheck(122)"
         Tab(8).Control(4)=   "DeleteCheck(121)"
         Tab(8).Control(5)=   "DeleteCheck(120)"
         Tab(8).Control(6)=   "DeleteCheck(119)"
         Tab(8).Control(7)=   "DeleteCheck(118)"
         Tab(8).Control(8)=   "DeleteCheck(117)"
         Tab(8).Control(9)=   "DeleteCheck(116)"
         Tab(8).Control(10)=   "DeleteCheck(115)"
         Tab(8).Control(11)=   "DeleteCheck(114)"
         Tab(8).Control(12)=   "DeleteCheck(113)"
         Tab(8).Control(13)=   "DeleteCheck(112)"
         Tab(8).Control(14)=   "NextTab(8)"
         Tab(8).Control(15)=   "PrevTab(8)"
         Tab(8).Control(16)=   "ColumnValue(125)"
         Tab(8).Control(17)=   "ColumnValue(124)"
         Tab(8).Control(18)=   "ColumnValue(123)"
         Tab(8).Control(19)=   "ColumnValue(122)"
         Tab(8).Control(20)=   "ColumnValue(121)"
         Tab(8).Control(21)=   "ColumnValue(120)"
         Tab(8).Control(22)=   "ColumnValue(119)"
         Tab(8).Control(23)=   "ColumnValue(118)"
         Tab(8).Control(24)=   "ColumnValue(117)"
         Tab(8).Control(25)=   "ColumnValue(116)"
         Tab(8).Control(26)=   "ColumnValue(115)"
         Tab(8).Control(27)=   "ColumnValue(114)"
         Tab(8).Control(28)=   "ColumnValue(113)"
         Tab(8).Control(29)=   "ColumnValue(112)"
         Tab(8).Control(30)=   "TabDeleteLab(8)"
         Tab(8).Control(31)=   "ColumnName(125)"
         Tab(8).Control(32)=   "ColumnName(124)"
         Tab(8).Control(33)=   "ColumnName(123)"
         Tab(8).Control(34)=   "ColumnName(122)"
         Tab(8).Control(35)=   "ColumnName(121)"
         Tab(8).Control(36)=   "ColumnName(120)"
         Tab(8).Control(37)=   "ColumnName(119)"
         Tab(8).Control(38)=   "ColumnName(118)"
         Tab(8).Control(39)=   "ColumnName(117)"
         Tab(8).Control(40)=   "ColumnName(116)"
         Tab(8).Control(41)=   "ColumnName(115)"
         Tab(8).Control(42)=   "ColumnName(114)"
         Tab(8).Control(43)=   "ColumnName(113)"
         Tab(8).Control(44)=   "ColumnName(112)"
         Tab(8).ControlCount=   45
         TabCaption(9)   =   "Tab 9"
         TabPicture(9)   =   "DataEdit.frx":00FC
         Tab(9).ControlEnabled=   0   'False
         Tab(9).Control(0)=   "DeleteCheck(139)"
         Tab(9).Control(1)=   "DeleteCheck(138)"
         Tab(9).Control(2)=   "DeleteCheck(137)"
         Tab(9).Control(3)=   "DeleteCheck(136)"
         Tab(9).Control(4)=   "DeleteCheck(135)"
         Tab(9).Control(5)=   "DeleteCheck(134)"
         Tab(9).Control(6)=   "DeleteCheck(133)"
         Tab(9).Control(7)=   "DeleteCheck(132)"
         Tab(9).Control(8)=   "DeleteCheck(131)"
         Tab(9).Control(9)=   "DeleteCheck(130)"
         Tab(9).Control(10)=   "DeleteCheck(129)"
         Tab(9).Control(11)=   "DeleteCheck(128)"
         Tab(9).Control(12)=   "DeleteCheck(127)"
         Tab(9).Control(13)=   "DeleteCheck(126)"
         Tab(9).Control(14)=   "NextTab(9)"
         Tab(9).Control(15)=   "PrevTab(9)"
         Tab(9).Control(16)=   "ColumnValue(139)"
         Tab(9).Control(17)=   "ColumnValue(138)"
         Tab(9).Control(18)=   "ColumnValue(137)"
         Tab(9).Control(19)=   "ColumnValue(136)"
         Tab(9).Control(20)=   "ColumnValue(135)"
         Tab(9).Control(21)=   "ColumnValue(134)"
         Tab(9).Control(22)=   "ColumnValue(133)"
         Tab(9).Control(23)=   "ColumnValue(132)"
         Tab(9).Control(24)=   "ColumnValue(131)"
         Tab(9).Control(25)=   "ColumnValue(130)"
         Tab(9).Control(26)=   "ColumnValue(129)"
         Tab(9).Control(27)=   "ColumnValue(128)"
         Tab(9).Control(28)=   "ColumnValue(127)"
         Tab(9).Control(29)=   "ColumnValue(126)"
         Tab(9).Control(30)=   "TabDeleteLab(9)"
         Tab(9).Control(31)=   "ColumnName(139)"
         Tab(9).Control(32)=   "ColumnName(138)"
         Tab(9).Control(33)=   "ColumnName(137)"
         Tab(9).Control(34)=   "ColumnName(136)"
         Tab(9).Control(35)=   "ColumnName(135)"
         Tab(9).Control(36)=   "ColumnName(134)"
         Tab(9).Control(37)=   "ColumnName(133)"
         Tab(9).Control(38)=   "ColumnName(132)"
         Tab(9).Control(39)=   "ColumnName(131)"
         Tab(9).Control(40)=   "ColumnName(130)"
         Tab(9).Control(41)=   "ColumnName(129)"
         Tab(9).Control(42)=   "ColumnName(128)"
         Tab(9).Control(43)=   "ColumnName(127)"
         Tab(9).Control(44)=   "ColumnName(126)"
         Tab(9).ControlCount=   45
         TabCaption(10)  =   "Tab 10"
         TabPicture(10)  =   "DataEdit.frx":0118
         Tab(10).ControlEnabled=   0   'False
         Tab(10).Control(0)=   "DeleteCheck(152)"
         Tab(10).Control(1)=   "ColumnValue(152)"
         Tab(10).Control(2)=   "DeleteCheck(153)"
         Tab(10).Control(3)=   "ColumnValue(153)"
         Tab(10).Control(4)=   "DeleteCheck(151)"
         Tab(10).Control(5)=   "DeleteCheck(150)"
         Tab(10).Control(6)=   "DeleteCheck(149)"
         Tab(10).Control(7)=   "DeleteCheck(148)"
         Tab(10).Control(8)=   "DeleteCheck(147)"
         Tab(10).Control(9)=   "DeleteCheck(146)"
         Tab(10).Control(10)=   "DeleteCheck(145)"
         Tab(10).Control(11)=   "DeleteCheck(144)"
         Tab(10).Control(12)=   "DeleteCheck(143)"
         Tab(10).Control(13)=   "DeleteCheck(142)"
         Tab(10).Control(14)=   "DeleteCheck(141)"
         Tab(10).Control(15)=   "DeleteCheck(140)"
         Tab(10).Control(16)=   "NextTab(10)"
         Tab(10).Control(17)=   "PrevTab(10)"
         Tab(10).Control(18)=   "ColumnValue(151)"
         Tab(10).Control(19)=   "ColumnValue(150)"
         Tab(10).Control(20)=   "ColumnValue(149)"
         Tab(10).Control(21)=   "ColumnValue(148)"
         Tab(10).Control(22)=   "ColumnValue(147)"
         Tab(10).Control(23)=   "ColumnValue(146)"
         Tab(10).Control(24)=   "ColumnValue(145)"
         Tab(10).Control(25)=   "ColumnValue(144)"
         Tab(10).Control(26)=   "ColumnValue(143)"
         Tab(10).Control(27)=   "ColumnValue(142)"
         Tab(10).Control(28)=   "ColumnValue(141)"
         Tab(10).Control(29)=   "ColumnValue(140)"
         Tab(10).Control(30)=   "TabDeleteLab(10)"
         Tab(10).Control(31)=   "ColumnName(153)"
         Tab(10).Control(32)=   "ColumnName(152)"
         Tab(10).Control(33)=   "ColumnName(151)"
         Tab(10).Control(34)=   "ColumnName(150)"
         Tab(10).Control(35)=   "ColumnName(149)"
         Tab(10).Control(36)=   "ColumnName(148)"
         Tab(10).Control(37)=   "ColumnName(147)"
         Tab(10).Control(38)=   "ColumnName(146)"
         Tab(10).Control(39)=   "ColumnName(145)"
         Tab(10).Control(40)=   "ColumnName(144)"
         Tab(10).Control(41)=   "ColumnName(143)"
         Tab(10).Control(42)=   "ColumnName(142)"
         Tab(10).Control(43)=   "ColumnName(141)"
         Tab(10).Control(44)=   "ColumnName(140)"
         Tab(10).ControlCount=   45
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   98
            Left            =   -72720
            TabIndex        =   518
            Top             =   690
            Width           =   10215
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   98
            Left            =   -73200
            TabIndex        =   517
            Top             =   705
            Width           =   255
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   28
            Left            =   -72720
            TabIndex        =   502
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   29
            Left            =   -72720
            TabIndex        =   501
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   30
            Left            =   -72720
            TabIndex        =   500
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   32
            Left            =   -72720
            TabIndex        =   499
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   33
            Left            =   -72720
            TabIndex        =   498
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   34
            Left            =   -72720
            TabIndex        =   497
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   35
            Left            =   -72720
            TabIndex        =   496
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   36
            Left            =   -72720
            TabIndex        =   495
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   37
            Left            =   -72720
            TabIndex        =   494
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   38
            Left            =   -72720
            TabIndex        =   493
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   39
            Left            =   -72720
            TabIndex        =   492
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   40
            Left            =   -72720
            TabIndex        =   491
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   41
            Left            =   -72720
            TabIndex        =   490
            Top             =   6600
            Width           =   10215
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   28
            Left            =   -73200
            TabIndex        =   489
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   29
            Left            =   -73200
            TabIndex        =   488
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   30
            Left            =   -73200
            TabIndex        =   487
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   31
            Left            =   -73200
            TabIndex        =   486
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   32
            Left            =   -73200
            TabIndex        =   485
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   33
            Left            =   -73200
            TabIndex        =   484
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   34
            Left            =   -73200
            TabIndex        =   483
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   35
            Left            =   -73200
            TabIndex        =   482
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   36
            Left            =   -73200
            TabIndex        =   481
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   37
            Left            =   -73200
            TabIndex        =   480
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   38
            Left            =   -73200
            TabIndex        =   479
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   39
            Left            =   -73200
            TabIndex        =   478
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   40
            Left            =   -73200
            TabIndex        =   477
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   41
            Left            =   -73200
            TabIndex        =   476
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   152
            Left            =   -73200
            TabIndex        =   474
            Top             =   6153
            Width           =   255
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   152
            Left            =   -72720
            TabIndex        =   473
            Top             =   6138
            Width           =   10215
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   153
            Left            =   -73200
            TabIndex        =   472
            Top             =   6615
            Width           =   255
         End
         Begin VB.TextBox ColumnValue 
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Index           =   153
            Left            =   -72720
            TabIndex        =   471
            Top             =   6600
            Width           =   10215
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   151
            Left            =   -73200
            TabIndex        =   470
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   150
            Left            =   -73200
            TabIndex        =   469
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   149
            Left            =   -73200
            TabIndex        =   468
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   148
            Left            =   -73200
            TabIndex        =   467
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   147
            Left            =   -73200
            TabIndex        =   466
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   146
            Left            =   -73200
            TabIndex        =   465
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   145
            Left            =   -73200
            TabIndex        =   464
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   144
            Left            =   -73200
            TabIndex        =   463
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   143
            Left            =   -73200
            TabIndex        =   462
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   142
            Left            =   -73200
            TabIndex        =   461
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   141
            Left            =   -73200
            TabIndex        =   460
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   140
            Left            =   -73200
            TabIndex        =   459
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   139
            Left            =   -73200
            TabIndex        =   458
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   138
            Left            =   -73200
            TabIndex        =   457
            Top             =   6156
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   137
            Left            =   -73200
            TabIndex        =   456
            Top             =   5703
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   136
            Left            =   -73200
            TabIndex        =   455
            Top             =   5250
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   135
            Left            =   -73200
            TabIndex        =   454
            Top             =   4797
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   134
            Left            =   -73200
            TabIndex        =   453
            Top             =   4344
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   133
            Left            =   -73200
            TabIndex        =   452
            Top             =   3891
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   132
            Left            =   -73200
            TabIndex        =   451
            Top             =   3438
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   131
            Left            =   -73200
            TabIndex        =   450
            Top             =   2985
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   130
            Left            =   -73200
            TabIndex        =   449
            Top             =   2532
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   129
            Left            =   -73200
            TabIndex        =   448
            Top             =   2079
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   128
            Left            =   -73200
            TabIndex        =   447
            Top             =   1626
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   127
            Left            =   -73200
            TabIndex        =   446
            Top             =   1173
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   126
            Left            =   -73200
            TabIndex        =   445
            Top             =   720
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   125
            Left            =   -73200
            TabIndex        =   444
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   124
            Left            =   -73200
            TabIndex        =   443
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   123
            Left            =   -73200
            TabIndex        =   442
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   122
            Left            =   -73200
            TabIndex        =   441
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   121
            Left            =   -73200
            TabIndex        =   440
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   120
            Left            =   -73200
            TabIndex        =   439
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   119
            Left            =   -73200
            TabIndex        =   438
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   118
            Left            =   -73200
            TabIndex        =   437
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   117
            Left            =   -73200
            TabIndex        =   436
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   116
            Left            =   -73200
            TabIndex        =   435
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   115
            Left            =   -73200
            TabIndex        =   434
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   114
            Left            =   -73200
            TabIndex        =   433
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   113
            Left            =   -73200
            TabIndex        =   432
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   112
            Left            =   -73200
            TabIndex        =   431
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   111
            Left            =   -73200
            TabIndex        =   430
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   110
            Left            =   -73200
            TabIndex        =   429
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   109
            Left            =   -73200
            TabIndex        =   428
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   108
            Left            =   -73200
            TabIndex        =   427
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   107
            Left            =   -73200
            TabIndex        =   426
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   106
            Left            =   -73200
            TabIndex        =   425
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   105
            Left            =   -73200
            TabIndex        =   424
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   104
            Left            =   -73200
            TabIndex        =   423
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   103
            Left            =   -73200
            TabIndex        =   422
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   102
            Left            =   -73200
            TabIndex        =   421
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   101
            Left            =   -73200
            TabIndex        =   420
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   100
            Left            =   -73200
            TabIndex        =   419
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   99
            Left            =   -73200
            TabIndex        =   418
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   97
            Left            =   -73200
            TabIndex        =   417
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   96
            Left            =   -73200
            TabIndex        =   416
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   95
            Left            =   -73200
            TabIndex        =   415
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   94
            Left            =   -73200
            TabIndex        =   414
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   93
            Left            =   -73200
            TabIndex        =   413
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   92
            Left            =   -73200
            TabIndex        =   412
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   91
            Left            =   -73200
            TabIndex        =   411
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   90
            Left            =   -73200
            TabIndex        =   410
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   89
            Left            =   -73200
            TabIndex        =   409
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   88
            Left            =   -73200
            TabIndex        =   408
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   87
            Left            =   -73200
            TabIndex        =   407
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   86
            Left            =   -73200
            TabIndex        =   406
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   85
            Left            =   -73200
            TabIndex        =   405
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   84
            Left            =   -73200
            TabIndex        =   404
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   83
            Left            =   -73200
            TabIndex        =   403
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   82
            Left            =   -73200
            TabIndex        =   402
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   81
            Left            =   -73200
            TabIndex        =   401
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   80
            Left            =   -73200
            TabIndex        =   400
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   79
            Left            =   -73200
            TabIndex        =   399
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   78
            Left            =   -73200
            TabIndex        =   398
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   77
            Left            =   -73200
            TabIndex        =   397
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   76
            Left            =   -73200
            TabIndex        =   396
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   75
            Left            =   -73200
            TabIndex        =   395
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   74
            Left            =   -73200
            TabIndex        =   394
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   73
            Left            =   -73200
            TabIndex        =   393
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   72
            Left            =   -73200
            TabIndex        =   392
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   71
            Left            =   -73200
            TabIndex        =   391
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   70
            Left            =   -73200
            TabIndex        =   390
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   69
            Left            =   -73200
            TabIndex        =   389
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   68
            Left            =   -73200
            TabIndex        =   388
            Top             =   6156
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   67
            Left            =   -73200
            TabIndex        =   387
            Top             =   5703
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   66
            Left            =   -73200
            TabIndex        =   386
            Top             =   5250
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   65
            Left            =   -73200
            TabIndex        =   385
            Top             =   4797
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   64
            Left            =   -73200
            TabIndex        =   384
            Top             =   4344
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   63
            Left            =   -73200
            TabIndex        =   383
            Top             =   3891
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   62
            Left            =   -73200
            TabIndex        =   382
            Top             =   3438
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   61
            Left            =   -73200
            TabIndex        =   381
            Top             =   2985
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   60
            Left            =   -73200
            TabIndex        =   380
            Top             =   2532
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   59
            Left            =   -73200
            TabIndex        =   379
            Top             =   2079
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   58
            Left            =   -73200
            TabIndex        =   378
            Top             =   1626
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   57
            Left            =   -73200
            TabIndex        =   377
            Top             =   1173
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   56
            Left            =   -73200
            TabIndex        =   376
            Top             =   720
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   55
            Left            =   -73200
            TabIndex        =   375
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   54
            Left            =   -73200
            TabIndex        =   374
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   53
            Left            =   -73200
            TabIndex        =   373
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   52
            Left            =   -73200
            TabIndex        =   372
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   51
            Left            =   -73200
            TabIndex        =   371
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   50
            Left            =   -73200
            TabIndex        =   370
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   49
            Left            =   -73200
            TabIndex        =   369
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   48
            Left            =   -73200
            TabIndex        =   368
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   47
            Left            =   -73200
            TabIndex        =   367
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   46
            Left            =   -73200
            TabIndex        =   366
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   45
            Left            =   -73200
            TabIndex        =   365
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   44
            Left            =   -73200
            TabIndex        =   364
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   43
            Left            =   -73200
            TabIndex        =   363
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   42
            Left            =   -73200
            TabIndex        =   362
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   27
            Left            =   1800
            TabIndex        =   361
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   26
            Left            =   1800
            TabIndex        =   360
            Top             =   6153
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   25
            Left            =   1800
            TabIndex        =   359
            Top             =   5699
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   24
            Left            =   1800
            TabIndex        =   358
            Top             =   5245
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   23
            Left            =   1800
            TabIndex        =   357
            Top             =   4791
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   22
            Left            =   1800
            TabIndex        =   356
            Top             =   4337
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   21
            Left            =   1800
            TabIndex        =   355
            Top             =   3883
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   20
            Left            =   1800
            TabIndex        =   354
            Top             =   3429
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   19
            Left            =   1800
            TabIndex        =   353
            Top             =   2975
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   18
            Left            =   1800
            TabIndex        =   352
            Top             =   2521
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   17
            Left            =   1800
            TabIndex        =   351
            Top             =   2067
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   16
            Left            =   1800
            TabIndex        =   350
            Top             =   1613
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   15
            Left            =   1800
            TabIndex        =   349
            Top             =   1159
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   14
            Left            =   1800
            TabIndex        =   348
            Top             =   705
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   13
            Left            =   -73200
            TabIndex        =   347
            Top             =   6615
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   12
            Left            =   -73200
            TabIndex        =   346
            Top             =   6150
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   11
            Left            =   -73200
            TabIndex        =   345
            Top             =   5700
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   10
            Left            =   -73200
            TabIndex        =   344
            Top             =   5250
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   9
            Left            =   -73200
            TabIndex        =   343
            Top             =   4785
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   8
            Left            =   -73200
            TabIndex        =   342
            Top             =   4335
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   7
            Left            =   -73200
            TabIndex        =   341
            Top             =   3885
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   6
            Left            =   -73200
            TabIndex        =   340
            Top             =   3435
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   5
            Left            =   -73200
            TabIndex        =   339
            Top             =   2970
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   4
            Left            =   -73200
            TabIndex        =   338
            Top             =   2520
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   3
            Left            =   -73200
            TabIndex        =   337
            Top             =   2070
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   2
            Left            =   -73200
            TabIndex        =   336
            Top             =   1620
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   1
            Left            =   -73200
            TabIndex        =   335
            Top             =   1155
            Width           =   255
         End
         Begin VB.CheckBox DeleteCheck 
            Caption         =   "Check1"
            Height          =   255
            Index           =   0
            Left            =   -73200
            TabIndex        =   334
            Top             =   705
            Width           =   255
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   10
            Left            =   -72720
            TabIndex        =   332
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   10
            Left            =   -74880
            TabIndex        =   331
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   9
            Left            =   -72720
            TabIndex        =   330
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   9
            Left            =   -74880
            TabIndex        =   329
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   8
            Left            =   -72720
            TabIndex        =   328
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "PreviousTab"
            Height          =   375
            Index           =   8
            Left            =   -74880
            TabIndex        =   327
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   7
            Left            =   -72720
            TabIndex        =   326
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   7
            Left            =   -75000
            TabIndex        =   325
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   6
            Left            =   -72720
            TabIndex        =   324
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   6
            Left            =   -74880
            TabIndex        =   323
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   5
            Left            =   -72720
            TabIndex        =   322
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   5
            Left            =   -74880
            TabIndex        =   321
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   4
            Left            =   -72720
            TabIndex        =   320
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   4
            Left            =   -74880
            TabIndex        =   319
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   3
            Left            =   -72720
            TabIndex        =   318
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   3
            Left            =   -74880
            TabIndex        =   317
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   2
            Left            =   -72720
            TabIndex        =   316
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   2
            Left            =   -74880
            TabIndex        =   315
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   1
            Left            =   2280
            TabIndex        =   17
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   1
            Left            =   120
            TabIndex        =   16
            Top             =   6960
            Width           =   1575
         End
         Begin VB.CommandButton NextTab 
            Caption         =   "Next Tab"
            Height          =   375
            Index           =   0
            Left            =   -72720
            TabIndex        =   50
            Top             =   6960
            Width           =   1575
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   13
            Left            =   -72720
            TabIndex        =   314
            Top             =   6600
            Width           =   10215
         End
         Begin VB.CommandButton PrevTab 
            Caption         =   "Previous Tab"
            Height          =   375
            Index           =   0
            Left            =   -74880
            TabIndex        =   49
            Top             =   6960
            Width           =   1575
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   151
            Left            =   -72720
            TabIndex        =   311
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   150
            Left            =   -72720
            TabIndex        =   309
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   149
            Left            =   -72720
            TabIndex        =   307
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   148
            Left            =   -72720
            TabIndex        =   305
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   147
            Left            =   -72720
            TabIndex        =   303
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   146
            Left            =   -72720
            TabIndex        =   301
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   145
            Left            =   -72720
            TabIndex        =   299
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   144
            Left            =   -72720
            TabIndex        =   297
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   143
            Left            =   -72720
            TabIndex        =   295
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   142
            Left            =   -72720
            TabIndex        =   293
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   141
            Left            =   -72720
            TabIndex        =   291
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   140
            Left            =   -72720
            TabIndex        =   289
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   139
            Left            =   -72720
            TabIndex        =   287
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   138
            Left            =   -72720
            TabIndex        =   285
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   137
            Left            =   -72720
            TabIndex        =   283
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   136
            Left            =   -72720
            TabIndex        =   281
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   135
            Left            =   -72720
            TabIndex        =   279
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   134
            Left            =   -72720
            TabIndex        =   277
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   133
            Left            =   -72720
            TabIndex        =   275
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   132
            Left            =   -72720
            TabIndex        =   273
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   131
            Left            =   -72720
            TabIndex        =   271
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   130
            Left            =   -72720
            TabIndex        =   269
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   129
            Left            =   -72720
            TabIndex        =   267
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   128
            Left            =   -72720
            TabIndex        =   265
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   127
            Left            =   -72720
            TabIndex        =   263
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   126
            Left            =   -72720
            TabIndex        =   261
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   125
            Left            =   -72720
            TabIndex        =   259
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   124
            Left            =   -72720
            TabIndex        =   257
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   123
            Left            =   -72720
            TabIndex        =   255
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   122
            Left            =   -72720
            TabIndex        =   253
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   121
            Left            =   -72720
            TabIndex        =   251
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   120
            Left            =   -72720
            TabIndex        =   249
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   119
            Left            =   -72720
            TabIndex        =   247
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   118
            Left            =   -72720
            TabIndex        =   245
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   117
            Left            =   -72720
            TabIndex        =   243
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   116
            Left            =   -72720
            TabIndex        =   241
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   115
            Left            =   -72720
            TabIndex        =   239
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   114
            Left            =   -72720
            TabIndex        =   237
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   113
            Left            =   -72720
            TabIndex        =   235
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   112
            Left            =   -72720
            TabIndex        =   233
            Top             =   720
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   111
            Left            =   -72720
            TabIndex        =   231
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   110
            Left            =   -72720
            TabIndex        =   229
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   109
            Left            =   -72720
            TabIndex        =   227
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   108
            Left            =   -72720
            TabIndex        =   225
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   107
            Left            =   -72720
            TabIndex        =   223
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   106
            Left            =   -72720
            TabIndex        =   221
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   105
            Left            =   -72720
            TabIndex        =   219
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   104
            Left            =   -72720
            TabIndex        =   217
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   103
            Left            =   -72720
            TabIndex        =   215
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   102
            Left            =   -72720
            TabIndex        =   213
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   101
            Left            =   -72720
            TabIndex        =   211
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   100
            Left            =   -72720
            TabIndex        =   209
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   99
            Left            =   -72720
            TabIndex        =   207
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   97
            Left            =   -72720
            TabIndex        =   204
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   96
            Left            =   -72720
            TabIndex        =   202
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   95
            Left            =   -72720
            TabIndex        =   200
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   94
            Left            =   -72720
            TabIndex        =   198
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   93
            Left            =   -72720
            TabIndex        =   196
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   92
            Left            =   -72720
            TabIndex        =   194
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   91
            Left            =   -72720
            TabIndex        =   192
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   90
            Left            =   -72720
            TabIndex        =   190
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   89
            Left            =   -72720
            TabIndex        =   188
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   88
            Left            =   -72720
            TabIndex        =   186
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   87
            Left            =   -72720
            TabIndex        =   184
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   86
            Left            =   -72720
            TabIndex        =   182
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   85
            Left            =   -72720
            TabIndex        =   180
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   84
            Left            =   -72720
            TabIndex        =   178
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   83
            Left            =   -72720
            TabIndex        =   176
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   82
            Left            =   -72720
            TabIndex        =   174
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   81
            Left            =   -72720
            TabIndex        =   172
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   80
            Left            =   -72720
            TabIndex        =   170
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   79
            Left            =   -72720
            TabIndex        =   168
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   78
            Left            =   -72720
            TabIndex        =   166
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   77
            Left            =   -72720
            TabIndex        =   164
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   76
            Left            =   -72720
            TabIndex        =   162
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   75
            Left            =   -72720
            TabIndex        =   160
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   74
            Left            =   -72720
            TabIndex        =   158
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   73
            Left            =   -72720
            TabIndex        =   156
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   72
            Left            =   -72720
            TabIndex        =   154
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   71
            Left            =   -72720
            TabIndex        =   152
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   70
            Left            =   -72720
            TabIndex        =   150
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   69
            Left            =   -72720
            TabIndex        =   148
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   68
            Left            =   -72720
            TabIndex        =   146
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   67
            Left            =   -72720
            TabIndex        =   144
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   66
            Left            =   -72720
            TabIndex        =   142
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   65
            Left            =   -72720
            TabIndex        =   140
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   64
            Left            =   -72720
            TabIndex        =   138
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   63
            Left            =   -72720
            TabIndex        =   136
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   62
            Left            =   -72720
            TabIndex        =   134
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   61
            Left            =   -72720
            TabIndex        =   132
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   60
            Left            =   -72720
            TabIndex        =   130
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   59
            Left            =   -72720
            TabIndex        =   128
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   58
            Left            =   -72720
            TabIndex        =   126
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   57
            Left            =   -72720
            TabIndex        =   124
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   56
            Left            =   -72720
            TabIndex        =   122
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   55
            Left            =   -72720
            TabIndex        =   120
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   54
            Left            =   -72720
            TabIndex        =   118
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   53
            Left            =   -72720
            TabIndex        =   116
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   52
            Left            =   -72720
            TabIndex        =   114
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   51
            Left            =   -72720
            TabIndex        =   112
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   50
            Left            =   -72720
            TabIndex        =   110
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   49
            Left            =   -72720
            TabIndex        =   108
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   48
            Left            =   -72720
            TabIndex        =   106
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   47
            Left            =   -72720
            TabIndex        =   104
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   46
            Left            =   -72720
            TabIndex        =   102
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   45
            Left            =   -72720
            TabIndex        =   100
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   44
            Left            =   -72720
            TabIndex        =   98
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   43
            Left            =   -72720
            TabIndex        =   96
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   42
            Left            =   -72720
            TabIndex        =   94
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   31
            Left            =   -72720
            TabIndex        =   93
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   27
            Left            =   2280
            TabIndex        =   91
            Top             =   6600
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   26
            Left            =   2280
            TabIndex        =   89
            Top             =   6138
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   25
            Left            =   2280
            TabIndex        =   87
            Top             =   5684
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   24
            Left            =   2280
            TabIndex        =   85
            Top             =   5230
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   23
            Left            =   2280
            TabIndex        =   83
            Top             =   4776
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   22
            Left            =   2280
            TabIndex        =   81
            Top             =   4322
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   21
            Left            =   2280
            TabIndex        =   79
            Top             =   3868
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   20
            Left            =   2280
            TabIndex        =   77
            Top             =   3414
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   19
            Left            =   2280
            TabIndex        =   75
            Top             =   2960
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   18
            Left            =   2280
            TabIndex        =   73
            Top             =   2506
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            BackColor       =   &H00FFFFFF&
            Height          =   285
            Index           =   17
            Left            =   2280
            TabIndex        =   71
            Top             =   2052
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   16
            Left            =   2280
            TabIndex        =   69
            Top             =   1598
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   15
            Left            =   2280
            TabIndex        =   67
            Top             =   1144
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   14
            Left            =   2280
            TabIndex        =   65
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   0
            Left            =   -72720
            TabIndex        =   56
            Top             =   690
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   1
            Left            =   -72720
            TabIndex        =   34
            Top             =   1140
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   2
            Left            =   -72720
            TabIndex        =   33
            Top             =   1605
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   3
            Left            =   -72720
            TabIndex        =   32
            Top             =   2055
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   4
            Left            =   -72720
            TabIndex        =   31
            Top             =   2505
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   5
            Left            =   -72720
            TabIndex        =   30
            Top             =   2955
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   6
            Left            =   -72720
            TabIndex        =   29
            Top             =   3420
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   7
            Left            =   -72720
            TabIndex        =   28
            Top             =   3870
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   8
            Left            =   -72720
            TabIndex        =   27
            Top             =   4320
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   9
            Left            =   -72720
            TabIndex        =   26
            Top             =   4770
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   10
            Left            =   -72720
            TabIndex        =   25
            Top             =   5235
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   11
            Left            =   -72720
            TabIndex        =   24
            Top             =   5685
            Width           =   10215
         End
         Begin VB.TextBox ColumnValue 
            Height          =   285
            Index           =   12
            Left            =   -72720
            TabIndex        =   0
            Top             =   6135
            Width           =   10215
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   10
            Left            =   -72960
            TabIndex        =   529
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   9
            Left            =   -72960
            TabIndex        =   528
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   8
            Left            =   -72960
            TabIndex        =   527
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   7
            Left            =   -72960
            TabIndex        =   526
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   6
            Left            =   -72960
            TabIndex        =   524
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   5
            Left            =   -72960
            TabIndex        =   523
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   4
            Left            =   -72960
            TabIndex        =   522
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   3
            Left            =   -72960
            TabIndex        =   521
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   2
            Left            =   -72960
            TabIndex        =   520
            Top             =   360
            Width           =   615
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   1
            Left            =   2040
            TabIndex        =   519
            Top             =   360
            Width           =   615
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   28
            Left            =   -74880
            TabIndex        =   516
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   29
            Left            =   -74880
            TabIndex        =   515
            Top             =   1160
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   30
            Left            =   -74880
            TabIndex        =   514
            Top             =   1615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   31
            Left            =   -74880
            TabIndex        =   513
            Top             =   2070
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   32
            Left            =   -74880
            TabIndex        =   512
            Top             =   2525
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   33
            Left            =   -74880
            TabIndex        =   511
            Top             =   2980
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   34
            Left            =   -74880
            TabIndex        =   510
            Top             =   3435
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   35
            Left            =   -74880
            TabIndex        =   509
            Top             =   3890
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   36
            Left            =   -74880
            TabIndex        =   508
            Top             =   4345
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   37
            Left            =   -74880
            TabIndex        =   507
            Top             =   4800
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   38
            Left            =   -74880
            TabIndex        =   506
            Top             =   5255
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   39
            Left            =   -74880
            TabIndex        =   505
            Top             =   5710
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   40
            Left            =   -74880
            TabIndex        =   504
            Top             =   6165
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   41
            Left            =   -74880
            TabIndex        =   503
            Top             =   6630
            Width           =   2175
         End
         Begin VB.Label TabDeleteLab 
            Alignment       =   2  'Center
            Caption         =   "Delete"
            Height          =   255
            Index           =   0
            Left            =   -72960
            TabIndex        =   475
            Top             =   360
            Width           =   615
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   153
            Left            =   -74880
            TabIndex        =   333
            Top             =   6615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   152
            Left            =   -74880
            TabIndex        =   313
            Top             =   6153
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   151
            Left            =   -74880
            TabIndex        =   312
            Top             =   5699
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   150
            Left            =   -74880
            TabIndex        =   310
            Top             =   5245
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   149
            Left            =   -74880
            TabIndex        =   308
            Top             =   4791
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   148
            Left            =   -74880
            TabIndex        =   306
            Top             =   4337
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   147
            Left            =   -74880
            TabIndex        =   304
            Top             =   3883
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   146
            Left            =   -74880
            TabIndex        =   302
            Top             =   3429
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   145
            Left            =   -74880
            TabIndex        =   300
            Top             =   2975
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   144
            Left            =   -74880
            TabIndex        =   298
            Top             =   2521
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   143
            Left            =   -74880
            TabIndex        =   296
            Top             =   2067
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   142
            Left            =   -74880
            TabIndex        =   294
            Top             =   1613
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   141
            Left            =   -74880
            TabIndex        =   292
            Top             =   1159
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   140
            Left            =   -74880
            TabIndex        =   290
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   139
            Left            =   -74880
            TabIndex        =   288
            Top             =   6615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   138
            Left            =   -74880
            TabIndex        =   286
            Top             =   6153
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   137
            Left            =   -74880
            TabIndex        =   284
            Top             =   5699
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   136
            Left            =   -74880
            TabIndex        =   282
            Top             =   5245
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   135
            Left            =   -74880
            TabIndex        =   280
            Top             =   4791
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   134
            Left            =   -74880
            TabIndex        =   278
            Top             =   4337
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   133
            Left            =   -74880
            TabIndex        =   276
            Top             =   3883
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   132
            Left            =   -74880
            TabIndex        =   274
            Top             =   3429
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   131
            Left            =   -74880
            TabIndex        =   272
            Top             =   2975
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   130
            Left            =   -74880
            TabIndex        =   270
            Top             =   2521
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   129
            Left            =   -74880
            TabIndex        =   268
            Top             =   2067
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   128
            Left            =   -74880
            TabIndex        =   266
            Top             =   1613
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   127
            Left            =   -74880
            TabIndex        =   264
            Top             =   1159
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   126
            Left            =   -74880
            TabIndex        =   262
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   125
            Left            =   -74880
            TabIndex        =   260
            Top             =   6630
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   124
            Left            =   -74880
            TabIndex        =   258
            Top             =   6165
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   123
            Left            =   -74880
            TabIndex        =   256
            Top             =   5710
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   122
            Left            =   -74880
            TabIndex        =   254
            Top             =   5255
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   121
            Left            =   -74880
            TabIndex        =   252
            Top             =   4800
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   120
            Left            =   -74880
            TabIndex        =   250
            Top             =   4345
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   119
            Left            =   -74880
            TabIndex        =   248
            Top             =   3890
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   118
            Left            =   -74880
            TabIndex        =   246
            Top             =   3435
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   117
            Left            =   -74880
            TabIndex        =   244
            Top             =   2980
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   116
            Left            =   -74880
            TabIndex        =   242
            Top             =   2525
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   115
            Left            =   -74880
            TabIndex        =   240
            Top             =   2070
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   114
            Left            =   -74880
            TabIndex        =   238
            Top             =   1615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   113
            Left            =   -74880
            TabIndex        =   236
            Top             =   1160
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   112
            Left            =   -74880
            TabIndex        =   234
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   111
            Left            =   -74880
            TabIndex        =   232
            Top             =   6630
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   110
            Left            =   -74880
            TabIndex        =   230
            Top             =   6165
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   109
            Left            =   -74880
            TabIndex        =   228
            Top             =   5710
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   108
            Left            =   -74880
            TabIndex        =   226
            Top             =   5255
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   107
            Left            =   -74880
            TabIndex        =   224
            Top             =   4800
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   106
            Left            =   -74880
            TabIndex        =   222
            Top             =   4345
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   105
            Left            =   -74880
            TabIndex        =   220
            Top             =   3890
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   104
            Left            =   -74880
            TabIndex        =   218
            Top             =   3435
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   103
            Left            =   -74880
            TabIndex        =   216
            Top             =   2980
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   102
            Left            =   -74880
            TabIndex        =   214
            Top             =   2525
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   101
            Left            =   -74880
            TabIndex        =   212
            Top             =   2070
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   100
            Left            =   -74880
            TabIndex        =   210
            Top             =   1615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   99
            Left            =   -74880
            TabIndex        =   208
            Top             =   1160
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   98
            Left            =   -74880
            TabIndex        =   206
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   97
            Left            =   -74880
            TabIndex        =   205
            Top             =   6600
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   96
            Left            =   -74880
            TabIndex        =   203
            Top             =   6141
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   95
            Left            =   -74880
            TabIndex        =   201
            Top             =   5688
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   94
            Left            =   -74880
            TabIndex        =   199
            Top             =   5235
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   93
            Left            =   -74880
            TabIndex        =   197
            Top             =   4782
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   92
            Left            =   -74880
            TabIndex        =   195
            Top             =   4329
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   91
            Left            =   -74880
            TabIndex        =   193
            Top             =   3876
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   90
            Left            =   -74880
            TabIndex        =   191
            Top             =   3423
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   89
            Left            =   -74880
            TabIndex        =   189
            Top             =   2970
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   88
            Left            =   -74880
            TabIndex        =   187
            Top             =   2517
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   87
            Left            =   -74880
            TabIndex        =   185
            Top             =   2064
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   86
            Left            =   -74880
            TabIndex        =   183
            Top             =   1611
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   85
            Left            =   -74880
            TabIndex        =   181
            Top             =   1158
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   84
            Left            =   -74880
            TabIndex        =   179
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   83
            Left            =   -74880
            TabIndex        =   177
            Top             =   6600
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   82
            Left            =   -74880
            TabIndex        =   175
            Top             =   6141
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   81
            Left            =   -74880
            TabIndex        =   173
            Top             =   5688
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   80
            Left            =   -74880
            TabIndex        =   171
            Top             =   5235
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   79
            Left            =   -74880
            TabIndex        =   169
            Top             =   4782
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   78
            Left            =   -74880
            TabIndex        =   167
            Top             =   4329
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   77
            Left            =   -74880
            TabIndex        =   165
            Top             =   3876
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   76
            Left            =   -74880
            TabIndex        =   163
            Top             =   3423
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   75
            Left            =   -74880
            TabIndex        =   161
            Top             =   2970
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   74
            Left            =   -74880
            TabIndex        =   159
            Top             =   2517
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   73
            Left            =   -74880
            TabIndex        =   157
            Top             =   2064
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   72
            Left            =   -74880
            TabIndex        =   155
            Top             =   1611
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   71
            Left            =   -74880
            TabIndex        =   153
            Top             =   1158
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   70
            Left            =   -74880
            TabIndex        =   151
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   69
            Left            =   -74880
            TabIndex        =   149
            Top             =   6600
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   68
            Left            =   -74880
            TabIndex        =   147
            Top             =   6141
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   67
            Left            =   -74880
            TabIndex        =   145
            Top             =   5688
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   66
            Left            =   -74880
            TabIndex        =   143
            Top             =   5235
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   65
            Left            =   -74880
            TabIndex        =   141
            Top             =   4782
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   64
            Left            =   -74880
            TabIndex        =   139
            Top             =   4329
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   63
            Left            =   -74880
            TabIndex        =   137
            Top             =   3876
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   62
            Left            =   -74880
            TabIndex        =   135
            Top             =   3423
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   61
            Left            =   -74880
            TabIndex        =   133
            Top             =   2970
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   60
            Left            =   -74880
            TabIndex        =   131
            Top             =   2517
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   59
            Left            =   -74880
            TabIndex        =   129
            Top             =   2064
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   58
            Left            =   -74880
            TabIndex        =   127
            Top             =   1611
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   57
            Left            =   -74880
            TabIndex        =   125
            Top             =   1158
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   56
            Left            =   -74880
            TabIndex        =   123
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   55
            Left            =   -74880
            TabIndex        =   121
            Top             =   6615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   54
            Left            =   -74880
            TabIndex        =   119
            Top             =   6153
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   53
            Left            =   -74880
            TabIndex        =   117
            Top             =   5699
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   52
            Left            =   -74880
            TabIndex        =   115
            Top             =   5245
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   51
            Left            =   -74880
            TabIndex        =   113
            Top             =   4791
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   50
            Left            =   -74880
            TabIndex        =   111
            Top             =   4337
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   49
            Left            =   -74880
            TabIndex        =   109
            Top             =   3883
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   48
            Left            =   -74880
            TabIndex        =   107
            Top             =   3429
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   47
            Left            =   -74880
            TabIndex        =   105
            Top             =   2975
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   46
            Left            =   -74880
            TabIndex        =   103
            Top             =   2521
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   45
            Left            =   -74880
            TabIndex        =   101
            Top             =   2067
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   44
            Left            =   -74880
            TabIndex        =   99
            Top             =   1613
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   43
            Left            =   -74880
            TabIndex        =   97
            Top             =   1159
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   42
            Left            =   -74880
            TabIndex        =   95
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   27
            Left            =   120
            TabIndex        =   92
            Top             =   6630
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   26
            Left            =   120
            TabIndex        =   90
            Top             =   6165
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   25
            Left            =   120
            TabIndex        =   88
            Top             =   5710
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   24
            Left            =   120
            TabIndex        =   86
            Top             =   5255
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   23
            Left            =   120
            TabIndex        =   84
            Top             =   4800
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   22
            Left            =   120
            TabIndex        =   82
            Top             =   4345
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   21
            Left            =   120
            TabIndex        =   80
            Top             =   3890
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   20
            Left            =   120
            TabIndex        =   78
            Top             =   3435
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   19
            Left            =   120
            TabIndex        =   76
            Top             =   2980
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   18
            Left            =   120
            TabIndex        =   74
            Top             =   2525
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   17
            Left            =   120
            TabIndex        =   72
            Top             =   2070
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   16
            Left            =   120
            TabIndex        =   70
            Top             =   1615
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   15
            Left            =   120
            TabIndex        =   68
            Top             =   1160
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   14
            Left            =   120
            TabIndex        =   66
            Top             =   705
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   1
            Left            =   -74880
            TabIndex        =   48
            Top             =   1170
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   2
            Left            =   -74880
            TabIndex        =   47
            Top             =   1620
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   3
            Left            =   -74880
            TabIndex        =   46
            Top             =   2070
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   4
            Left            =   -74880
            TabIndex        =   45
            Top             =   2535
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   5
            Left            =   -74880
            TabIndex        =   44
            Top             =   2985
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   6
            Left            =   -74880
            TabIndex        =   43
            Top             =   3435
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   7
            Left            =   -74880
            TabIndex        =   42
            Top             =   3885
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   8
            Left            =   -74880
            TabIndex        =   41
            Top             =   4335
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   9
            Left            =   -74880
            TabIndex        =   40
            Top             =   4800
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   10
            Left            =   -74880
            TabIndex        =   39
            Top             =   5235
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   11
            Left            =   -74880
            TabIndex        =   38
            Top             =   5685
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   0
            Left            =   -74880
            TabIndex        =   37
            Top             =   720
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   12
            Left            =   -74880
            TabIndex        =   36
            Top             =   6150
            Width           =   2175
         End
         Begin VB.Label ColumnName 
            Caption         =   "Column Name"
            Height          =   255
            Index           =   13
            Left            =   -74880
            TabIndex        =   35
            Top             =   6600
            Width           =   2175
         End
      End
      Begin VB.Label TrackLabel 
         Caption         =   "Track"
         Height          =   255
         Left            =   2400
         TabIndex        =   533
         Top             =   9300
         Width           =   495
      End
      Begin VB.Label MultiEditLabel 
         Height          =   255
         Left            =   240
         TabIndex        =   532
         Top             =   1095
         Width           =   2775
      End
      Begin VB.Label JobNumLabel 
         Caption         =   "Job Number"
         Height          =   255
         Left            =   5040
         TabIndex        =   64
         Top             =   840
         Width           =   975
      End
      Begin VB.Label ObsNumLabel 
         Caption         =   "Obs Number"
         Height          =   255
         Left            =   1440
         TabIndex        =   63
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label MeicNumLabel 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   240
         TabIndex        =   62
         Top             =   240
         Width           =   1095
      End
   End
End
Attribute VB_Name = "DataEdit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const MaxTabs As Long = 11
Const MaxRowsInTab As Long = 14
Const MaxDataSources As Long = 2

Private EditMode As EditModeEnum
Private MultiEdit As Boolean
Private NumToEdit As Long
Private MEICNosToEdit() As Long
Private EditMedsJobNos() As Long
Private EditDataType As String
Private EditDataTypeAlias As String
Private EditMedsObsNos() As Long
Private OrigLatitude() As String
Private OrigLongitude() As String
Private OrigDate() As Date
Private OrigTime() As Date
Private OrigTimeNull() As Boolean
Private OrigValue() As String
Private ColumnDataType(MaxTabs * MaxRowsInTab) As String
Private ColumnDataLength(MaxTabs * MaxRowsInTab) As Long
Private ColumnDataValueLimit(MaxTabs * MaxRowsInTab) As Double
Private ColumnDataMandatory(MaxTabs * MaxRowsInTab) As Boolean
Private ColumnDataConstraint(MaxTabs * MaxRowsInTab) As Long
Private ColumnActive(MaxTabs * MaxRowsInTab) As Boolean
Private ColumnDataSource(MaxDataSources) As String
Private ColumnDataSourceIndex(MaxTabs * MaxRowsInTab) As Long
Private ColumnTab(MaxTabs * MaxRowsInTab) As Long
Private FirstValueInTab(MaxTabs) As Long
Private LastValueInTab(MaxTabs) As Long
Private LocationDecimalMode As Boolean
Private NameOfDateField As String
Private NameOfShipField As String
Private DataHasTime As Boolean
Private DateIsMandatory As Boolean
Private InternalSetting As Boolean
Private DataHasTrack As Boolean
Private TrackNos() As Long
Private DataAltered As Boolean
Private TimeAltered As Boolean
Private DateAltered As Boolean
Private TrackAltered As Boolean


Private Function Min(ParamArray avValues() As Variant) As Variant
    Dim vThisItem As Variant, vThisElement As Variant
    
    On Error Resume Next
    For Each vThisItem In avValues
        If IsArray(vThisItem) Then
            For Each vThisElement In vThisItem
                Min = Min(vThisElement, Min)
            Next
        Else
            If vThisItem < Min Then
                If Not IsEmpty(vThisItem) Then
                    Min = vThisItem
                End If
            ElseIf IsEmpty(Min) Then
                Min = vThisItem
            End If
        End If
    Next
    On Error GoTo 0
End Function


Private Function Max(ParamArray avValues() As Variant) As Variant
    Dim vThisItem As Variant, vThisElement As Variant
    
    On Error Resume Next
    For Each vThisItem In avValues
        If IsArray(vThisItem) Then
            For Each vThisElement In vThisItem
                Max = Max(vThisElement, Max)
            Next
        Else
            If vThisItem > Max Then
                If Not IsEmpty(vThisItem) Then
                    Max = vThisItem
                End If
            ElseIf IsEmpty(Max) Then
                Max = vThisItem
            End If
        End If
    Next
    On Error GoTo 0
End Function

Public Function SetEditDetails(ByVal EditingMode As EditModeEnum, _
                               ByRef MEICNumber As Collection, _
                               ByRef JobNumber As Collection, _
                               ByRef ObsNumber As Collection, _
                               ByVal DataType As String, _
                               ByVal DataTypeAlias As String, _
                               ByVal DateRecordedName As String, _
                               ByVal AllowTime As Boolean, _
                               ByVal DateRequired As Boolean, _
                               ByVal HasTrackData As Boolean)
    Dim Index As Long
                           
    EditMode = EditingMode
    EditDataType = DataType
    EditDataTypeAlias = DataTypeAlias
    NameOfDateField = DateRecordedName
    NameOfShipField = "SHIP"       ' at some stage this may be variable
    DataHasTime = AllowTime
    DateIsMandatory = DateRequired
    NumToEdit = MEICNumber.Count
    MultiEdit = NumToEdit > 1
    DataHasTrack = HasTrackData
    ReDim OrigValue(1 To NumToEdit, 0 To MaxTabs * MaxRowsInTab)
    ReDim OrigLatitude(1 To NumToEdit)
    ReDim OrigLongitude(1 To NumToEdit)
    ReDim OrigDate(1 To NumToEdit)
    ReDim OrigTime(1 To NumToEdit)
    ReDim OrigTimeNull(1 To NumToEdit)
    ReDim MEICNosToEdit(1 To NumToEdit)
    ReDim EditMedsJobNos(1 To NumToEdit)
    ReDim EditMedsObsNos(1 To NumToEdit)
    
    For Index = 1 To NumToEdit
        MEICNosToEdit(Index) = MEICNumber.Item(Index)
        EditMedsJobNos(Index) = JobNumber.Item(Index)
        EditMedsObsNos(Index) = ObsNumber.Item(Index)
    Next Index
    
    SetEditDetails = (NumToEdit = JobNumber.Count) And _
                     (NumToEdit = ObsNumber.Count)
End Function

Private Sub AddToTrackButton_Click()
    Dim SQLStr As String
    Dim Results As Object
    Dim Index As Long
    Dim TrackNo As Long

    If Not CheckValidTrack() Then
        Exit Sub
    End If
    
    'add the selected track to this observation
    '(is there a generic way of telling where the track is recorded?)
    TrackAltered = True
    
    On Error GoTo AddToTrackButton_ERROR
    
    OraDatabase.BeginTrans
   
    For Index = 1 To NumToEdit
        'see if this observation has a track already
        SQLStr = "Select MEDS_TRACK_NUMBER from " & _
                 EditDataType & "_observation " & _
                 "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(Index) & " " & _
                 "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(Index)
                 
        Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)
            
        TrackNo = -1
        
        If Not IsNull(Results("MEDS_TRACK_NUMBER")) Then
            TrackNo = Results("MEDS_TRACK_NUMBER")
        End If
    
        ' update the observation with the selected track
        SQLStr = "UPDATE " & EditDataType & "_observation " & _
                 "SET MEDS_TRACK_NUMBER = " & _
                 TrackNos(TrackNumbers.ListIndex) & " " & _
                 "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(Index) & " " & _
                 "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(Index)
    
        OraDatabase.ExecuteSQL (SQLStr)
        
        ' if the previous track, is not the current track, refresh the previous
        ' track
        
        If (TrackNo > 0) And (TrackNo <> TrackNos(TrackNumbers.ListIndex)) Then
            If Not RefreshTrackGeometry(EditDataType, _
                                        EditMedsJobNos(Index), _
                                        TrackNo) Then
                OraDatabase.Rollback
                Exit Sub
            End If
        End If
    Next Index
                
    If Not RefreshTrackGeometry(EditDataType, _
                                EditMedsJobNos(1), _
                                TrackNos(TrackNumbers.ListIndex)) Then
        OraDatabase.Rollback
        Exit Sub
    End If
    
    OraDatabase.CommitTrans
    
    ' reset the data in the form; in case any is affected
    If Not PopulateValues() Then
        Exit Sub
    End If
    
    ' the remove track from obs button should now be active
    RemoveFromTrackButton.Visible = True

    Exit Sub
AddToTrackButton_ERROR:
    OraDatabase.Rollback
    If err.Number <> 32755 Then
        MsgBox "Error while Adding Track to " & _
        EditDataTypeAlias & ":" & err.Number & " " & err.description
    End If
    
End Sub

Private Function CheckValidTrack() As Boolean
    'NOTE: assumes data in the form has been written to the database
    
    Dim Index As Long
    Dim nnn As Long
    Dim value As String

    Dim OkToContinue As Boolean
    
    Dim LatS As Double
    Dim LongS As Double
    Dim DateS As Date
    Dim LatE As Double
    Dim LongE As Double
    Dim DateE As Date
    Dim Ship As String
    
    Dim Latitude As Double
    Dim Longitude As Double
    Dim SQLStr As String
    Dim Results As Object
    
    ' assume there is a problem
    CheckValidTrack = False

    ' need to have a selected track before we can add the observation to it it
    If TrackNumbers.Text = "" Then
        MsgBox "No Track number has been selected!"
        Exit Function
    End If

    ' Make sure location data on edit form has not been changed
    If LocationDecimalMode = False Then
        Call CalculateLatitude(EditLatitude, EditLatitudeDeg.Text, EditLatitudeMin.Text, EditLatitudeHemi.Text)
        Call CalculateLongitude(EditLongitude, EditLongitudeDeg.Text, EditLongitudeMin.Text, EditLongitudeHemi.Text)
    End If
    
    For Index = 1 To NumToEdit
        Latitude = getLatLong(True, Index)
        Longitude = getLatLong(False, Index)
  
        If Longitude <> OrigLongitude(Index) Or Latitude <> OrigLatitude(Index) Then
            MsgBox ("Save Changes to location of Observation before attaching to Track")
            Exit Function
        End If
    Next Index
    
    'Make sure date/time on form has not been changed
    If DateAltered Then
        MsgBox ("Save Changes to Date of Observation before attaching to Track")
        Exit Function
    End If
    
    If TimeAltered Then
        MsgBox ("Save Changes to Time of Observation before attaching to Track")
        Exit Function
    End If
    
    'Make sure that no data has been altered on the form
    For nnn = 1 To NumToEdit
        Index = 0
        While Index < ColumnName.UBound
            value = getColumnValue(nnn, Index)
            If ColumnActive(Index) And value <> OrigValue(nnn, Index) Then
                MsgBox ("Save Changes to observation data before attaching to Track")
                Exit Function
            End If
            
            Index = Index + 1
        Wend
    Next nnn
   
    ' get the data about the track
    On Error GoTo CheckValidTrack_ERROR

    SQLStr = "Select LATITUDE_START, LONGITUDE_START, DATE_RECORDED_START, " & _
             "LATITUDE_END, LONGITUDE_END, DATE_RECORDED_END,SHIP " & _
             "FROM " & EditDataType & "_TRACK " & _
             "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(1) & " " & _
             "AND MEDS_TRACK_NUMBER = " & TrackNos(TrackNumbers.ListIndex)
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    If Results.EOF Then
        MsgBox "Unexpectedly, No results returned for:" & vbNewLine & SQLStr
        Exit Function
    End If
    
    LatS = Results("LATITUDE_START")
    LongS = Results("LONGITUDE_START")
    DateS = Results("DATE_RECORDED_START")
    LatE = Results("LATITUDE_END")
    LongE = Results("LONGITUDE_END")
    DateE = Results("DATE_RECORDED_END")
    If Results("SHIP") <> "" Then
        Ship = Results("SHIP")
    Else
        Ship = ""
    End If
    
    ' check each selected observation against this track
    OkToContinue = True
    For Index = 1 To NumToEdit
        If Not CheckValidTrackObs(Index, _
                                  LatS, _
                                  LongS, _
                                  DateS, _
                                  LatE, _
                                  LongE, _
                                  DateE, _
                                  Ship) Then
            OkToContinue = False
        End If
    Next Index
 
    If Not OkToContinue Then
        Exit Function
    End If
        
    CheckValidTrack = True
  
    Exit Function
    
CheckValidTrack_ERROR:
    If err.Number <> 32755 Then
        MsgBox "Error while calling " & vbNewLine & "'" & SQLStr & "'" & _
               ":" & vbNewLine & "Error Number: " & err.Number & " " & err.description
    End If

End Function

Private Function CheckValidTrackObs(Index As Long, _
                                    LatS As Double, _
                                    LongS As Double, _
                                    DateS As Date, _
                                    LatE As Double, _
                                    LongE As Double, _
                                    DateE As Date, _
                                    Ship As String) As Boolean
    Dim DateRecorded As Date
    Dim DateRecordedIsNull As Boolean
    Dim Latitude As Double
    Dim Longitude As Double
    Dim MyShip As String
        
    Dim GotShip As Boolean
    Dim ShipSelect As String
    Dim SQLStr As String
    Dim Results As Object
    
    On Error GoTo CheckValidTrackObs_ERROR
    
    ' assume there is a problem
    CheckValidTrackObs = False
    
    ' is there a SHIP column in the data?
    
    SQLStr = "SELECT count(*) FROM all_tab_columns " & _
             "WHERE owner = '{insert-admin-user}' and " & _
             "table_name IN ('" & ColumnDataSource(0) & "','" & _
             ColumnDataSource(1) & "') AND " & _
             "upper(column_name) = upper('" & NameOfShipField & "')"
             
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    GotShip = Results("count(*)") = 1
    
    If GotShip Then
        ShipSelect = ", " & NameOfShipField
    Else
        ShipSelect = ""
    End If

    ' get the data from the database about this observation
    SQLStr = "SELECT LATITUDE, LONGITUDE, " & _
             NameOfDateField & ShipSelect & _
             " FROM " & ColumnDataSource(0) & " o," & ColumnDataSource(1) & " d, " & _
             " meds_processing_job j " & _
             "WHERE o.meds_job_number = " & EditMedsJobNos(Index) & " AND " & _
             " o.meds_observation_number = " & EditMedsObsNos(Index) & " AND " & _
             " o.meds_job_number = d.meds_job_number AND " & _
             " o.meds_observation_number = d.meds_observation_number AND " & _
             " o.meds_job_number = j.job_number "
             
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)
    
    DateRecordedIsNull = IsNull(Results(NameOfDateField))
    If Not DateRecordedIsNull Then
        DateRecorded = Results(NameOfDateField)
    End If
    
    If GotShip Then
        If IsNull(Results(NameOfShipField)) Then
            MyShip = ""
        Else
            MyShip = Results(NameOfShipField)
        End If
    End If
    
    Latitude = Results("LATITUDE")
    Longitude = Results("LONGITUDE")
    
    If Not DateRecordedIsNull Then
        If DateRecorded < DateS Or _
           DateRecorded > DateE Then
            If (MsgBox("Date/Time of Observation " & EditMedsObsNos(Index) & _
                       " (" & DateRecorded & _
                       ")" & vbNewLine & _
                       "is outside time of Track" & vbNewLine & _
                       "(" & DateS & " to " & DateE & ")" & _
                       vbNewLine & vbNewLine & _
                       "Do you want to continue?", _
                       vbYesNo + vbQuestion + vbDefaultButton2) = vbNo) Then
                    Exit Function
            End If
        End If
    End If
    
    If Latitude < Min(LatS, LatE) Or _
       Latitude > Max(LatS, LatE) Or _
       Longitude < Min(LongS, LongE) Or _
       Longitude > Max(LongS, LongE) Then
        If (MsgBox("Latitude/Longitude of Observation " & EditMedsObsNos(Index) & _
                   " (" & Latitude & ", " & Longitude & _
                   ")" & vbNewLine & _
                   "is outside range of Track" & vbNewLine & _
                   "(" & LatS & ", " & LongS & " to " & _
                   LatE & ", " & LongE & ")" & _
                   vbNewLine & vbNewLine & _
                   "Do you want to continue?", _
                   vbYesNo + vbQuestion + vbDefaultButton2) = vbNo) Then
            Exit Function
        End If
    End If
    
    If GotShip Then
        If MyShip <> Ship Then
            If (MsgBox("Ship in Observation " & EditMedsObsNos(Index) & _
                       " (" & MyShip & _
                       ")" & vbNewLine & _
                       "is different from Track (" & Ship & ")" & _
                       vbNewLine & vbNewLine & _
                       "Do you want to continue?", _
                       vbYesNo + vbQuestion + vbDefaultButton2) = vbNo) Then
                    Exit Function
            End If
       End If
    End If

    CheckValidTrackObs = True
  
    Exit Function
    
CheckValidTrackObs_ERROR:
    If err.Number <> 32755 Then
        MsgBox "Error while calling " & vbNewLine & "'" & SQLStr & "'" & _
               ":" & vbNewLine & "Error Number: " & err.Number & " " & err.description
    End If

End Function


Private Sub ColumnValue_Change(Index As Integer)
    Dim CurrentFloat As Double
    
    ' Validation only for numbers
    If ColumnDataType(Index) = "NUMBER" Then
        If ColumnDataValueLimit(Index) = 0 Then
            ' This is an integer
            Call JobTracking.ForceIntegerText(ColumnValue(Index))
        Else
            ' Floats - get format correct
            Call JobTracking.ForceFloatText(ColumnValue(Index))
            ' Get in correct range
            If ((ColumnValue(Index) = "-") Or IsNull(ColumnValue(Index)) Or _
                 (ColumnValue(Index) = "") Or (ColumnValue(Index) = "+") Or _
                 (ColumnValue(Index) = ".")) Then
                CurrentFloat = 0#
            Else
                CurrentFloat = CDbl(ColumnValue(Index).Text)
            End If
            
            If ((CurrentFloat <= -ColumnDataValueLimit(Index)) Or _
                (CurrentFloat >= ColumnDataValueLimit(Index))) Then
                If (ColumnValue(Index) < 0) Then
                    ColumnValue(Index) = -ColumnDataValueLimit(Index)
                Else
                    ColumnValue(Index) = ColumnDataValueLimit(Index)
                End If
            End If
        End If
    End If
    
    ' ignore this event if value has been set by the program - presumably it knows
    ' what it is doing!
    
    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    ' currently only want to set the DeleteCheck boxes depending on setting of
    ' ColumnValue text;
    If Not DeleteCheck(Index).Visible Then
        Exit Sub
    End If
    
    ' if this field has been cleared, set the DeleteCheck box; if it is not clear
    ' then uncheck it. Note: only change state if not already in appropriate state
    ' as the "_click" callback is only triggerd on a change of state and so the
    ' InternalSetting flag gets out of sync
    
    If ((ColumnValue(Index).Text = "") And (DeleteCheck(Index).value = Unchecked)) Then
        Dim ObsIndex As Long
        Dim AllNull As Boolean
        Dim ValueToSet As String
        ValueToSet = OrigValue(1, Index)
        AllNull = (ValueToSet = "")
        For ObsIndex = 2 To NumToEdit
            If (ValueToSet <> OrigValue(ObsIndex, Index)) Then
                ValueToSet = ""
                If AllNull And (OrigValue(ObsIndex, Index) <> "") Then
                    AllNull = False
                End If
            End If
        Next ObsIndex
        If AllNull Then
            InternalSetting = True
            DeleteCheck(Index).value = Checked
        Else
            ColumnValue(Index).Text = ValueToSet
        End If
    End If
    
    If ((ColumnValue(Index).Text <> "") And (DeleteCheck(Index).value = Checked)) Then
        InternalSetting = True
        DeleteCheck(Index).value = Unchecked
    End If
End Sub



Private Sub ColumnValue_KeyPress(Index As Integer, KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        If (Index < LastValueInTab(ColumnTab(Index))) Then
            ColumnValue(Index + 1).SetFocus
        Else
            If (NextTab(ColumnTab(Index)).Visible) Then
                NextTab(ColumnTab(Index)).SetFocus
            Else
                SaveButton.SetFocus
            End If
        End If
    End If
End Sub

Private Sub ColumnValue_LostFocus(Index As Integer)
    Dim Temp As Double
    
    On Error GoTo Reset
    
    If ColumnDataType(Index) = "NUMBER" Then
        Temp = CDbl(ColumnValue(Index))
    End If
    Exit Sub
Reset:
    ColumnValue(Index).Text = ""
End Sub

Private Sub DateDeleteCheck_Click()
    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    DateAltered = True
    
    ' if this has ticked the box, then set date and time to null
    
    If DateDeleteCheck.value = Checked Then
        If Not IsNull(EditDateRecorded) Then
            EditDateRecorded.value = Null
        End If
        
        If Not IsNull(EditTimeRecorded) Then
            EditTimeRecorded.value = Null
        End If
        
        If TimeDeleteCheck.value = Checked Then
            InternalSetting = True
            TimeDeleteCheck.value = Unchecked
        End If
    Else
        PopulateDateTime
        InternalSetting = False
    End If
    
    
End Sub

Private Sub DeleteCheck_Click(Index As Integer)

    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    ' if this has ticked the box, then clear the corresponding text box
    If DeleteCheck(Index).value = Checked Then
        If (ColumnValue(Index).Text <> "") Then
            InternalSetting = True
            ColumnValue(Index) = ""
        End If
    Else
        ' unchecked the tick box; set the text box with appropriate value
        ' either the common value, of empty if original values are different
        ' Note: if all original values are null, then the check box is not
        '       allowed to be unticked
        Dim ObsIndex As Long
        Dim AllNull As Boolean
        InternalSetting = True
        ColumnValue(Index) = OrigValue(1, Index)
        AllNull = (OrigValue(1, Index) = "")
        For ObsIndex = 2 To NumToEdit
            If (ColumnValue(Index) <> OrigValue(ObsIndex, Index)) Then
                InternalSetting = True
                ColumnValue(Index) = ""
                Exit Sub
            End If
        Next ObsIndex
        If AllNull Then
            InternalSetting = True
            DeleteCheck(Index) = Checked
        End If
    End If
    
End Sub

Private Sub EditDateRecorded_Click()
    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    DateAltered = True
    
    ' cannot allow checked time with unchecked date
    If (IsNull(EditDateRecorded) And _
        Not IsNull(EditTimeRecorded)) Then
            EditTimeRecorded = Null
    End If
    
    If Not MultiEdit Then
        Exit Sub
    End If

    If IsNull(EditDateRecorded) Then
        PopulateDateTime
        InternalSetting = False
    Else
        If DateDeleteCheck.value = Checked Then
            InternalSetting = True
            DateDeleteCheck.value = Unchecked
        End If
        PopulateTime
    End If

End Sub

Private Sub EditLatitude_Change()
    Call JobTracking.ForceFloatText(EditLatitude)
End Sub

Private Sub EditLatitude_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLongitude.SetFocus
    End If
End Sub

Private Sub EditLatitudeDeg_Change()
    Call JobTracking.ForceIntegerText(EditLatitudeDeg)
End Sub

Private Sub EditLatitudeDeg_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLatitudeMin.SetFocus
    End If
End Sub

Private Sub EditLatitudeHemi_Change()
    If Not (EditLatitudeHemi = "S" Or EditLatitudeHemi = "N") Then
        EditLatitudeHemi = ""
    End If
End Sub

Private Sub EditLatitudeHemi_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLongitudeDeg.SetFocus
    End If
End Sub

Private Sub EditLatitudeMin_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLatitudeHemi.SetFocus
    End If
End Sub

Private Sub EditLongitude_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditTabs.SetFocus
    End If
End Sub

Private Sub EditLongitudeDeg_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLongitudeMin.SetFocus
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

Private Sub EditLongitudeHemi_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditTabs.SetFocus
    End If
End Sub

Private Sub EditLongitudeMin_Change()
    Call JobTracking.ForceFloatText(EditLongitudeMin)
End Sub

Private Sub EditLongitudeMin_KeyPress(KeyAscii As Integer)
    ' convert Enter keystroke into Tab
    If KeyAscii = 13 Then
        EditLongitudeHemi.SetFocus
    End If
End Sub


Private Sub EditTimeRecorded_Click()
    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    TimeAltered = True
       
    ' do not allow time to be active, when Date is not
    If Not IsNull(EditTimeRecorded) And Not MultiEdit Then
        If IsNull(EditDateRecorded) Then
            EditTimeRecorded = Null
            Exit Sub
        End If
    End If
    
    ' that is all if not in MultiEdit mode
    
    If Not MultiEdit Then
        Exit Sub
    End If
    
        
    ' do not allow this to be enabled, if DateDeleteCheck is checked
    If (Not IsNull(EditTimeRecorded)) And _
        (DateDeleteCheck.value = Checked) Then
        EditTimeRecorded.value = Null
        Exit Sub
    End If

    
    If ((Not IsNull(EditDateRecorded) Or _
        Not IsNull(EditTimeRecorded)) And _
        (DateDeleteCheck.value = Checked)) Then
        InternalSetting = True
        DateDeleteCheck.value = Unchecked
    End If
    
    ' do not allow time to be active and TimeDeleteCheck to be set
    If (Not IsNull(EditTimeRecorded) And _
        (TimeDeleteCheck.value = Checked)) Then
        InternalSetting = True
        TimeDeleteCheck.value = Unchecked
    End If
    
    'if unchecked, then, if all the Times are null, then the TimeDeleteCheck
    ' box should be checked
    
    If IsNull(EditTimeRecorded) And _
        (TimeDeleteCheck.value = Unchecked) Then
        Dim ObsIndex As Long
        Dim AllNull As Boolean
        Dim AllSame As Boolean

        AllNull = OrigTimeNull(1)
        AllSame = (OrigTime(1) = OrigTime(2))
        For ObsIndex = 2 To NumToEdit
            If AllNull Then
                AllNull = OrigTimeNull(ObsIndex)
            End If
            If AllSame Then
                AllSame = (OrigTime(ObsIndex) = OrigTime(1))
            End If
        Next ObsIndex
        
        If AllNull Then
            InternalSetting = True
            TimeDeleteCheck.value = Checked
        Else
            If AllSame Then
'                InternalSetting = True
                EditTimeRecorded.value = OrigTime(1)
            End If
        End If
    End If

End Sub

Private Sub EditTrackButton_Click()
    Dim StartLat As Double
    Dim StartLong As Double
    Dim EndLat As Double
    Dim EndLong As Double
    Dim StartDate As String
    Dim StartTime As String
    Dim EndDate As String
    Dim EndTime As String
    Dim StartOffset As Double
    Dim EndOffset As String
    Dim Ship As String
    Dim StartDateTime As Date
    Dim EndDateTime As Date
    Dim SndSrc As String
    Dim MonType As String
    Dim PeriodOfSonar As Integer
    Dim SeaState As String
    Dim WindSpeed As String
    
    Dim SQLQuery As String
    Dim Results As Object

    ' need to have a selected track before we can edit it
    If TrackNumbers.Text = "" Then
        MsgBox "No Track number has been selected!"
        Exit Sub
    End If
    
    ' get the data for the selected track
    On Error GoTo EditTrackButton_ERROR
   
    SQLQuery = "SELECT " & _
               "LONGITUDE_START, " & _
               "LATITUDE_START, " & _
               "DATE_RECORDED_START, " & _
               "OFFSET_START, " & _
               "LONGITUDE_END, " & _
               "LATITUDE_END, " & _
               "DATE_RECORDED_END, " & _
               "OFFSET_END, " & _
               "SHIP, " & _
               "SOUND_SOURCE, " & _
               "MONITORING_TYPE, " & _
               "PERIOD_OF_SONAR, " & _
               "SEA_STATE, " & _
               "WIND_SPEED " & _
               "From " & EditDataType & "_TRACK where " & _
               "MEDS_JOB_NUMBER = " & EditMedsJobNos(1) & " and " & _
               "MEDS_TRACK_NUMBER = " & TrackNos(TrackNumbers.ListIndex)
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    If Results.EOF Then
        MsgBox "Could not find Track " & TrackNos(TrackNumbers.ListIndex) & " " & _
               "for Job Number " & EditMedsJobNos(1) & "!"
        Exit Sub
    End If
    
    StartLat = Results("LATITUDE_START")
    StartLong = Results("LONGITUDE_START")
    EndLat = Results("LATITUDE_END")
    EndLong = Results("LONGITUDE_END")
    StartOffset = Results("OFFSET_START")
    EndOffset = Results("OFFSET_END")
    If Results("SHIP") <> "" Then
        Ship = Results("SHIP")
    Else
        Ship = ""
    End If
    StartDateTime = Results("DATE_RECORDED_START")
    EndDateTime = Results("DATE_RECORDED_END")
    
    If Results("SOUND_SOURCE") <> "" Then
        SndSrc = Results("SOUND_SOURCE")
    Else
        SndSrc = ""
    End If
    MonType = Results("MONITORING_TYPE")
    If IsNull(Results("PERIOD_OF_SONAR")) Then
        PeriodOfSonar = 0
    Else
        PeriodOfSonar = Results("PERIOD_OF_SONAR")
    End If
    If IsNull(Results("SEA_STATE")) Then
        SeaState = ""
    Else
        SeaState = Results("SEA_STATE")
    End If
    If IsNull(Results("WIND_SPEED")) Then
        WindSpeed = ""
    Else
        WindSpeed = Results("WIND_SPEED")
    End If

    If Not TrackEdit.SetEditDetails(EDIT_MODE_EDIT, _
                                MEICNosToEdit(1), _
                                EditMedsJobNos(1), _
                                TrackNos(TrackNumbers.ListIndex), _
                                EditDataType, _
                                EditDataTypeAlias, _
                                StartLat, _
                                StartLong, _
                                EndLat, _
                                EndLong, _
                                FormatDateTime(StartDateTime, vbLongDate), _
                                FormatDateTime(StartDateTime, vbLongTime), _
                                FormatDateTime(EndDateTime, vbLongDate), _
                                FormatDateTime(EndDateTime, vbLongTime), _
                                StartOffset, _
                                EndOffset, _
                                Ship, _
                                SndSrc, _
                                MonType, _
                                PeriodOfSonar, _
                                SeaState, _
                                WindSpeed) Then
        Exit Sub
    End If

    TrackEdit.Show (1)
        
    ' if the TrackEdit form has been dismissed - means a track may have been deleted
    ' so recalculate the possible track numbers

    If DataAltered Then
        PopulateTrackNumbers (EditMedsJobNos(1))
        
        ' do any of the observations have one of these tracks?
        Call SelectTrack

        ' and any values that may refer to the Track
    
        If Not PopulateValues() Then
            Exit Sub
        End If
    End If
    
    DataAltered = False
    
    Exit Sub
    
EditTrackButton_ERROR:
    If err.Number <> 32755 Then
        MsgBox "Error while processing " & SQLQuery & ": " & err.Number & " " & err.description
    End If
End Sub

Private Sub ExitButton_Click()
    DataSearch.AlteredData (TrackAltered)
    Unload Me
End Sub

Private Sub SetDecimalMode(DecimalMode As Boolean)
    DecimalLabel.Visible = DecimalMode
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

Private Function LoadDataNames(DataType As String) As Boolean
    Dim SQLQuery As String
    Dim Results As Object
    Dim Index As Long
    Dim TableName As String
    
    ' Select all the table names for this DataType in the data base
    
    SQLQuery = "select distinct table_name from all_tab_columns " & _
               "where upper(table_name) like upper('" & DataType & "%')"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
  
    Index = 0
    
    While Not Results.EOF
        If Index > MaxDataSources Then
            MsgBox "More than " & MaxDataSources & " data tables for " & DataType & " data"
            LoadDataNames = False
            Exit Function
        End If
        
        TableName = UCase$(Results("table_name").value)
        
        ' Generic editing depends on there being one *_DATA and one *_OBSERVATION TABLE
        If (TableName Like "*_DATA") Or (TableName Like "*_OBSERVATION") Then
            ColumnDataSource(Index) = TableName
            Index = Index + 1
        End If
        
        Results.MoveNext
    Wend
    
    LoadDataNames = (Index = MaxDataSources)
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
        Dim Results As Object
        Dim Track As Long
        Dim PosTbl As Integer, DateTbl As Integer
        Dim MonthTbl As Integer, ArchiveTbl As Integer
        
        Call locatePosAndDateTables(PosTbl, DateTbl, MonthTbl, ArchiveTbl)
        
        OraDatabase.BeginTrans
        
        For ii = 0 To MaxDataSources - 1
            For nn = 1 To NumToEdit
                ' is this observation part of a track?
                Track = -1
                If DataHasTrack And ii = PosTbl Then
                    SQLQuery = "SELECT MEDS_TRACK_NUMBER from " & _
                               EditDataType & "_observation " & _
                               "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(nn) & " " & _
                               "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(nn)
                     
                    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

                    If Not Results.EOF Then
                        If Not IsNull(Results("MEDS_TRACK_NUMBER")) Then
                            Track = Results("MEDS_TRACK_NUMBER")
                        End If
                    End If
                    Results.Close
                End If

                SQLQuery = " DELETE FROM  " & ColumnDataSource(ii) & _
                        " WHERE meds_job_number = " & EditMedsJobNos(nn) & _
                        " AND meds_observation_number = " & EditMedsObsNos(nn)
                OraDatabase.ExecuteSQL (SQLQuery)
                
                If Track <> -1 Then
                    If Not RefreshTrackGeometry(EditDataType, _
                                               EditMedsJobNos(nn), _
                                                Track) Then
                        OraDatabase.Rollback
                        Exit Sub
                    End If
                End If
            Next nn
        Next ii
        
        OraDatabase.CommitTrans
        Unload Me
    Else
        DataSearch.AlteredData (False)
        Unload Me
    End If


End Sub


Private Function PopulateTabsFormat() As Boolean
    Dim ColumnsQuery As String
    Dim ColumnsResults As Object
    Dim Index As Long, nnn As Long, DataSourceIndex As Long
    Dim CurrentTab As Long, TabIndex As Long, FocusIndex As Long
    Dim MaxColWidth As Long, RowsInTab As Long, ShiftForMultiple As Long
    Dim NumChars As Long
    Dim Ok As Boolean
        
    On Error GoTo PopulateTabsFormat_Error
        
    ' With mutiple edit, Tick boxes are in position of ColumnValue Text boxes;
    ' ColumValue Text boxes need to be shifted, and their Maximum length adjusted.
    
    If (MultiEdit) Then
        ShiftForMultiple = ColumnValue(0).left - DeleteCheck(0).left
    Else
        ShiftForMultiple = 0
    End If
   
    MaxColWidth = ColumnValue(0).width - ShiftForMultiple
      
    For TabIndex = 0 To EditTabs.Tabs - 1
        EditTabs.TabVisible(TabIndex) = False
        FirstValueInTab(TabIndex) = -1
        LastValueInTab(TabIndex) = -1
        NextTab(TabIndex).Visible = False
        PrevTab(TabIndex).Visible = False
        TabDeleteLab(TabIndex).Caption = "All Null"
        TabDeleteLab(TabIndex).Visible = MultiEdit
    Next TabIndex

    For Index = 0 To MaxTabs * MaxRowsInTab
        ColumnActive(Index) = False
        ColumnDataSourceIndex(Index) = -1
        If (Index <= ColumnName.UBound) Then
            ColumnName(Index).Visible = False
            ColumnValue(Index).Visible = False
            DeleteCheck(Index).Visible = False
            If MultiEdit Then
                DeleteCheck(Index).left = ColumnValue(Index).left
                ColumnValue(Index).left = ColumnValue(Index).left + ShiftForMultiple
            End If
        End If
    Next Index
         
    ' Get the schema for the selected observation - the size and datatype of each attribute
    
    ' Only include data types we know how to deal with
    ' And exclude columns that we know are not to be edited (even if the user requests them)
    ColumnsQuery = "SELECT a.column_name, a.data_length, a.data_precision, a.data_scale, a.data_type, " & _
                   "a.table_name, c.tab_number, c.tab_name, c.edit_order, c.mandatory, c.constraint " & _
                   "FROM all_tab_columns a, tab_columns c " & _
                   "WHERE a.owner = '{insert-admin-user}' and " & _
                   "a.table_name IN ('" & ColumnDataSource(0) & "','" & _
                    ColumnDataSource(1) & "') AND " & _
                   "a.table_name = c.table_name and " & _
                   "a.column_name = c.column_name and " & _
                   "a.data_type IN ('VARCHAR2','CHAR','NUMBER') and " & _
                   "a.column_name NOT IN (" & NonEditableColumns() & ") " & _
                   "ORDER BY c.tab_number ASC, c.edit_order ASC"
    
    Set ColumnsResults = OraDatabase.CreateDynaset(ColumnsQuery, 0&)
        
    CurrentTab = -999999
    TabIndex = -1
    FocusIndex = ColumnValue(0).TabIndex
    Index = -1
    Do While Not ColumnsResults.EOF
        ' check for change in tab
        If ColumnsResults("tab_number") <> CurrentTab Then
            TabIndex = TabIndex + 1
            
            If TabIndex = EditTabs.Tabs Then
                Exit Do
            End If
 
            CurrentTab = ColumnsResults("tab_number")
            EditTabs.TabVisible(TabIndex) = True       ' enable the first tab
            If (ColumnsResults("tab_name") <> "") Then
                EditTabs.TabCaption(TabIndex) = ColumnsResults("tab_name")
            End If
            Index = (TabIndex * MaxRowsInTab)
            FirstValueInTab(TabIndex) = Index
            RowsInTab = 0
            ' set the focus order for the PrevTab and NextTab buttons
            FocusIndex = FocusIndex + 1
            PrevTab(TabIndex).TabIndex = FocusIndex
            If TabIndex > 0 Then
                FocusIndex = FocusIndex + 1
                NextTab(TabIndex - 1).TabIndex = FocusIndex
                NextTab(TabIndex - 1).Visible = True
                PrevTab(TabIndex).Visible = True
            End If
        Else
            Index = Index + 1
            RowsInTab = RowsInTab + 1
        End If
        
        If Index > ColumnName.UBound Then
            Exit Do
        End If
        
        If (ColumnsResults("column_name") <> "") And (RowsInTab < MaxRowsInTab) Then
            LastValueInTab(TabIndex) = Index
            ColumnTab(Index) = TabIndex
            ColumnActive(Index) = True
            DeleteCheck(Index).Visible = MultiEdit
            ColumnName(Index).Caption = ColumnsResults("column_name")
            ColumnName(Index).Visible = True
            ColumnValue(Index).Visible = True
            ColumnValue(Index).MaxLength = 0
            ColumnValue(Index).width = MaxColWidth
            'make `tab'take you to the next entry box (it was too difficult to do it in design!)
            FocusIndex = FocusIndex + 1
            ColumnValue(Index).TabIndex = FocusIndex
            If ColumnsResults("data_type") = "VARCHAR2" Or ColumnsResults("data_type") = "CHAR" Then
                NumChars = ColumnsResults("data_length")
            ElseIf ColumnsResults("data_type") = "NUMBER" Then
                NumChars = ColumnsResults("data_precision")
            Else
                NumChars = 9999
            End If
            ColumnValue(Index).MaxLength = NumChars
            ' I don't understand the calculation of the width of the text box, to get the required
            ' number of characters in it. It always seems to produce a box that is too long (which
            ' is OK) except for low numbers of characters, when it is too short. Make it long enough
            If NumChars < 5 Then
                NumChars = NumChars + 1
            End If
            If NumChars * ((ColumnValue(Index).FontSize + 3) * 10) < MaxColWidth Then
                ColumnValue(Index).width = NumChars * ((ColumnValue(Index).FontSize + 4) * 10)
            End If

            ColumnDataType(Index) = ColumnsResults("data_type")
            ColumnDataLength(Index) = ColumnsResults("data_length")
            ColumnDataValueLimit(Index) = 0#
            If Not IsNull(ColumnsResults("data_scale")) Then
                If (ColumnsResults("data_scale") > 0) Then
                    ColumnDataValueLimit(Index) = 10# ^ (ColumnsResults("data_precision") - ColumnsResults("data_scale")) _
                                                   - (10# ^ -ColumnsResults("data_scale"))
                    If ColumnDataValueLimit(Index) > 0 Then ' allow for decimal point and - sign
                        ColumnValue(Index).MaxLength = ColumnValue(Index).MaxLength + 2
                    End If
                End If
            End If
            ' set the table that this value belongs to
            For DataSourceIndex = 0 To MaxDataSources - 1
                If (ColumnDataSource(DataSourceIndex) = ColumnsResults("table_name")) Then
                    ColumnDataSourceIndex(Index) = DataSourceIndex
                End If
            Next DataSourceIndex
            If ColumnsResults("mandatory") <> "0" Then
                ColumnDataMandatory(Index) = True
            Else
                ColumnDataMandatory(Index) = False
            End If
            ' is this value constrained
            ColumnDataConstraint(Index) = ColumnsResults("constraint")
            If ColumnActive(Index) Then
                Ok = ConstraintOK(Index, True)
            End If
        End If
        ColumnsResults.MoveNext
    Loop
   
   ' check that First and Last controls in each tab are enabled ones
   ' - cannot tab to them if not!
   
   Call CheckFirstLastInTabs
   
    If TabIndex >= 0 Then
        PrevTab(TabIndex).Visible = (TabIndex > 0)  ' do not set on first tab
        FocusIndex = FocusIndex + 1
        NextTab(TabIndex).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        SaveButton.TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        ExitButton.TabIndex = FocusIndex
        
        ' Select the first tab
        EditTabs.Tab = 0
    End If
    PopulateTabsFormat = True
    Exit Function
 
PopulateTabsFormat_Error:
    MsgBox err.description
    PopulateTabsFormat = False
End Function


Private Function PopulateValues() As Boolean
    Dim SQLStr As String
    Dim Results As Object
    Dim ValIndex As Long, ObsIndex As Long
    Dim value, User As String
'    Dim startTime As Date, endTime As Date
    
    User = UCase$(UID)
    
    On Error GoTo PopulateTabsValues_Error
    
    ' use temporary table to speed up retrieval of data
    
    SQLStr = "DELETE from observation where USER_NAME = '" & User & "'"
    OraDatabase.ExecuteSQL (SQLStr)
    
'    startTime = Now
    
    OraDatabase.BeginTrans
    
    For ObsIndex = 1 To NumToEdit
        SQLStr = "Insert into observation (USER_NAME,JOB_NUMBER,OBSERVATION_NUMBER) " & _
                 "VALUES ( '" & User & "'," & EditMedsJobNos(ObsIndex) & "," & _
                 EditMedsObsNos(ObsIndex) & ")"
        OraDatabase.ExecuteSQL (SQLStr)
    Next ObsIndex
    
    OraDatabase.CommitTrans
    
'    endTime = Now
'    Debug.Print "Took " & Format(endTime - startTime, " HH.mm.ss.sss ") & _
'                " for " & NumToEdit & " rows"
    
    ' make the selection of rows
    SQLStr = "SELECT * FROM " & _
             ColumnDataSource(0) & " o," & ColumnDataSource(1) & " d, " & _
             "observation temp " & _
             "WHERE " & _
             " o.meds_observation_number = temp.observation_number AND " & _
             " o.meds_observation_number = d.meds_observation_number AND " & _
             " o.meds_job_number = temp.job_number AND " & _
             " o.meds_job_number = d.meds_job_number AND " & _
             " temp.USER_NAME = '" & User & "'"
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    ObsIndex = 0
    While Not Results.EOF
        ObsIndex = ObsIndex + 1
        
        ' have not necessarily got these back in the same order as they went in!
        EditMedsJobNos(ObsIndex) = Results("meds_job_number")
        EditMedsObsNos(ObsIndex) = Results("meds_observation_number")
        
        ' header information
        OrigLatitude(ObsIndex) = NewJob.SafeString(Results, "latitude")
        OrigLongitude(ObsIndex) = NewJob.SafeString(Results, "longitude")
        
        If ObsIndex = 1 Then
            EditLatitude.Text = OrigLatitude(ObsIndex)
            EditLongitude.Text = OrigLongitude(ObsIndex)
        Else
            If ((EditLatitude.Text <> "") And _
                (EditLatitude.Text <> OrigLatitude(ObsIndex))) Then
                EditLatitude.Text = ""
                EditLongitude.Text = ""
            End If
             If ((EditLongitude.Text <> "") And _
                (EditLongitude.Text <> OrigLongitude(ObsIndex))) Then
                EditLongitude.Text = ""
                EditLatitude.Text = ""
            End If
        End If
            
        If Not IsNull(Results(NameOfDateField)) Then
            OrigDate(ObsIndex) = Format(Results(NameOfDateField), "dd/MM/yyyy")
            OrigTime(ObsIndex) = Format(Results(NameOfDateField), "HH:mm:ss")
            OrigTimeNull(ObsIndex) = (InStr(Results(NameOfDateField), ":") = 0)
        Else
            OrigDate(ObsIndex) = 0
            OrigTime(ObsIndex) = 0
            OrigTimeNull(ObsIndex) = True
        End If
        
            
        For ValIndex = 0 To MaxTabs * MaxRowsInTab
            If ColumnActive(ValIndex) Then
                If Results(ColumnName(ValIndex).Caption) <> "" Then
                    value = Results(ColumnName(ValIndex).Caption)
                Else
                    value = ""
                End If

                OrigValue(ObsIndex, ValIndex) = value
                
                If ObsIndex = 1 Then
                    If value = "" Then
                        DeleteCheck(ValIndex).value = Checked
                    Else
                        DeleteCheck(ValIndex).value = Unchecked
                    End If
                    ColumnValue(ValIndex).Text = value
                Else
                    If ((value <> "") And _
                           (DeleteCheck(ValIndex).value = Checked)) Then
                        DeleteCheck(ValIndex).value = Unchecked
                    Else
                        If ColumnValue(ValIndex).Text <> value Then
                            ColumnValue(ValIndex).Text = ""
                        End If
                    End If
                End If
            End If
        Next ValIndex
        Results.MoveNext
    Wend
    
    ' now populate the Date/Time fields
    
    PopulateDateTime
    
    PopulateValues = True
    Exit Function
 
PopulateTabsValues_Error:
    MsgBox err.description
    PopulateValues = False
End Function

Private Sub Form_Load()
    Dim SQLQuery As String
    Dim Results As Object
    Dim NResults As Long
    Dim Index As Long
    Dim EditTypeStr As String
    Dim JobNo As Long
    
    On Error GoTo FormLoad_Error
    
    EditTypeStr = Switch(EditMode = EDIT_MODE_NEW, "New", _
                         EditMode = EDIT_MODE_EDIT, "Edit", _
                         EditMode = EDIT_MODE_COPY, "Copy", _
                         EditMode = EDIT_MODE_DELETE, "Delete")
    
    ' label the frame appropriately
    EditFrame.Caption = EditDataTypeAlias
    
    ' Dealing with Tracks?
    
    If DataHasTrack And MultiEdit Then
        JobNo = EditMedsJobNos(1)
        
        For Index = 2 To NumToEdit
            If EditMedsJobNos(Index) <> JobNo Then
                DataHasTrack = False
            End If
        Next Index
    End If
    
    If DataHasTrack Then
        EditJobNumber.Text = JobNo
    End If

    PopulateTrackNumbers (EditMedsJobNos(1))
    
    AddToTrackButton.Visible = DataHasTrack
    TrackLabel.Visible = DataHasTrack
    TrackNumbers.Visible = DataHasTrack
    EditTrackButton.Visible = DataHasTrack
    RemoveFromTrackButton.Visible = DataHasTrack
    
    ' do any of the observations have a track?
    Call SelectTrack
    
    ' Find the names of the tables that hold the data
    
    If Not LoadDataNames(EditDataType) Then
        MsgBox EditDataType & " tables in database not suitable for editing with " & _
                "this editing form"
        Unload Me
        Exit Sub
    End If
    
    ' populate the tabs in the form with the required fields
    If Not PopulateTabsFormat() Then
        Exit Sub
    End If
    
    If (MultiEdit) Then
            MultiEditLabel.Caption = _
            "Multiple " & EditTypeStr & " of " & NumToEdit & " Rows"
    End If

    ' default date and time. The date is set to 1st Jan of the
    ' current year; then any other date can overwrite this
    
    EditDateRecorded = "1/1/" & Year(Now)
    EditTimeRecorded = "00:00:00"
    EditTimeRecorded.Visible = DataHasTime
    
    EditLatitudeHemi.Clear
    EditLatitudeHemi.AddItem "N"
    EditLatitudeHemi.AddItem "S"
    EditLongitudeHemi.Clear
    EditLongitudeHemi.AddItem "W"
    EditLongitudeHemi.AddItem "E"
    LocationDecimalMode = True
   
    Call SetDecimalMode(LocationDecimalMode)
 
    ' Get existing data for this observation to populate the form with; there must be a row
    ' for this observation in each table
    
    If EditMode = EDIT_MODE_EDIT Or EditMode = EDIT_MODE_COPY Or EditMode = EDIT_MODE_DELETE Then
        SQLQuery = "SELECT count(1) FROM " & ColumnDataSource(0) & " o," & ColumnDataSource(1) & " d " & _
                    "WHERE o.meds_job_number = " & EditMedsJobNos(1) & " AND " & _
                    " o.meds_observation_number = " & EditMedsObsNos(1) & " AND " & _
                    " o.meds_observation_number = d.meds_observation_number AND " & _
                    " o.meds_job_number = d.meds_job_number"
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
        NResults = Results("count(1)")
    
        If NResults <> 1 Then
            MsgBox "Cannot find valid data"
            Exit Sub
        End If
        
        ' these fields are never editable
        EditObsNumber.Locked = True
        EditMEICNumber.Locked = True
        EditJobNumber.Locked = True
        EditJobNumber.Enabled = False
        
        If Not MultiEdit Then
            SQLQuery = "SELECT " & _
                       NameOfDateField & _
                       ", j.meic_number, d.*, o.* " & _
                       " FROM " & ColumnDataSource(0) & " o," & ColumnDataSource(1) & " d," & _
                                " meds_processing_job j " & _
                       "WHERE o.meds_job_number = " & EditMedsJobNos(1) & " AND " & _
                       " o.meds_observation_number = " & EditMedsObsNos(1) & " AND " & _
                       " o.meds_job_number = d.meds_job_number AND " & _
                       " o.meds_observation_number = d.meds_observation_number AND " & _
                       " o.meds_job_number = j.job_number "
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
            
            ' Use these results to populate the top part of the form
            For Index = 0 To MaxTabs * MaxRowsInTab
                If ColumnActive(Index) Then
                    ColumnValue(Index).Text = ""
                    If Results(ColumnName(Index).Caption) <> "" Then
                        OrigValue(1, Index) = Results(ColumnName(Index).Caption)
                        ColumnValue(Index).Text = OrigValue(1, Index)
                     End If
                End If
            Next Index
            
            If Results("meic_number") <> "" Then
                EditMEICNumber = Results("meic_number")
            End If
            EditObsNumber.Text = Results("meds_observation_number")
            EditJobNumber.Text = Results("meds_job_number")
            EditLatitude.Text = NewJob.SafeString(Results, "latitude")
            EditLongitude.Text = NewJob.SafeString(Results, "longitude")
            OrigLatitude(1) = NewJob.SafeString(Results, "latitude")
            OrigLongitude(1) = NewJob.SafeString(Results, "longitude")
            
            OrigDate(1) = Format(Now, "dd/MM/yyyy")
            OrigTime(1) = Format(0, "HH:mm:ss")
            If Not IsNull(Results(NameOfDateField)) Then
                OrigDate(1) = Format(Results(NameOfDateField), "dd/MM/yyyy")
                OrigTime(1) = Format(Results(NameOfDateField), "HH:mm:ss")
                OrigTimeNull(1) = (InStr(Results(NameOfDateField), ":") = 0)
                EditDateRecorded = OrigDate(1)
                EditTimeRecorded = OrigTime(1)
                If OrigTimeNull(1) Then
                    EditTimeRecorded.value = Null
                End If
            Else
                EditDateRecorded = OrigDate(1)     ' set the values to current date
                EditTimeRecorded = OrigTime(1)
                OrigDate(1) = 0                ' this was in fact original value
                OrigTime(1) = 0
                EditDateRecorded.value = Null ' make the user accept this
                EditTimeRecorded.value = Null ' make the user accept this
            End If
            DateDeleteCheck.Visible = False
            TimeDeleteCheck.Visible = False
            
            AddToTrackButton.Caption = "Add Observation to Selected Track"
            RemoveFromTrackButton.Caption = "Remove Observation from its Track"
         Else
            AddToTrackButton.Caption = "Add Observations to Selected Track"
            RemoveFromTrackButton.Caption = "Remove Observations from their Tracks"
            ' Multiple edit; make DeleteCheck box visible and position it
            If Not DataHasTime Then
                DateDeleteCheck.Visible = True
                DateDeleteCheck.left = EditDateRecorded.left
                EditDateRecorded.left = EditDateRecorded.left + DateDeleteCheck.width
                TimeDeleteCheck.Visible = False
            Else
                Dim extra As Double
                TimeDeleteCheck.Visible = True
                ' need to position things carefully to make them look ok
                extra = DateRecordedFrame.width - DateDeleteCheck.width - _
                        EditDateRecorded.width - TimeDeleteCheck.width - _
                        EditTimeRecorded.width
                extra = extra / 5
                DateDeleteCheck.left = extra
                EditDateRecorded.left = DateDeleteCheck.left + DateDeleteCheck.width + extra
                TimeDeleteCheck.left = EditDateRecorded.left + EditDateRecorded.width + extra
                EditTimeRecorded.left = TimeDeleteCheck.left + TimeDeleteCheck.width + extra
            End If
            ' and populate all the text fields with appropriate values
            If Not PopulateValues() Then
                Exit Sub
            End If
        End If
    Else
        ' New data - can never be MultiEdit
         SQLQuery = "SELECT job_number from meds_processing_job j " & _
                    "WHERE j.MEIC_number = " & MEICNosToEdit(1) & _
                    " and j.DATA_TYPE = '" & EditDataType & "'"
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

        EditMEICNumber.Text = MEICNosToEdit(1)
        EditMEICNumber.Locked = True
        EditObsNumber.Locked = True
        EditJobNumber.Text = NewJob.SafeString(Results, "job_number")
        EditJobNumber.Locked = True
        EditJobNumber.Enabled = False
        
        ' set current time and date as default
        EditDateRecorded = Format(Now, "dd/MM/yyyy")
        EditDateRecorded.value = Null ' make the user accept this
        ' set Midnight as default
        EditTimeRecorded = Format(0, "HH:mm:ss")
        EditTimeRecorded.value = Null ' make the user accept this
    End If
   
    If EditMode = EDIT_MODE_COPY Then
        ' Having loaded in a copy of variables we now make sure that when saved
        ' a new meds_observation_number will be allocated
        For Index = 1 To NumToEdit
            EditMedsObsNos(Index) = -1
        Next Index
        EditObsNumber.Text = ""
        EditObsNumber.Locked = True
        SaveButton.Caption = "Save New Data"
        ' need saved data to add to track,
        ' so does not make sense to enable button
        AddToTrackButton.Visible = False
    End If
    If EditMode = EDIT_MODE_EDIT Then
        SaveButton.Caption = "Save Changes"
    End If
    If EditMode = EDIT_MODE_NEW Then
        SaveButton.Caption = "Save New Data"
        ' need saved data to add to track,
        ' so does not make sense to enable button
        AddToTrackButton.Visible = False
        LocationDecimalMode = False
    
        Call SetDecimalMode(LocationDecimalMode)
    End If
    If EditMode = EDIT_MODE_DELETE Then
        SaveButton.Caption = "Delete Data"
        AddToTrackButton.Visible = False
    End If

    ' initialise setting the interaction between controls
    InternalSetting = False
    
    DataAltered = False
    
    DateAltered = False
    TimeAltered = False
    TrackAltered = False

    Exit Sub
FormLoad_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing search :" & err.Number & " " & err.description
End If
Resume Next

End Sub

Private Sub PopulateTrackNumbers(JobNo As Long)
    Dim SQLQuery As String
    Dim Results As Object
    Dim Count As Long
    Dim Msg As String
    Dim Index As Long
    
    If Not DataHasTrack Then
        Exit Sub
    End If
     
    ' add the empty string, so that the box can be cleared
    TrackNumbers.Clear
    TrackNumbers.AddItem ""
    
    If JobNo < 1 Then
        Exit Sub
    End If
    
    ' silently ignore oracle error (for example if there is no 'ship' column
    On Error GoTo PopulateTrackNumbers_ERROR
    
    SQLQuery = "SELECT count(*) from " & _
               EditDataType & "_track " & _
               "where meds_job_number = " & JobNo & _
               "order by MEDS_TRACK_NUMBER"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    ReDim TrackNos(0 To Results("count(*)"))
    Index = 0
    TrackNos(Index) = 0
 
    SQLQuery = "SELECT meds_track_number, ship, date_recorded_start from " & _
               EditDataType & "_track " & _
               "where meds_job_number = " & JobNo & _
               "order by MEDS_TRACK_NUMBER"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
      
    While Not Results.EOF
        Index = Index + 1
        TrackNos(Index) = Results("meds_track_number")
        Msg = Results("meds_track_number")
        Msg = Msg & " - " & left$(Results("ship") & Space(20), 20)
        Msg = Msg & "   " & Results("date_recorded_start")
        TrackNumbers.AddItem (Msg)
        Results.MoveNext
    Wend
    
Exit Sub

PopulateTrackNumbers_ERROR:
    If err.Number <> 32755 And err.Number <> 0 Then
        MsgBox "Error while initialising 'TrackNumbers' :" & err.Number & " " & err.description
    End If
       
End Sub

Private Sub SelectTrack()
    Dim NumObsWithTrack As Long
    Dim MedsTrackNumber As Long
    Dim DiffTrack As Boolean
    Dim Index As Long
    Dim SQLQuery As String
    Dim Results As Object
    
    On Error GoTo SelectTrack_error
    
    ' do any of the observations have a track?
    If DataHasTrack Then
        NumObsWithTrack = 0
        MedsTrackNumber = -1
        DiffTrack = False
        For Index = 1 To NumToEdit
            SQLQuery = "SELECT meds_track_number from " & _
                       EditDataType & "_observation " & _
                       "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(Index) & " " & _
                       "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(Index)
            Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
            If IsNull(Results("meds_track_number")) Then
                DiffTrack = True
            Else
                NumObsWithTrack = NumObsWithTrack + 1
                If MedsTrackNumber > 0 And _
                    MedsTrackNumber <> Results("meds_track_number") Then
                    DiffTrack = True
                Else
                    MedsTrackNumber = Results("meds_track_number")
                End If
            End If
        Next Index
        RemoveFromTrackButton.Visible = NumObsWithTrack > 0
        
        ' if the observation has a track number, select this track number
        If Not DiffTrack Then
            For Index = 1 To TrackNumbers.ListCount - 1 'remember the blank line
                If TrackNos(Index) = MedsTrackNumber Then
                    TrackNumbers.ListIndex = Index
                End If
            Next Index
        End If
    End If

Exit Sub

SelectTrack_error:
    If err.Number <> 32755 And err.Number <> 0 Then
        MsgBox "Error while selecting 'TrackNumbers' :" & err.Number & " " & err.description
    End If


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


Public Sub CalculateLatitude(EditLatitude As Textbox, Deg As Double, Min As Double, hemi As String)
    Dim Latitude As Double
    
    Latitude = Deg + Min / 60#
    
    If hemi = "S" Then
        Latitude = Latitude * -1#
    End If
    
    EditLatitude.Text = Format(Latitude, "##0.0#####")

End Sub

Public Sub CalculateLongitude(EditLongitude As Textbox, Deg As Double, Min As Double, hemi As String)
    Dim Longitude As Double
    
    Longitude = Deg + Min / 60#
    
    If hemi = "W" Then
        Longitude = Longitude * -1#
    End If
    
    EditLongitude.Text = Format(Longitude, "###0.0#####")

End Sub

Private Sub CalculateDegMin(Angle As Double, degrees As Textbox, minutes As Textbox)
    Dim TenThouMins As Long
    Dim Mins As Long
    Dim Degs As Long
    Dim ii As Integer
    
    ' Assume outputting minutes nearest to 0.0001
    
    Angle = Abs(Angle)
    
    ' round to nearest .0001 minutes
    TenThouMins = CLng(Angle * 60# * 10000#)
    ' get the minutes
    Mins = Int(TenThouMins / 10000)  ' truncate
    TenThouMins = TenThouMins - Mins * 10000
    ' and the degrees
    Degs = Int(Mins / 60)  ' truncate
    Mins = Mins - Degs * 60
    
    degrees.Text = Degs
    minutes.Text = Format(Mins, "#0") & "." & Format(TenThouMins, "0000")
    ' remove trailing zeroes
    For ii = 1 To 3
        If Right(minutes.Text, 1) = "0" Then
            minutes.Text = left(minutes.Text, Len(minutes.Text) - 1)
        End If
    Next ii
End Sub

Public Sub CalculateLatDegMinHemi(Latitude As Double, degrees As Textbox, minutes As Textbox, hemi As ComboBox)
    If Latitude >= 0 Then
        hemi.Text = "N"
    Else
        hemi.Text = "S"
    End If
    
    Call CalculateDegMin(Latitude, degrees, minutes)
 
End Sub

Public Sub CalculateLongDegMinHemi(Longitude As Double, degrees As Textbox, minutes As Textbox, hemi As ComboBox)
    If Longitude >= 0 Then
        hemi.Text = "E"
    Else
        hemi.Text = "W"
    End If
    
    Call CalculateDegMin(Longitude, degrees, minutes)
  
End Sub


Private Function NonEditableColumns() As String
    NonEditableColumns = "'LATITUDE','LONGITUDE'," & _
                         "'MEDS_JOB_NUMBER','MEDS_OBSERVATION_NUMBER'," & _
                         "'MONTH', 'ARCHIVED'"
End Function

Private Sub NextTab_Click(Index As Integer)
    ' Change focus to the first entry in next tab in EditTabs
    EditTabs.Tab = Index + 1
    If FirstValueInTab(EditTabs.Tab) >= 0 Then
        ColumnValue(FirstValueInTab(EditTabs.Tab)).SetFocus
    End If
End Sub

Private Sub PrevTab_Click(Index As Integer)
    ' Change focus to the last entry in the previous tab in EditTabs
    If (Index > 0) Then
        EditTabs.Tab = Index - 1
    End If
    If LastValueInTab(EditTabs.Tab) >= 0 Then
        ColumnValue(LastValueInTab(EditTabs.Tab)).SetFocus
    End If
End Sub

Private Sub RemoveFromTrackButton_Click()
    Dim SQLStr As String
    Dim Results As Object
    Dim Index As Long
    Dim Track As Long
    
    'remove any track from this observation
    TrackAltered = True
    
    On Error GoTo RemoveFromTrackButton_ERROR
    
    OraDatabase.BeginTrans
   
    For Index = 1 To NumToEdit
        Track = -1
        If DataHasTrack Then
            SQLStr = "SELECT MEDS_TRACK_NUMBER from " & _
                     EditDataType & "_observation " & _
                     "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(Index) & " " & _
                    "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(Index)
    
            Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

            If Not Results.EOF Then
                If Not IsNull(Results("MEDS_TRACK_NUMBER")) Then
                    Track = Results("MEDS_TRACK_NUMBER")
                End If
            End If
        
            Results.Close
        End If
        If Track <> -1 Then
            SQLStr = "UPDATE " & EditDataType & "_observation " & _
                     "SET MEDS_TRACK_NUMBER = ''" & _
                     "WHERE MEDS_JOB_NUMBER = " & EditMedsJobNos(Index) & " " & _
                    "AND MEDS_OBSERVATION_NUMBER = " & EditMedsObsNos(Index)
    
            OraDatabase.ExecuteSQL (SQLStr)
            
            If Not RefreshTrackGeometry(EditDataType, _
                                        EditMedsJobNos(Index), _
                                        Track) Then
                OraDatabase.Rollback
                
                Exit Sub
            End If
        End If
    Next Index
    
    OraDatabase.CommitTrans
    
    ' reset the data in the form; in case any is affected
    If Not PopulateValues() Then
        Exit Sub
    End If
    
    ' this button cannot be required now
    RemoveFromTrackButton.Visible = False
    
    Exit Sub
    
RemoveFromTrackButton_ERROR:
    If err.Number <> 32755 Then
        MsgBox "Error while Removing Track from " & _
        EditDataTypeAlias & " using" & vbNewLine & _
        "'" & SQLStr & "':" & vbNewLine & err.Number & " " & err.description
    End If

End Sub

Private Function RefreshTrackGeometry(DataType As String, _
                                      JobNum As Long, _
                                      TrackNum As Long) As Boolean
                                      
    Dim Results As Object
    Dim SQLStr As String
    Dim Srid As Long
    Dim LatS As Double
    Dim LongS As Double
    Dim LatE As Double
    Dim LongE As Double
    Dim GeomString As String
    Dim NumObs As Long
                                     
    RefreshTrackGeometry = True
    On Error GoTo RefreshTrackGeometry_ERROR
    
    SQLStr = "Select SRID,LATITUDE_START,LONGITUDE_START," & _
             "LATITUDE_END,LONGITUDE_END " & _
             "From USER_SDO_GEOM_METADATA," & DataType & "_TRACK " & _
             "Where TABLE_NAME = '" & DataType & "_TRACK' " & _
             "and MEDS_JOB_NUMBER = " & JobNum & " " & _
             "AND MEDS_TRACK_NUMBER = " & TrackNum
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Srid = -1
    If Not Results.EOF Then
        Srid = Results("SRID")
        LatS = Results("LATITUDE_START")
        LongS = Results("LONGITUDE_START")
        LatE = Results("LATITUDE_END")
        LongE = Results("LONGITUDE_END")
    End If
        
    Results.Close

    ' build a GeomString for a geometry
    GeomString = BuildGeomString(Srid, _
                                 DataType & "_OBSERVATION", _
                                 LongS, LatS, _
                                 LongE, LatE, _
                                 JobNum, TrackNum)
    If GeomString = "" Then
        Exit Function
    End If
    
    ' get the number of observations on this track
    
    SQLStr = "select count(*) from " & DataType & "_OBSERVATION " & _
             " where meds_track_number = " & TrackNum & _
             " and meds_job_number = " & JobNum
             
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    NumObs = 0
    If Not Results.EOF Then
        NumObs = Results("count(*)")
    End If
 
    OraDatabase.BeginTrans

    SQLStr = "UPDATE " & DataType & "_track SET " & _
             "LOCATION = " & GeomString & ", " & _
             "NUM_OBS = " & NumObs & " " & _
             "where MEDS_JOB_NUMBER = " & JobNum & " " & _
             "and MEDS_TRACK_NUMBER = " & TrackNum
    
    OraDatabase.ExecuteSQL (SQLStr)
            
    ' and refresh the envelope geometry
    
    If Not RefreshEnvelope(DataType, JobNum, TrackNum) Then
        OraDatabase.Rollback
    Else
        OraDatabase.CommitTrans
    End If
                                      
    Exit Function
    
RefreshTrackGeometry_ERROR:
    If err.Number <> 32755 Then
        MsgBox "Error while Removing Track from " & _
        EditDataTypeAlias & " using" & vbNewLine & _
        "'" & SQLStr & "':" & vbNewLine & err.Number & " " & err.description
    End If

    RefreshTrackGeometry = False
End Function

Public Function RefreshEnvelope(DataType As String, _
                                JobNumber As Long, _
                                TrackNumber As Long) As Boolean
    Dim OffsetS As Double
    Dim OffsetE As Double
    Dim Offset As Double
    Dim NumObs As Long
    
    Dim SQLStr As String
    Dim BufferStr As String
    Dim Results As Object

    RefreshEnvelope = False
    
    On Error GoTo RefreshEnvelope_Error

    ' get the offsets first
    SQLStr = "SELECT OFFSET_START,OFFSET_END,NUM_OBS " & _
             "FROM " & DataType & "_track  t " & _
             " WHERE t.MEDS_JOB_NUMBER = " & JobNumber & _
             " AND t. MEDS_TRACK_NUMBER = " & TrackNumber
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    If Results.EOF Then
        Results.Close
        Exit Function
    End If
    
    OffsetS = Results("OFFSET_START")
    OffsetE = Results("OFFSET_END")
    NumObs = Results("NUM_OBS")
    
    Results.Close
    
    Offset = (OffsetS + OffsetE) * 0.5
    
    BufferStr = "(SELECT  " & _
                "SDO_GEOM.SDO_BUFFER(location, m.diminfo, " & _
                 Offset & _
                ",'unit=naut_mile arc_tolerance=0.05') as buffer " & _
                "FROM " & DataType & "_track  t, " & _
                "user_sdo_geom_metadata m " & _
                " WHERE t.MEDS_JOB_NUMBER = " & JobNumber & _
                " AND t. MEDS_TRACK_NUMBER = " & TrackNumber & _
                " AND m.column_name = 'LOCATION' AND m.table_name = " & _
                "'" & DataType & "_TRACK')"
    
    ' generate a buffer geometry in
    SQLStr = "UPDATE " & DataType & "_ENVELOPE " & _
             "set ENVELOPE = " & BufferStr & ", " & _
             "NUM_OBS = " & NumObs & " " & _
             " WHERE MEDS_JOB_NUMBER = " & JobNumber & _
             " AND MEDS_TRACK_NUMBER = " & TrackNumber
             
    OraDatabase.ExecuteSQL (SQLStr)
    
    RefreshEnvelope = True
    
    Exit Function
    
RefreshEnvelope_Error:
    If err.Number <> 32755 Then
        MsgBox "Error while refreshing Envelope :" & err.Number & " " & err.description
    End If
    
    
End Function

Public Function BuildGeomString(Srid As Long, _
                                 ObservationTable As String, _
                                 LongS As Double, _
                                 LatS As Double, _
                                 LongE As Double, _
                                 LatE As Double, _
                                 JobNumber As Long, _
                                 TrackNumber As Long) _
                                 As String
    Dim Results As Object
    Dim SQLStr As String
    Dim GeomString As String
    
    SQLStr = "SELECT LATITUDE,LONGITUDE from " & _
             ObservationTable & " where meds_job_number = " & _
             JobNumber & " and meds_track_number = " & _
             TrackNumber & " order by DATE_RECORDED"
    
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)
    
    GeomString = "MDSYS.SDO_GEOMETRY(2002," & Srid & ",null," & _
                 "MDSYS.SDO_ELEM_INFO_ARRAY(1,2,1)," & _
                 "MDSYS.SDO_ORDINATE_ARRAY(" & _
                 LongS & "," & LatS
    
    ' add some more points here
    While Not Results.EOF
        GeomString = GeomString & "," & Results("LONGITUDE") & _
                                  "," & Results("LATITUDE")
        Results.MoveNext
    Wend

    Results.Close
                 
    GeomString = GeomString & "," & LongE & "," & LatE & "))"
 
    BuildGeomString = GeomString
    
End Function

Private Sub SaveButton_Click()
    Dim Index As Long, ii As Long, nnn As Long
    Dim PosTable As Integer, DateTable As Integer
    Dim MonthTable As Integer, ArchiveTable As Integer
    Dim UpdatedOracle As Boolean
    
    On Error GoTo SaveButton_Error
       
    If EditMode = EDIT_MODE_DELETE Then
        Call DeleteData
        Exit Sub
    End If
       
    ' Check that the observation has a complete position. This is mandatory
    If Not validLocation() Then
        Exit Sub
    End If
   
    ' Check that there is a recorded date and time. This is mandatory
    If Not validDateTime() Then
        Exit Sub
    End If
        
    ' check that all mandatory fields have some data
        
    Index = 0
    While Index < ColumnName.UBound
        If ColumnDataMandatory(Index) = True And ColumnActive(Index) Then
            If Not validMandatoryField(Index) Then
                EditTabs.Tab = ColumnTab(Index) ' show tab with missing field
                MsgBox "'" & ColumnName(Index).Caption & "' must be completed to save this data"
                EditTabs.Tab = ColumnTab(Index) ' show tab with field that fails constraint
                If ColumnValue(Index).Enabled Then
                    ColumnValue(Index).SetFocus
                End If
                Exit Sub
            End If
        End If
        Index = Index + 1
    Wend
    
    ' check constraints, when writing data
    Index = 0
    While Index < ColumnName.UBound
        If ColumnActive(Index) Then
            If Not ConstraintOK(Index, False) Then
                EditTabs.Tab = ColumnTab(Index) ' show tab with field that fails constraint
                If ColumnValue(Index).Enabled Then
                    ColumnValue(Index).SetFocus
                End If
                Exit Sub
            End If
        End If
        Index = Index + 1
    Wend
    
    ' Find which table holds the positional data, and the date data.
    
    Call locatePosAndDateTables(PosTable, DateTable, MonthTable, ArchiveTable)
 
    UpdatedOracle = False
    
    ' update/insert data in database for each selected observation
    For nnn = 1 To NumToEdit
        Dim myUpdatedOracle As Boolean
        
        myUpdatedOracle = False
        If EditMedsObsNos(nnn) <> -1 Then ' UPDATE existing row in all relevent tables; this is fairly easy
            Call UpdateData(nnn, _
                            PosTable, _
                            DateTable, _
                            MonthTable, _
                            ArchiveTable, _
                            myUpdatedOracle)
        Else ' EditMedsObsNumber = -1
            Call InsertData(nnn, _
                            PosTable, _
                            DateTable, _
                            MonthTable, _
                            ArchiveTable, _
                            myUpdatedOracle)
        End If
        If myUpdatedOracle Then
            UpdatedOracle = True
        End If
    Next nnn
    
    DataSearch.AlteredData (UpdatedOracle Or TrackAltered)
    Unload Me
 Exit Sub
 
SaveButton_Error:
    If err.Number <> 32755 Then
        MsgBox "Error while processing save :" & err.Number & " " & err.description
    End If

End Sub

Private Sub CheckFirstLastInTabs()
    Dim i As Integer
    Dim ii As Integer
    Dim Ok As Boolean
    
    For i = 0 To MaxTabs - 1
        If LastValueInTab(i) >= 0 Then
            If Not ColumnValue(LastValueInTab(i)).Enabled Then
                ii = LastValueInTab(i)
                LastValueInTab(i) = -1
                Ok = False
                While Not Ok And ii >= FirstValueInTab(i)
                    If ColumnValue(ii).Enabled Then
                        Ok = True
                        LastValueInTab(i) = ii
                    End If
                    ii = ii - 1
                Wend
            End If
        End If
        
        If FirstValueInTab(i) >= 0 Then
            ii = FirstValueInTab(i)
            FirstValueInTab(i) = -1
            If LastValueInTab(i) >= 0 Then
                Ok = False
                While Not Ok And ii <= LastValueInTab(i)
                    If ColumnValue(ii).Enabled Then
                        Ok = True
                        FirstValueInTab(i) = ii
                    End If
                    ii = ii + 1
                Wend
            End If
        End If
    Next i
End Sub


Private Function ConstraintOK(ByVal Index As Long, ByVal OnInput As Boolean)
    Dim prompt As String
    
    ' select appropriate validation. Only one  Output constrained defined at present is to check for already existing value
    Select Case ColumnDataConstraint(Index)
        Case 1
            If ValueExists(Index) Or OnInput Then
                ConstraintOK = True
            Else
                If ColumnValue(Index) <> "" Then
                    prompt = "'" & ColumnValue(Index) & "' does not exist for '" & ColumnName(Index) & _
                             "'. Do you want to add it?"
                Else
                     prompt = "NULL does not exist for '" & ColumnName(Index) & _
                             "'. Do you want to add it?"
               
                End If
                ConstraintOK = (MsgBox(prompt, vbYesNo + vbQuestion + vbDefaultButton1) = vbYes)
            End If
        Case 2
            If OnInput Then
                ColumnValue(Index).Locked = True
                DeleteCheck(Index).Enabled = False
            End If
            ConstraintOK = True
        Case 3
            If OnInput Then
                ColumnValue(Index).Enabled = False
                DeleteCheck(Index).Enabled = False
            End If
            ConstraintOK = True
        Case 4
            If OnInput Then
                ColumnValue(Index).Locked = True
                ColumnValue(Index).Enabled = False
                DeleteCheck(Index).Enabled = False
            End If
            ConstraintOK = True
        Case Else
            ConstraintOK = True
    End Select
End Function

Private Function ValueExists(ByVal Index As Long)
    
    Dim SQLQuery As String
    Dim Results As Object
    
    ' if in Multi edit mode, and DeleteCheck is not ticked and the ColumnValue is "",
    ' then the data is ok, as this means all the components are different, but as
    ' they have come from the database, they obviously all exist
    
    If (MultiEdit And (DeleteCheck(Index).value = Unchecked) And _
        (ColumnValue(Index) = "")) Then
        ValueExists = True
        Exit Function
    End If

    ' in all other circumstances, the value on the form must be checked
    If (ColumnValue(Index) <> "") Then
        If (ColumnDataType(Index) = "VARCHAR2") Then
            SQLQuery = "SELECT count(1) FROM " & ColumnDataSource(ColumnDataSourceIndex(Index)) & _
                       " WHERE " & ColumnName(Index) & " = '" & _
                       Replace(ColumnValue(Index), "'", "''") & "'"
        Else
            SQLQuery = "SELECT count(1) FROM " & ColumnDataSource(ColumnDataSourceIndex(Index)) & _
                       " WHERE " & ColumnName(Index) & " = '" & ColumnValue(Index) & "'"
        End If
    Else
        SQLQuery = "SELECT count(1) FROM " & ColumnDataSource(ColumnDataSourceIndex(Index)) & _
                   " WHERE " & ColumnName(Index) & " is NULL"
    End If
                    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    ValueExists = (Results("count(1)") > 0)
End Function

Private Function validLocation() As Boolean
    ' assume failure
    validLocation = False
    
    ' do validation
    If MultiEdit Then
        ' if either latitude or longitude is "", then need to check that there
        ' is a valid original value for all the observations
        If ((EditLatitude.Text = "") Or (EditLongitude.Text = "")) Then
            Dim ObsIndex As Long
            For ObsIndex = 1 To NumToEdit
                If ((OrigLatitude(ObsIndex) = "") And (EditLatitude.Text = "")) Then
                    MsgBox "A Latitude must be specified"
                    Exit Function
                End If
                If ((OrigLongitude(ObsIndex) = "") And (EditLongitude.Text = "")) Then
                    MsgBox "A Longitude must be specified"
                    Exit Function
                End If
            Next ObsIndex
        End If
    Else
        If LocationDecimalMode = True Then
            If EditLongitude = "" Then
                MsgBox "A longitude must be specified"
                Exit Function
            End If
            
            If EditLatitude = "" Then
                MsgBox "A Latitude must be specified"
                Exit Function
            End If
        Else
            If EditLatitudeDeg.Text = "" Or EditLongitudeDeg.Text = "" Or _
                EditLatitudeMin.Text = "" Or EditLongitudeMin.Text = "" Or _
                EditLatitudeHemi.Text = "" Or EditLongitudeHemi.Text = "" Then
                    MsgBox "All latitude and longitude fields must be specified"
                    Exit Function
            End If
            Call CalculateLatitude(EditLatitude, EditLatitudeDeg.Text, EditLatitudeMin.Text, EditLatitudeHemi.Text)
            Call CalculateLongitude(EditLongitude, EditLongitudeDeg.Text, EditLongitudeMin.Text, EditLongitudeHemi.Text)
        End If
    End If
 
    ' must have succeeded
    validLocation = True
End Function

Private Function validDateTime() As Boolean
    Dim ObsIndex As Long
    ' assume failure
    validDateTime = False
    
    If MultiEdit Then
        ' if mandatory, cannot set to Null
        If DateIsMandatory And (DateDeleteCheck.value = Checked) Then
            MsgBox "A recorded date must be supplied"
            Exit Function
        End If
        
        'if the date control is Null, then have to check that all the original dates
        ' are valid
        If DateIsMandatory And IsNull(EditDateRecorded) Then
            For ObsIndex = 1 To NumToEdit
                If OrigDate(ObsIndex) = 0 Then
                    MsgBox "A recorded date must be supplied"
                    Exit Function
                End If
            Next ObsIndex
        End If
    Else
        If DateIsMandatory And IsNull(EditDateRecorded) Then
            MsgBox "A recorded date must be supplied"
            Exit Function
        End If
    End If
        
    ' Check that there is a recorded time.
    ' This is mandatory if the time field is visible
'    If MultiEdit Then
        'if the time control is Null, then have to check that all the original dates
        ' are valid
'        If DateIsMandatory And _
'                EditTimeRecorded.Visible And _
'                IsNull(EditTimeRecorded) Then
'            Dim AllSame As Boolean
'            Dim AllNull As Boolean
'            AllNull = OrigTimeNull(1)
'            AllSame = (OrigTime(1) = OrigTime(2))
'            For ObsIndex = 2 To NumToEdit
'                If OrigTime(ObsIndex) = 0 Then
'                    MsgBox "A recorded time must be supplied"
'                    Exit Function
'                End If
'                If AllSame And (ObsIndex > 1) Then
'                    AllSame = (OrigTime(ObsIndex) <> OrigTime(ObsIndex - 1))
'                End If
'            Next ObsIndex
'            If Not AllSame Then
'                MsgBox "A recorded time must be supplied"
'                Exit Function
'            End If
'        End If

'    Else
'        If DateIsMandatory And _
'           EditTimeRecorded.Visible And _
'           IsNull(EditTimeRecorded) Then
'            MsgBox "A recorded time must be supplied"
'            Exit Function
'        End If
'    End If
    
    ' must have succeeded
    validDateTime = True
End Function

Private Function validMandatoryField(ByVal Index As Long) As Boolean
    Dim ObsIndex As Long
    ' in any case, if there is a string in the columnValue, then there is no
    ' problem
    
    If ColumnValue(Index) <> "" Then
        validMandatoryField = True
        Exit Function
    End If
    
    ' assume failure from now on
    validMandatoryField = False
    
    If Not MultiEdit Then
        Exit Function
    End If
    
    ' not valid to "DeleteCheck"
    If DeleteCheck(Index).value = Checked Then
       Exit Function
    End If
    
    ' need to check if any of the original values is empty - in that case the
    ' empty field would be written out and that is not a valid thing to do
    
    For ObsIndex = 1 To NumToEdit
        If OrigValue(ObsIndex, Index) = "" Then
            Exit Function
        End If
    Next ObsIndex
    
    ' must have succeeded
    validMandatoryField = True
End Function

Private Sub locatePosAndDateTables(ByRef PosTbl As Integer, _
                                   ByRef DateTbl As Integer, _
                                   ByRef MonthTbl As Integer, _
                                   ByRef ArchiveTbl As Integer)
    Dim ii As Integer
    Dim Query As String
    Dim Results As Object
    
    PosTbl = -1
    DateTbl = -1
    MonthTbl = -1
    ArchiveTbl = -1
    
    For ii = 0 To MaxDataSources - 1
        Query = "SELECT count(1) " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                ColumnDataSource(ii) & _
                "' AND a.column_name  = 'LOCATION'"
        Set Results = OraDatabase.CreateDynaset(Query, 0&)
                
        If (Results("count(1)") > 0) Then
            PosTbl = ii
        End If
        
        Results.Close
        
        Query = "SELECT count(1) " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                ColumnDataSource(ii) & _
                "' AND a.column_name  = '" & NameOfDateField & "'"
        Set Results = OraDatabase.CreateDynaset(Query, 0&)
                
        If (Results("count(1)") > 0) Then
            DateTbl = ii
        End If
        
        Results.Close
        
        Query = "SELECT count(1) " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                ColumnDataSource(ii) & _
                "' AND a.column_name  = 'MONTH'"
        Set Results = OraDatabase.CreateDynaset(Query, 0&)
                
        If (Results("count(1)") > 0) Then
            MonthTbl = ii
        End If
        
        Results.Close
        
        Query = "SELECT count(1) " & _
                " FROM all_tab_columns a WHERE a.owner = '{insert-admin-user}' and a.table_name = '" & _
                ColumnDataSource(ii) & _
                "' AND a.column_name  = 'ARCHIVED'"
        Set Results = OraDatabase.CreateDynaset(Query, 0&)
                
        If (Results("count(1)") > 0) Then
            ArchiveTbl = ii
        End If
        
        Results.Close
    Next ii

End Sub

Private Sub UpdateData(ByVal nnn As Long, _
                       ByVal PosTable As Integer, _
                       ByVal DateTable As Integer, _
                       ByVal MonthTable As Integer, _
                       ByVal ArchiveTable As Integer, _
                       ByRef UpdatedOracle As Boolean)
    Dim ii As Integer
    Dim Index As Integer
    Dim SQLClause(MaxDataSources) As String
    Dim SQLStr As String
    Dim LatValue As String
    Dim LongValue As String
    Dim value As String
    Dim DateValue As Date
    Dim TimeValue As Date
    Dim TimeValueNull As Boolean
    Dim DateAndTime As Date

    UpdatedOracle = False

    On Error GoTo UpdateData_Error
  
    For ii = 0 To MaxDataSources - 1
        SQLClause(ii) = ""
    Next ii

    ' update the latitude/longitude and the spatial field, if it has changed from the original values
  
    LatValue = getLatLong(True, nnn)
    LongValue = getLatLong(False, nnn)
  
    If LongValue <> OrigLongitude(nnn) Or LatValue <> OrigLatitude(nnn) Then
        SQLClause(PosTable) = "longitude = " & LongValue & "," & _
                              "latitude = " & LatValue & "," & _
                              "location=MDSYS.SDO_GEOMETRY(2001,NULL,MDSYS.SDO_POINT_TYPE(" & _
                              LongValue & "," & LatValue & ",null),null,null)"
    End If
    
    If DateTable >= 0 And needDateTime(nnn, DateValue, TimeValueNull, TimeValue) Then
        If OrigDate(nnn) <> DateValue Or _
            (OrigTime(nnn) <> TimeValue) Or (TimeValueNull <> OrigTimeNull(nnn)) Then
            If SQLClause(DateTable) <> "" Then
                SQLClause(DateTable) = SQLClause(DateTable) & ","
            End If
            If Not TimeValueNull Then
                DateAndTime = DateValue + TimeValue
                SQLClause(DateTable) = SQLClause(DateTable) & NameOfDateField & " = " & _
                                           "TO_DATE('" & DateAndTime & "','DD/MM/YYYY HH24:MI:SS')"
            Else
                SQLClause(DateTable) = SQLClause(DateTable) & NameOfDateField & " = " & _
                "TO_DATE('" & DateValue & "','DD/MM/YYYY')"
            End If
        End If
    Else
        If (OrigDate(nnn) <> 0 Or OrigTime(nnn) <> 0) Then
            SQLClause(DateTable) = SQLClause(DateTable) & NameOfDateField & " = Null "
        End If
    End If
                  
    Index = 0
    While Index < ColumnName.UBound
        value = getColumnValue(nnn, Index)
        If ColumnActive(Index) And value <> OrigValue(nnn, Index) Then
            ii = (ColumnDataSourceIndex(Index))
            If SQLClause(ii) <> "" Then SQLClause(ii) = SQLClause(ii) & ","
            If ColumnDataType(Index) = "VARCHAR2" Then
                If value <> "" Then
                    SQLClause(ii) = SQLClause(ii) & ColumnName(Index).Caption & " = '" & _
                                Replace(value, "'", "''") & "'"
                Else
                    SQLClause(ii) = SQLClause(ii) & ColumnName(Index).Caption & " = NULL"
                End If
            Else
                If value <> "" Then
                    SQLClause(ii) = SQLClause(ii) & ColumnName(Index).Caption & " = " & _
                                    value & ""
                Else
                    SQLClause(ii) = SQLClause(ii) & ColumnName(Index).Caption & " = NULL"
                End If
            End If
        End If
      
        Index = Index + 1
    Wend
      
    ' now update the database for this row with these values
    
    For ii = 0 To MaxDataSources - 1
                      
        If ii = MonthTable Then
            ' is Month in database different from one to set?
            Dim Month As String
            
            If (needMonth(nnn, Month)) Then
                If SQLClause(ii) <> "" Then
                    SQLClause(ii) = SQLClause(ii) & ","
                End If
                SQLClause(ii) = SQLClause(ii) & "month = " & Month
            End If
        End If

        If SQLClause(ii) <> "" Then
            SQLStr = " UPDATE " & ColumnDataSource(ii) & " " & _
                     " SET " & SQLClause(ii) & _
                     " WHERE meds_job_number = " & EditMedsJobNos(nnn) & _
                     " AND meds_observation_number = " & EditMedsObsNos(nnn)
                     
            If Not UpdatedOracle Then
                OraDatabase.BeginTrans
                UpdatedOracle = True
            End If
            OraDatabase.ExecuteSQL (SQLStr)
            
            ' refresh the track that this observation may be associated with
            If ii = PosTable Then
                If Not UpdateAssociatedTrack(EditDataType, _
                                             EditMedsJobNos(nnn), _
                                             EditMedsObsNos(nnn)) Then
                    OraDatabase.Rollback
                    Exit Sub
                End If
            End If
        End If
    Next ii
    
    If UpdatedOracle Then
        OraDatabase.CommitTrans
    End If
 Exit Sub
 
UpdateData_Error:
    If UpdatedOracle Then
        OraDatabase.Rollback
    End If
    If err.Number <> 32755 Then
        MsgBox "Error while processing insert :" & err.Number & " " & err.description
    End If
End Sub
Private Function UpdateAssociatedTrack(ByVal DataType As String, _
                                       ByVal JobNum As Long, _
                                       ByVal ObsNum As Long) As Boolean
    Dim Results As Object
    Dim Track As Long
    Dim SQLStr As String
                                       
    UpdateAssociatedTrack = True
    
    If Not DataHasTrack Then
        Exit Function
    End If
    
    On Error GoTo UpdateAssociatedTrack_Error
    
    SQLStr = "SELECT MEDS_TRACK_NUMBER from " & _
             DataType & "_observation " & _
             "WHERE MEDS_JOB_NUMBER = " & JobNum & " " & _
             "AND MEDS_OBSERVATION_NUMBER = " & ObsNum
                     
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)

    Track = -1
    If Not Results.EOF Then
        If Not IsNull(Results("MEDS_TRACK_NUMBER")) Then
            Track = Results("MEDS_TRACK_NUMBER")
        End If
    End If
        
    Results.Close
           
    If Track <> -1 Then
        If Not RefreshTrackGeometry(DataType, JobNum, Track) Then
            UpdateAssociatedTrack = False
            Exit Function
        End If
    End If
    
Exit Function
    
UpdateAssociatedTrack_Error:
    UpdateAssociatedTrack = False

    If err.Number <> 32755 Then
        MsgBox "Error while Updating a Track assiciated with this " & _
               "Observation :" & err.Number & " " & err.description
    End If
End Function

Private Sub InsertData(ByVal nnn As Long, _
                       ByVal PosTable As Integer, _
                       ByVal DateTable As Integer, _
                       ByVal MonthTable As Integer, _
                       ByVal ArchiveTable As Integer, _
                       ByRef UpdatedOracle As Boolean)
    Dim ii As Integer
    Dim Index As Integer
    Dim ColumnsClause(MaxDataSources) As String
    Dim ValuesClause(MaxDataSources)  As String
    Dim newObsNo As Long
    Dim SQLStr As String
    Dim Results As Object
    Dim LatValue As String
    Dim LongValue As String
    Dim value As String
    Dim DateValue As Date
    Dim TimeValue As Date
    Dim DateAndTime As Date
    Dim TimeValueNull As Boolean

    UpdatedOracle = False
        
    On Error GoTo InsertData_Error

    ' get a new MedsObsNumber; both tables should give the same result, so it does not matter
    ' which one is used
                    
    SQLStr = "Select max(meds_observation_number)+1 as new_obs from " & _
             ColumnDataSource(0) & _
             " where meds_job_number = " & EditMedsJobNos(nnn)
    Set Results = OraDatabase.CreateDynaset(SQLStr, 0&)
                
    If Results("new_obs") <> "" Then
        newObsNo = Results("new_obs")
    Else
        newObsNo = 1
    End If
    
    ' initialise with (existing) job number and (new) observation number
          
    For ii = 0 To MaxDataSources - 1
        ColumnsClause(ii) = "meds_job_number, meds_observation_number"
        ValuesClause(ii) = EditMedsJobNos(nnn) & "," & newObsNo
    Next ii

    ' set the latitude/longitude and the spatial field
    LatValue = getLatLong(True, nnn)
    LongValue = getLatLong(False, nnn)
               
    If LongValue <> "" And LatValue <> "" Then
        ' update the latitude/longitude and the spatial field
        ColumnsClause(PosTable) = ColumnsClause(PosTable) & _
                                  ", Latitude, Longitude, Location"
            
        ValuesClause(PosTable) = ValuesClause(PosTable) & "," & _
                                 LatValue & "," & _
                                 LongValue & "," & _
                                 "MDSYS.SDO_GEOMETRY(2001,NULL,MDSYS.SDO_POINT_TYPE(" & _
                                 LongValue & "," & LatValue & _
                                 ",null),null,null)"
    Else
        MsgBox "Latitude and Longitude must be supplied"
            Exit Sub
    End If

    ' set the date and time (if required)
    DateValue = 0 ' initialise for use by month later
    If DateTable >= 0 Then
        ColumnsClause(DateTable) = ColumnsClause(DateTable) & ", " & NameOfDateField
        
        If needDateTime(nnn, DateValue, TimeValueNull, TimeValue) Then
            If EditTimeRecorded.Visible And Not TimeValueNull Then
                DateAndTime = DateValue + TimeValue
                ValuesClause(DateTable) = ValuesClause(DateTable) & _
                                          ", TO_DATE('" & DateAndTime & "','DD/MM/YYYY HH24:MI:SS')"
            Else
                ValuesClause(DateTable) = ValuesClause(DateTable) & _
                                          ", TO_DATE('" & DateValue & "','DD/MM/YYYY')"
            End If
        Else
            ValuesClause(DateTable) = ValuesClause(DateTable) & ", Null"
        End If
    End If
    
    ' Auto add the "archived" and "Month" column, if they are there
    
    For ii = 0 To MaxDataSources - 1
        If ii = ArchiveTable Then
            ColumnsClause(ii) = ColumnsClause(ii) & ", archived "
            ValuesClause(ii) = ValuesClause(ii) & ",'" & Day(Now) & "/" & Month(Now) & "/" & Year(Now) & "'"
        End If
                
        If ii = MonthTable Then
            ColumnsClause(ii) = ColumnsClause(ii) & ", month "
            If DateValue <> 0 Then
                ValuesClause(ii) = ValuesClause(ii) & "," & CStr(Format(DateValue, "MM"))
            Else
                ValuesClause(ii) = ValuesClause(ii) & ", Null"
            End If
        End If
    Next ii
            
    ' add each item of data from the form to the appropriate table
           
    Index = 0
    While Index < ColumnName.UBound
        If ColumnActive(Index) Then
            ii = ColumnDataSourceIndex(Index)
            value = getColumnValue(nnn, Index)
            ColumnsClause(ii) = ColumnsClause(ii) & "," & ColumnName(Index).Caption
            If ColumnDataType(Index) = "VARCHAR2" Then
                If value <> "" Then
                    ValuesClause(ii) = ValuesClause(ii) & ",'" & Replace(value, "'", "''") & "'"
                Else
                    ValuesClause(ii) = ValuesClause(ii) & ",NULL"
                End If
            Else
                If value <> "" Then
                    ValuesClause(ii) = ValuesClause(ii) & "," & value
                Else
                    ValuesClause(ii) = ValuesClause(ii) & ",NULL"
                End If
            End If
        End If
        Index = Index + 1
    Wend
        
    ' start a database transaction
    OraDatabase.BeginTrans
            
    For ii = 0 To MaxDataSources - 1
        SQLStr = "INSERT INTO " & ColumnDataSource(ii) & " ( " & _
                 ColumnsClause(ii) & " ) VALUES ( " & ValuesClause(ii) & " ) "
            
        OraDatabase.ExecuteSQL (SQLStr)
            
        ' refresh the track that this observation may be associated with
        If ii = PosTable Then
            If Not UpdateAssociatedTrack(EditDataType, _
                                         EditMedsJobNos(nnn), _
                                         newObsNo) Then
                    OraDatabase.Rollback
                    Exit Sub
            End If
        End If
        UpdatedOracle = True
    Next ii
            
    OraDatabase.CommitTrans
 Exit Sub
 
InsertData_Error:
    If UpdatedOracle Then
        OraDatabase.Rollback
    End If
    If err.Number <> 32755 Then
        MsgBox "Error while processing insert :" & err.Number & " " & err.description
    End If
End Sub


Private Function needMonth(ByVal Index As Long, ByRef MonthToSet As String) As Boolean
    Dim mnth As Integer
    Dim testDate As Date
    
    needMonth = False
    MonthToSet = "null"
    
    ' if the field is active in the form, use the value in that
    If EditDateRecorded.Visible And Not IsNull(EditDateRecorded) Then
        testDate = EditDateRecorded
    Else
        If MultiEdit Then
            testDate = OrigDate(Index)
        Else
            testDate = 0
        End If
    End If
    
    ' if this is different from the current value, then need to set it
    
    needMonth = (testDate <> OrigDate(Index))
    If testDate <> 0 Then
        MonthToSet = CStr(Format(testDate, "MM"))
    End If
    
End Function

Private Function getLatLong(IsLat As Boolean, Index As Long) As String
    ' if the Lat/Long text box is active and is not "", then use that; otherwise
    ' use the original value
    
    'NOTE: will there ever be a is null button in multi edit?
    
    If IsLat Then
        If EditLatitude.Enabled And EditLatitude.Text <> "" Then
            getLatLong = EditLatitude.Text
        Else
            getLatLong = OrigLatitude(Index)
        End If
    Else
        If EditLongitude.Enabled And EditLongitude.Text <> "" Then
            getLatLong = EditLongitude.Text
        Else
            getLatLong = OrigLongitude(Index)
        End If
    End If
        
End Function

Private Function getColumnValue(ByVal ObsIndex As Long, ByVal ColIndex As Long) As String
    If Not MultiEdit Then
        getColumnValue = ColumnValue(ColIndex)
    Else
        ' if the DeleteCheck box is checked, then answer is NULL
        If DeleteCheck(ColIndex) Then
            getColumnValue = ""
        Else
            ' if the ColumnValue text box is not "", then use that
            getColumnValue = ColumnValue(ColIndex).Text
            
            If (getColumnValue = "") Then
                getColumnValue = OrigValue(ObsIndex, ColIndex)
            End If
        End If
    End If
End Function

Private Function needDateTime(ByVal ObsIndex As Long, _
                              ByRef DateValue As Date, _
                              ByRef TimeValueNull As Boolean, _
                              ByRef TimeValue As Date) As Boolean
    DateValue = 0
    TimeValue = 0
    TimeValueNull = False
    If Not MultiEdit Then
        needDateTime = Not IsNull(EditDateRecorded.value)
        If (needDateTime) Then
            DateValue = EditDateRecorded.value
            If Not IsNull(EditTimeRecorded.value) Then
                TimeValue = EditTimeRecorded.value
            Else
                TimeValueNull = True
            End If
        End If
    Else
        If (DateDeleteCheck.value = Checked) Then
            needDateTime = False    ' need to set to null
        Else
            If Not IsNull(EditDateRecorded.value) Then
                DateValue = EditDateRecorded.value
            Else
                DateValue = OrigDate(ObsIndex)
            End If
            If (TimeDeleteCheck.value = Checked) Then
                TimeValueNull = True
            Else
                If Not IsNull(EditTimeRecorded.value) Then
                    TimeValue = EditTimeRecorded.value
                Else
                    TimeValue = OrigTime(ObsIndex)
                    TimeValueNull = OrigTimeNull(ObsIndex)
                End If
            End If
            needDateTime = (DateValue <> 0)
        End If
    End If
End Function

Private Sub PopulateDateTime()
    Dim ObsIndex As Long
    Dim AllTimesNull As Boolean
    
    For ObsIndex = 1 To NumToEdit
       If ObsIndex = 1 Then
            If OrigDate(ObsIndex) = 0 Then
                If DateDeleteCheck.value = Unchecked Then
                    InternalSetting = True
                    DateDeleteCheck.value = Checked
                End If
                EditDateRecorded.value = Null
                EditTimeRecorded.value = Null
            Else
                If DateDeleteCheck.value = Checked Then
                    InternalSetting = True
                    DateDeleteCheck.value = Unchecked
                End If
                EditDateRecorded.value = OrigDate(ObsIndex)
                If OrigTimeNull(ObsIndex) Then
                    EditTimeRecorded.value = Null
                Else
                    EditTimeRecorded.value = OrigTime(ObsIndex)
                End If
                AllTimesNull = IsNull(EditTimeRecorded)
            End If
        Else
            If ((OrigDate(ObsIndex) <> 0) And _
                    (DateDeleteCheck.value = Checked)) Then
                InternalSetting = True
                DateDeleteCheck.value = Unchecked
            Else
                If (EditDateRecorded.value <> OrigDate(ObsIndex)) Then
                    EditDateRecorded.value = Null
                End If
                    
                If ((Not IsNull(EditTimeRecorded) And OrigTimeNull(ObsIndex)) Or _
                    (EditTimeRecorded.value <> OrigTime(ObsIndex))) Then
                    EditTimeRecorded.value = Null
                End If
            End If
            If AllTimesNull Then
                AllTimesNull = OrigTimeNull(ObsIndex)
            End If
        End If
    Next ObsIndex
    
    If AllTimesNull Then
        TimeDeleteCheck = Checked
    Else
        TimeDeleteCheck = Unchecked
    End If
    
    DateAltered = False
    TimeAltered = False
End Sub

Private Sub TimeDeleteCheck_Click()

    If InternalSetting Then
        InternalSetting = False
        Exit Sub
    End If
    
    ' flag as changed time
    TimeAltered = True
    
    ' do not allow this to be checked, if DateDeleteCheck is checked
    If (TimeDeleteCheck.value = Checked) And _
        (DateDeleteCheck.value = Checked) Then
        InternalSetting = True
        TimeDeleteCheck.value = Unchecked
        Exit Sub
    End If
    
    ' do not allow this to be checked at the same time as EditTimeRecorded
    If (TimeDeleteCheck.value = Checked) And _
        Not IsNull(EditTimeRecorded) Then
        EditTimeRecorded.value = Null
    End If
    
    ' when this is unchecked, need to refresh the EditTimeRecorded to its correct state
    If (TimeDeleteCheck.value = Unchecked) Then
        PopulateTime
    End If
End Sub

Private Sub PopulateTime()
        
    Dim ObsIndex As Long
    Dim AllSame As Boolean
    Dim AllNull As Boolean
    
    ' Only if the time control is visible
    If Not EditTimeRecorded.Visible Then
        Exit Sub
    End If
        
    AllNull = OrigTimeNull(1)
    AllSame = True
    For ObsIndex = 2 To NumToEdit
        If AllSame Then
            AllSame = (OrigTime(ObsIndex) = OrigTime(1))
        End If
        If AllNull Then
            AllNull = OrigTimeNull(ObsIndex)
        End If
    Next ObsIndex
    
    If AllNull Then
        EditTimeRecorded.value = Null
        If (TimeDeleteCheck.value <> Checked) Then
            InternalSetting = True
            TimeDeleteCheck.value = Checked
        End If
    Else
        If AllSame Then
            EditTimeRecorded.value = OrigTime(1)
        Else
            EditTimeRecorded.value = Null
        End If
    End If
End Sub



Public Sub AlteredData(Changed As Boolean)
    DataAltered = Changed
    TrackAltered = Changed
End Sub

