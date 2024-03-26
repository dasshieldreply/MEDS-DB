VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form MarineLifeSearch 
   Caption         =   "Marine Life Search"
   ClientHeight    =   9210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13575
   LinkTopic       =   "Form1"
   ScaleHeight     =   9210
   ScaleWidth      =   13575
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox VariableData 
      Height          =   285
      Index           =   1
      Left            =   9600
      TabIndex        =   215
      Top             =   840
      Width           =   1575
   End
   Begin VB.Frame ActionsFrame 
      Caption         =   "Actions"
      Height          =   735
      Left            =   0
      TabIndex        =   2
      Top             =   8400
      Width           =   13575
      Begin VB.CommandButton AddNewJobButton 
         Caption         =   "Add Data"
         Height          =   375
         Left            =   120
         TabIndex        =   209
         Top             =   240
         Width           =   2175
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit"
         Height          =   375
         Left            =   11520
         TabIndex        =   192
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame SearchFrame 
      Caption         =   "Search"
      Height          =   2055
      Left            =   0
      TabIndex        =   1
      Top             =   6360
      Width           =   13575
      Begin VB.ComboBox MEICNumberSearch 
         Height          =   315
         Left            =   120
         TabIndex        =   210
         Top             =   480
         Width           =   1095
      End
      Begin VB.Frame Frame2 
         Caption         =   "Order By"
         Height          =   1215
         Left            =   11160
         TabIndex        =   189
         Top             =   360
         Width           =   2295
         Begin VB.ComboBox OrderDirection 
            Height          =   315
            Left            =   120
            TabIndex        =   191
            Text            =   "DESC"
            Top             =   720
            Width           =   855
         End
         Begin VB.ComboBox OrderBy 
            Height          =   315
            Left            =   120
            TabIndex        =   190
            Top             =   240
            Width           =   2055
         End
      End
      Begin VB.Frame DateSearchFrame 
         Caption         =   "Date Recorded"
         Height          =   1815
         Left            =   8400
         TabIndex        =   186
         Top             =   120
         Width           =   2655
         Begin MSComCtl2.DTPicker SearchDateFrom 
            Height          =   375
            Left            =   240
            TabIndex        =   211
            Top             =   480
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   661
            _Version        =   393216
            CheckBox        =   -1  'True
            Format          =   16449536
            CurrentDate     =   38495
         End
         Begin VB.Frame Frame1 
            Caption         =   "To"
            Height          =   735
            Left            =   120
            TabIndex        =   188
            Top             =   960
            Width           =   2295
            Begin MSComCtl2.DTPicker SearchDateTo 
               Height          =   375
               Left            =   120
               TabIndex        =   212
               Top             =   240
               Width           =   2055
               _ExtentX        =   3625
               _ExtentY        =   661
               _Version        =   393216
               CheckBox        =   -1  'True
               Format          =   16449536
               CurrentDate     =   38495
            End
         End
         Begin VB.Frame FromDateFrame 
            Caption         =   "From"
            Height          =   735
            Left            =   120
            TabIndex        =   187
            Top             =   240
            Width           =   2295
         End
      End
      Begin VB.ComboBox ShipSearch 
         Height          =   315
         Left            =   6000
         TabIndex        =   184
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox ToLongitude 
         Height          =   285
         Left            =   5280
         TabIndex        =   182
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox FromLongitude 
         Height          =   285
         Left            =   3840
         TabIndex        =   181
         Top             =   840
         Width           =   615
      End
      Begin VB.TextBox ToLatitude 
         Height          =   285
         Left            =   4560
         TabIndex        =   180
         Top             =   360
         Width           =   615
      End
      Begin VB.TextBox FromLatitude 
         Height          =   285
         Left            =   4560
         TabIndex        =   178
         Top             =   1320
         Width           =   615
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   375
         Left            =   1320
         TabIndex        =   177
         Top             =   1080
         Width           =   975
      End
      Begin VB.CommandButton SearchButton 
         Caption         =   "Search"
         Height          =   375
         Left            =   120
         TabIndex        =   176
         Top             =   1080
         Width           =   1095
      End
      Begin VB.ComboBox DataTypeSearch 
         Height          =   315
         Left            =   2400
         TabIndex        =   175
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox ObsNumberSearch 
         Height          =   285
         Left            =   1320
         TabIndex        =   173
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label10 
         Caption         =   "East"
         Height          =   255
         Left            =   5280
         TabIndex        =   231
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label9 
         Caption         =   "South"
         Height          =   255
         Left            =   4560
         TabIndex        =   230
         Top             =   1680
         Width           =   615
      End
      Begin VB.Label Label8 
         Caption         =   "Ship"
         Height          =   255
         Left            =   6000
         TabIndex        =   185
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label7 
         Caption         =   "West"
         Height          =   255
         Left            =   3840
         TabIndex        =   183
         Top             =   600
         Width           =   735
      End
      Begin VB.Line Line2 
         X1              =   4440
         X2              =   5280
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line1 
         X1              =   4800
         X2              =   4800
         Y1              =   600
         Y2              =   1320
      End
      Begin VB.Label Label6 
         Caption         =   "North"
         Height          =   255
         Left            =   4560
         TabIndex        =   179
         Top             =   120
         Width           =   735
      End
      Begin VB.Label Label5 
         Caption         =   "Data Type"
         Height          =   255
         Left            =   2520
         TabIndex        =   174
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "Obs Number"
         Height          =   255
         Left            =   1320
         TabIndex        =   172
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label3 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   120
         TabIndex        =   171
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame ResultsFrame 
      Caption         =   "Search Results"
      Height          =   6375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13575
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   15
         Left            =   9600
         TabIndex        =   229
         Top             =   5880
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   14
         Left            =   9600
         TabIndex        =   228
         Top             =   5520
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   13
         Left            =   9600
         TabIndex        =   227
         Top             =   5160
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   12
         Left            =   9600
         TabIndex        =   226
         Top             =   4800
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   11
         Left            =   9600
         TabIndex        =   225
         Top             =   4440
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   10
         Left            =   9600
         TabIndex        =   224
         Top             =   4080
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   9
         Left            =   9600
         TabIndex        =   223
         Top             =   3720
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   8
         Left            =   9600
         TabIndex        =   222
         Top             =   3360
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   7
         Left            =   9600
         TabIndex        =   221
         Top             =   3000
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   6
         Left            =   9600
         TabIndex        =   220
         Top             =   2640
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   5
         Left            =   9600
         TabIndex        =   219
         Top             =   2280
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   4
         Left            =   9600
         TabIndex        =   218
         Top             =   1920
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   3
         Left            =   9600
         TabIndex        =   217
         Top             =   1560
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   2
         Left            =   9600
         TabIndex        =   216
         Top             =   1200
         Width           =   1575
      End
      Begin VB.TextBox VariableData 
         Height          =   285
         Index           =   0
         Left            =   9600
         TabIndex        =   213
         Top             =   480
         Width           =   1575
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   15
         Left            =   10680
         TabIndex        =   208
         Top             =   5880
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   14
         Left            =   10680
         TabIndex        =   207
         Top             =   5520
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   13
         Left            =   10680
         TabIndex        =   206
         Top             =   5160
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   12
         Left            =   10680
         TabIndex        =   205
         Top             =   4800
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   11
         Left            =   10680
         TabIndex        =   204
         Top             =   4440
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   10
         Left            =   10680
         TabIndex        =   203
         Top             =   4080
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   9
         Left            =   10680
         TabIndex        =   202
         Top             =   3720
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   8
         Left            =   10680
         TabIndex        =   201
         Top             =   3360
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   7
         Left            =   10680
         TabIndex        =   200
         Top             =   3000
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   6
         Left            =   10680
         TabIndex        =   199
         Top             =   2640
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   5
         Left            =   10680
         TabIndex        =   198
         Top             =   2280
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   4
         Left            =   10680
         TabIndex        =   197
         Top             =   1920
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   3
         Left            =   10680
         TabIndex        =   196
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   2
         Left            =   10680
         TabIndex        =   195
         Top             =   1200
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   1
         Left            =   10680
         TabIndex        =   194
         Top             =   840
         Width           =   495
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   0
         Left            =   10680
         TabIndex        =   193
         Top             =   480
         Width           =   495
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   15
         Left            =   12480
         TabIndex        =   170
         Top             =   5880
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   14
         Left            =   12480
         TabIndex        =   169
         Top             =   5520
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   13
         Left            =   12480
         TabIndex        =   168
         Top             =   5160
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   12
         Left            =   12480
         TabIndex        =   167
         Top             =   4800
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   11
         Left            =   12480
         TabIndex        =   166
         Top             =   4440
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   10
         Left            =   12480
         TabIndex        =   165
         Top             =   4080
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   9
         Left            =   12480
         TabIndex        =   164
         Top             =   3720
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   8
         Left            =   12480
         TabIndex        =   163
         Top             =   3360
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   7
         Left            =   12480
         TabIndex        =   162
         Top             =   3000
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   6
         Left            =   12480
         TabIndex        =   161
         Top             =   2640
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   5
         Left            =   12480
         TabIndex        =   160
         Top             =   2280
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   4
         Left            =   12480
         TabIndex        =   159
         Top             =   1920
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   3
         Left            =   12480
         TabIndex        =   158
         Top             =   1560
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   2
         Left            =   12480
         TabIndex        =   157
         Top             =   1200
         Width           =   615
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   1
         Left            =   12480
         TabIndex        =   156
         Top             =   840
         Width           =   615
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   15
         Left            =   11880
         TabIndex        =   155
         Top             =   5880
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   14
         Left            =   11880
         TabIndex        =   154
         Top             =   5520
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   13
         Left            =   11880
         TabIndex        =   153
         Top             =   5160
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   12
         Left            =   11880
         TabIndex        =   152
         Top             =   4800
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   11
         Left            =   11880
         TabIndex        =   151
         Top             =   4440
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   10
         Left            =   11880
         TabIndex        =   150
         Top             =   4080
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   9
         Left            =   11880
         TabIndex        =   149
         Top             =   3720
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   8
         Left            =   11880
         TabIndex        =   148
         Top             =   3360
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   7
         Left            =   11880
         TabIndex        =   147
         Top             =   3000
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   6
         Left            =   11880
         TabIndex        =   146
         Top             =   2640
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   5
         Left            =   11880
         TabIndex        =   145
         Top             =   2280
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   4
         Left            =   11880
         TabIndex        =   144
         Top             =   1920
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   3
         Left            =   11880
         TabIndex        =   143
         Top             =   1560
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   2
         Left            =   11880
         TabIndex        =   142
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   1
         Left            =   11880
         TabIndex        =   141
         Top             =   840
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   15
         Left            =   11280
         TabIndex        =   140
         Top             =   5880
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   14
         Left            =   11280
         TabIndex        =   139
         Top             =   5520
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   13
         Left            =   11280
         TabIndex        =   138
         Top             =   5160
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   12
         Left            =   11280
         TabIndex        =   137
         Top             =   4800
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   11
         Left            =   11280
         TabIndex        =   136
         Top             =   4440
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   10
         Left            =   11280
         TabIndex        =   135
         Top             =   4080
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   9
         Left            =   11280
         TabIndex        =   134
         Top             =   3720
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   8
         Left            =   11280
         TabIndex        =   133
         Top             =   3360
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   7
         Left            =   11280
         TabIndex        =   132
         Top             =   3000
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   6
         Left            =   11280
         TabIndex        =   131
         Top             =   2640
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   5
         Left            =   11280
         TabIndex        =   130
         Top             =   2280
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   4
         Left            =   11280
         TabIndex        =   129
         Top             =   1920
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   3
         Left            =   11280
         TabIndex        =   128
         Top             =   1560
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   2
         Left            =   11280
         TabIndex        =   127
         Top             =   1200
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   1
         Left            =   11280
         TabIndex        =   126
         Top             =   840
         Width           =   495
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   0
         Left            =   12480
         TabIndex        =   125
         Top             =   480
         Width           =   615
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   0
         Left            =   11880
         TabIndex        =   124
         Top             =   480
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   0
         Left            =   11280
         TabIndex        =   123
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   15
         Left            =   8400
         TabIndex        =   122
         Top             =   5880
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   14
         Left            =   8400
         TabIndex        =   121
         Top             =   5520
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   13
         Left            =   8400
         TabIndex        =   120
         Top             =   5160
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   12
         Left            =   8400
         TabIndex        =   119
         Top             =   4800
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   11
         Left            =   8400
         TabIndex        =   118
         Top             =   4440
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   10
         Left            =   8400
         TabIndex        =   117
         Top             =   4080
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   9
         Left            =   8400
         TabIndex        =   116
         Top             =   3720
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   8
         Left            =   8400
         TabIndex        =   115
         Top             =   3360
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   7
         Left            =   8400
         TabIndex        =   114
         Top             =   3000
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   6
         Left            =   8400
         TabIndex        =   113
         Top             =   2640
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   5
         Left            =   8400
         TabIndex        =   112
         Top             =   2280
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   4
         Left            =   8400
         TabIndex        =   111
         Top             =   1920
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   3
         Left            =   8400
         TabIndex        =   110
         Top             =   1560
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   2
         Left            =   8400
         TabIndex        =   109
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   1
         Left            =   8400
         TabIndex        =   108
         Top             =   840
         Width           =   1095
      End
      Begin VB.TextBox DateRecorded 
         Height          =   285
         Index           =   0
         Left            =   8400
         TabIndex        =   107
         Top             =   480
         Width           =   1095
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   15
         Left            =   6000
         TabIndex        =   105
         Top             =   5880
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   14
         Left            =   6000
         TabIndex        =   104
         Top             =   5520
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   13
         Left            =   6000
         TabIndex        =   103
         Top             =   5160
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   12
         Left            =   6000
         TabIndex        =   102
         Top             =   4800
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   11
         Left            =   6000
         TabIndex        =   101
         Top             =   4440
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   10
         Left            =   6000
         TabIndex        =   100
         Top             =   4080
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   9
         Left            =   6000
         TabIndex        =   99
         Top             =   3720
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   8
         Left            =   6000
         TabIndex        =   98
         Top             =   3360
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   7
         Left            =   6000
         TabIndex        =   97
         Top             =   3000
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   6
         Left            =   6000
         TabIndex        =   96
         Top             =   2640
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   5
         Left            =   6000
         TabIndex        =   95
         Top             =   2280
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   4
         Left            =   6000
         TabIndex        =   94
         Top             =   1920
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   3
         Left            =   6000
         TabIndex        =   93
         Top             =   1560
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   2
         Left            =   6000
         TabIndex        =   92
         Top             =   1200
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   1
         Left            =   6000
         TabIndex        =   91
         Top             =   840
         Width           =   2295
      End
      Begin VB.TextBox Ship 
         Height          =   285
         Index           =   0
         Left            =   6000
         TabIndex        =   90
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   15
         Left            =   4920
         TabIndex        =   88
         Top             =   5880
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   14
         Left            =   4920
         TabIndex        =   87
         Top             =   5520
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   13
         Left            =   4920
         TabIndex        =   86
         Top             =   5160
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   12
         Left            =   4920
         TabIndex        =   85
         Top             =   4800
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   11
         Left            =   4920
         TabIndex        =   84
         Top             =   4440
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   10
         Left            =   4920
         TabIndex        =   83
         Top             =   4080
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   9
         Left            =   4920
         TabIndex        =   82
         Top             =   3720
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   8
         Left            =   4920
         TabIndex        =   81
         Top             =   3360
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   7
         Left            =   4920
         TabIndex        =   80
         Top             =   3000
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   6
         Left            =   4920
         TabIndex        =   79
         Top             =   2640
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   5
         Left            =   4920
         TabIndex        =   78
         Top             =   2280
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   4
         Left            =   4920
         TabIndex        =   77
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   3
         Left            =   4920
         TabIndex        =   76
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   2
         Left            =   4920
         TabIndex        =   75
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   1
         Left            =   4920
         TabIndex        =   74
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   0
         Left            =   4920
         TabIndex        =   73
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   15
         Left            =   3840
         TabIndex        =   71
         Top             =   5880
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   14
         Left            =   3840
         TabIndex        =   70
         Top             =   5520
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   13
         Left            =   3840
         TabIndex        =   69
         Top             =   5160
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   12
         Left            =   3840
         TabIndex        =   68
         Top             =   4800
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   11
         Left            =   3840
         TabIndex        =   67
         Top             =   4440
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   10
         Left            =   3840
         TabIndex        =   66
         Top             =   4080
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   9
         Left            =   3840
         TabIndex        =   65
         Top             =   3720
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   8
         Left            =   3840
         TabIndex        =   64
         Top             =   3360
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   7
         Left            =   3840
         TabIndex        =   63
         Top             =   3000
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   6
         Left            =   3840
         TabIndex        =   62
         Top             =   2640
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   5
         Left            =   3840
         TabIndex        =   61
         Top             =   2280
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   4
         Left            =   3840
         TabIndex        =   60
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   3
         Left            =   3840
         TabIndex        =   59
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   2
         Left            =   3840
         TabIndex        =   58
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   1
         Left            =   3840
         TabIndex        =   57
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   0
         Left            =   3840
         TabIndex        =   56
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   15
         Left            =   2400
         TabIndex        =   54
         Top             =   5880
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   14
         Left            =   2400
         TabIndex        =   53
         Top             =   5520
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   13
         Left            =   2400
         TabIndex        =   52
         Top             =   5160
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   12
         Left            =   2400
         TabIndex        =   51
         Top             =   4800
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   11
         Left            =   2400
         TabIndex        =   50
         Top             =   4440
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   10
         Left            =   2400
         TabIndex        =   49
         Top             =   4080
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   9
         Left            =   2400
         TabIndex        =   48
         Top             =   3720
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   8
         Left            =   2400
         TabIndex        =   47
         Top             =   3360
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   7
         Left            =   2400
         TabIndex        =   46
         Top             =   3000
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   6
         Left            =   2400
         TabIndex        =   45
         Top             =   2640
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   5
         Left            =   2400
         TabIndex        =   44
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   4
         Left            =   2400
         TabIndex        =   43
         Top             =   1920
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   3
         Left            =   2400
         TabIndex        =   42
         Top             =   1560
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   2
         Left            =   2400
         TabIndex        =   41
         Top             =   1200
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   1
         Left            =   2400
         TabIndex        =   40
         Top             =   840
         Width           =   1335
      End
      Begin VB.TextBox DataType 
         Height          =   285
         Index           =   0
         Left            =   2400
         TabIndex        =   39
         Top             =   480
         Width           =   1335
      End
      Begin VB.VScrollBar VScroll 
         Height          =   6015
         Left            =   13200
         TabIndex        =   37
         Top             =   240
         Width           =   255
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   15
         Left            =   1320
         TabIndex        =   36
         Top             =   5880
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   14
         Left            =   1320
         TabIndex        =   35
         Top             =   5520
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   13
         Left            =   1320
         TabIndex        =   34
         Top             =   5160
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   12
         Left            =   1320
         TabIndex        =   33
         Top             =   4800
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   11
         Left            =   1320
         TabIndex        =   32
         Top             =   4440
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   10
         Left            =   1320
         TabIndex        =   31
         Top             =   4080
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   9
         Left            =   1320
         TabIndex        =   30
         Top             =   3720
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   8
         Left            =   1320
         TabIndex        =   29
         Top             =   3360
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   7
         Left            =   1320
         TabIndex        =   28
         Top             =   3000
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   6
         Left            =   1320
         TabIndex        =   27
         Top             =   2640
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   5
         Left            =   1320
         TabIndex        =   26
         Top             =   2280
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   4
         Left            =   1320
         TabIndex        =   25
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   3
         Left            =   1320
         TabIndex        =   24
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   2
         Left            =   1320
         TabIndex        =   23
         Top             =   1200
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   1
         Left            =   1320
         TabIndex        =   22
         Top             =   840
         Width           =   975
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   0
         Left            =   1320
         TabIndex        =   21
         Top             =   480
         Width           =   975
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   15
         Left            =   120
         TabIndex        =   19
         Top             =   5880
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   14
         Left            =   120
         TabIndex        =   18
         Top             =   5520
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   13
         Left            =   120
         TabIndex        =   17
         Top             =   5160
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   12
         Left            =   120
         TabIndex        =   16
         Top             =   4800
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   11
         Left            =   120
         TabIndex        =   15
         Top             =   4440
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   10
         Left            =   120
         TabIndex        =   14
         Top             =   4080
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   9
         Left            =   120
         TabIndex        =   13
         Top             =   3720
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   8
         Left            =   120
         TabIndex        =   12
         Top             =   3360
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   7
         Left            =   120
         TabIndex        =   11
         Top             =   3000
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   6
         Left            =   120
         TabIndex        =   10
         Top             =   2640
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   5
         Left            =   120
         TabIndex        =   9
         Top             =   2280
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   4
         Left            =   120
         TabIndex        =   8
         Top             =   1920
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   3
         Left            =   120
         TabIndex        =   7
         Top             =   1560
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   2
         Left            =   120
         TabIndex        =   6
         Top             =   1200
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   1
         Left            =   120
         TabIndex        =   5
         Top             =   840
         Width           =   1095
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label VariableLabel 
         Caption         =   "Variable"
         Height          =   255
         Left            =   9600
         TabIndex        =   214
         Top             =   240
         Width           =   1575
      End
      Begin VB.Label DateRecordedLabel 
         Caption         =   "Date Recorded"
         Height          =   255
         Left            =   8400
         TabIndex        =   106
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label ShipLabel 
         Caption         =   "Ship"
         Height          =   255
         Left            =   6000
         TabIndex        =   89
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "Longitude"
         Height          =   255
         Left            =   4920
         TabIndex        =   72
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "Latitude"
         Height          =   255
         Left            =   3840
         TabIndex        =   55
         Top             =   240
         Width           =   615
      End
      Begin VB.Label DataTypeLabel 
         Caption         =   "Data Type"
         Height          =   255
         Left            =   2400
         TabIndex        =   38
         Top             =   240
         Width           =   855
      End
      Begin VB.Label ObsNumberLabel 
         Caption         =   "Obs Number"
         Height          =   255
         Left            =   1320
         TabIndex        =   20
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label MEICNumberLabel 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   1095
      End
   End
End
Attribute VB_Name = "MarineLifeSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim CurrentQuery As String
Dim NumberOfResults As Long

Public Function VariableDataColumnName(ByVal DataType As String) As String
    Dim SQLQuery As String
    Dim Results As Object
    
    SQLQuery = "SELECT variable_column_name FROM mlo_data_type WHERE data_type = '" & DataType & "'"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    
    If Not Results.EOF Then
        VariableDataColumnName = Results("variable_column_name")
    Else
        VariableDataColumnName = "meds_job_number"
    End If
    
End Function

Public Function ShipColumnName(ByVal DataType As String) As String
    If DataType = "BIOLUMINESCENCE" Then
        ShipColumnName = "Vessel"
    Else
        ShipColumnName = "Ship"
    End If
End Function

Public Function DateRecordedName(ByVal DataType As String) As String
    If DataType = "BIOLUMINESCENCE" Then
        DateRecordedName = "DateTime"
    Else
        DateRecordedName = "date_recorded"
    End If
End Function

Public Function ObservationTable(ByVal DataType As String) As String

    If DataType = "SECCHI" Then
        ObservationTable = DataType & "_DISK_OBSERVATION"
    ElseIf DataType = "BIOLUMINESCENCE" Then
        ObservationTable = DataType & "_OBSERVATION"
    Else
        ObservationTable = "MLO_" & DataType & "_OBSERVATION"
    End If
    
End Function

Public Function DataTable(ByVal DataType As String) As String

    If DataType = "SECCHI" Then
        DataTable = DataType & "_DISK_DATA"
    ElseIf DataType = "BIOLUMINESCENCE" Then
        DataTable = DataType & "_DATA"
    Else
        DataTable = "MLO_" & DataType & "_DATA"
    End If
    
End Function

Public Sub InitialiseDataType(ByRef DataType As ComboBox)

    Dim SQLQuery As String
    Dim Results As Object

    DataType.Clear
    
    SQLQuery = "Select Data_Type from MLO_DATA_TYPE order by data_type"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("Data_Type") <> "" Then
            DataType.AddItem Results("Data_Type")
            DataType.Text = Results("Data_Type")
        End If
        Results.MoveNext
    Wend
    
End Sub

Private Sub InitialiseOrderBy(ByRef OrderBy As ComboBox)

    OrderBy.Clear
    
    OrderBy.AddItem "j.meic_number"
    OrderBy.AddItem "o.meds_job_number"
    OrderBy.AddItem "o.meds_observation_number"
    OrderBy.AddItem "o." & DateRecordedName(DataTypeSearch.Text)
    OrderBy.AddItem "o.latitude"
    OrderBy.AddItem "o.longitude"
    OrderBy.AddItem "d." & ShipColumnName(DataTypeSearch.Text)
        
    OrderBy.Text = "o.meds_observation_number"
    
End Sub

Private Sub InitialiseShip(ByRef box As ComboBox, ByVal DataTypeStr As String)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    
    SQLQuery = "Select distinct " & ShipColumnName(DataTypeStr) & " from " _
             & DataTable(DataTypeStr) & " order by " & ShipColumnName(DataTypeStr)
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results(ShipColumnName(DataTypeStr)) <> "" Then
            box.AddItem Results(ShipColumnName(DataTypeStr))
        End If
        Results.MoveNext
    Wend
    
    ShipLabel.Caption = ShipColumnName(DataTypeStr)
    
End Sub


' Initialise the set of possible MEIC numbers which are possible for the
' chosen data type.
Public Sub InitialiseMeicNumber(ByRef box As ComboBox, ByVal DataTypeStr As String)

    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    SQLQuery = "Select distinct meic_number from meds_processing_job j," & ObservationTable(DataTypeStr) & _
               " o where j.job_number = o.meds_job_number order by meic_number"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            box.AddItem Results("meic_number")
        End If
        Results.MoveNext
    Wend
    
End Sub

Private Sub AddNewJobButton_Click()
    If MEICNumberSearch.Text <> "" Then
        MarineLifeNewJob.MEICNumber = MEICNumberSearch.Text
        Call MarineLifeNewJob.MEICNumber_Click
    End If
    MarineLifeNewJob.Show
End Sub

Private Sub CopyButton_Click(Index As Integer)
    Dim LongJobNo As Long
    Dim LongObsNo  As Long
    Dim LongMEICNumber As Long
    
    LongJobNo = MedsJobNumber(Index).Text
    LongObsNo = ObsNumber(Index).Text
    LongMEICNumber = -1   ' indicates null
    
    If MEICNumber(Index).Text <> "" Then
        LongMEICNumber = MEICNumber(Index).Text
    End If

    Call MarineLifeEdit.SetEditDetails(EDIT_MODE_COPY, LongMEICNumber, LongJobNo, LongObsNo, DataTypeSearch.Text)

    MarineLifeEdit.Show
End Sub

Private Sub DataTypeSearch_Click()
    Call InitialiseShip(ShipSearch, DataTypeSearch.Text)
    Call InitialiseMeicNumber(MEICNumberSearch, DataTypeSearch.Text)
    Call InitialiseOrderBy(OrderBy)
End Sub

Private Sub DeleteButton_Click(Index As Integer)
    Dim LongJobNo As Long
    Dim LongObsNo  As Long
    Dim LongMEICNumber As Long
    
    LongJobNo = MedsJobNumber(Index).Text
    LongObsNo = ObsNumber(Index).Text
    LongMEICNumber = -1   ' indicates null
    
    If MEICNumber(Index).Text <> "" Then
        LongMEICNumber = MEICNumber(Index).Text
    End If

    Call MarineLifeEdit.SetEditDetails(EDIT_MODE_DELETE, LongMEICNumber, LongJobNo, LongObsNo, DataTypeSearch.Text)

    MarineLifeEdit.Show

End Sub

Private Sub EditButton_Click(Index As Integer)
    Dim LongJobNo As Long
    Dim LongObsNo  As Long
    Dim LongMEICNumber As Long
    
    LongJobNo = MedsJobNumber(Index).Text
    LongObsNo = ObsNumber(Index).Text
    LongMEICNumber = -1   ' indicates null
    
    If MEICNumber(Index).Text <> "" Then
        LongMEICNumber = MEICNumber(Index).Text
    End If

    Call MarineLifeEdit.SetEditDetails(EDIT_MODE_EDIT, LongMEICNumber, LongJobNo, LongObsNo, DataTypeSearch.Text)

    MarineLifeEdit.Show
End Sub

Private Sub Form_Load()
    Dim SQLQuery As String
    Dim Results As Object
    
    Call InitialiseDataType(DataTypeSearch)
    
    Call InitialiseShip(ShipSearch, DataTypeSearch.Text)
    
    Call InitialiseMeicNumber(MEICNumberSearch, DataTypeSearch.Text)
    
    VariableLabel.Caption = VariableDataColumnName(DataTypeSearch.Text)
    
    SearchDateTo.CheckBox = True
    SearchDateTo = Null
    SearchDateFrom.CheckBox = True
    SearchDateFrom = Null
    
    Call InitialiseOrderBy(OrderBy)
    
    OrderDirection.AddItem ("DESC")
    OrderDirection.AddItem ("ASC")
    OrderDirection.Text = "DESC"
    
    ResultsFrame.Caption = ""
    
    Call ClearSearchResults
    
End Sub

Public Sub ClearSearchResults()
    Dim i As Integer
    
    For i = 0 To MEICNumber.Count - 1
        MEICNumber(i).Text = ""
        MEICNumber(i).Visible = False
        MEICNumber(i).Locked = True
        MedsJobNumber(i).Text = ""
        MedsJobNumber(i).Visible = False
        MedsJobNumber(i).Locked = True
        ObsNumber(i).Text = ""
        ObsNumber(i).Visible = False
        ObsNumber(i).Locked = True
        DataType(i).Text = ""
        DataType(i).Visible = False
        DataType(i).Locked = True
        Latitude(i).Text = ""
        Latitude(i).Visible = False
        Latitude(i).Locked = True
        Longitude(i).Text = ""
        Longitude(i).Visible = False
        Longitude(i).Locked = True
        Ship(i).Text = ""
        Ship(i).Visible = False
        Ship(i).Locked = True
        DateRecorded(i).Text = ""
        DateRecorded(i).Visible = False
        DateRecorded(i).Locked = True
        VariableData(i).Text = ""
        VariableData(i).Visible = False
        VariableData(i).Locked = True

        EditButton(i).Visible = False
        CopyButton(i).Visible = False
        DeleteButton(i).Visible = False
    Next i
    
    ResultsFrame.Caption = 0 & " to " & 0 & " of " & 0 & " in UNKNOWN"
    VScroll.Visible = False
End Sub


Public Sub DisplayResultsSet()
    Dim i As Integer
    Dim Results As Object
    Dim RowCount As Integer
    
    Call ClearSearchResults
    
    If CurrentQuery = "" Then
        Exit Sub
    End If
    
    Set Results = OraDatabase.CreateDynaset(CurrentQuery, 0&)
    
    RowCount = 0
    i = 0
    
    While Not Results.EOF And i < MEICNumber.Count
        
        If RowCount >= VScroll.value Then
            If Results("meic_number") <> "" Then
                MEICNumber(i).Text = Results("meic_number")
            End If
            MEICNumber(i).Visible = True
            
            'this is an invisible field
            MedsJobNumber(i).Text = Results("meds_job_number")
            
            ObsNumber(i).Text = Results("meds_observation_number")
            ObsNumber(i).Visible = True
            
            DataType(i).Text = DataTypeSearch.Text
            DataType(i).Visible = True
            
            If Results("latitude") <> "" Then
                Latitude(i).Text = Results("latitude")
            End If
            Latitude(i).Visible = True
            
            If Results("longitude") <> "" Then
                Longitude(i).Text = Results("longitude")
            End If
            Longitude(i).Visible = True
            
            If Results(ShipColumnName(DataTypeSearch.Text)) <> "" Then
                Ship(i).Text = Results(ShipColumnName(DataTypeSearch.Text))
            End If
            Ship(i).Visible = True
            
            If Results(DateRecordedName(DataTypeSearch.Text)) <> "" Then
                DateRecorded(i).Text = Results(DateRecordedName(DataTypeSearch.Text))
            End If
            DateRecorded(i).Visible = True
            
            If Results(VariableDataColumnName(DataTypeSearch.Text)) <> "" Then
                VariableData(i).Text = Results(VariableDataColumnName(DataTypeSearch.Text))
            End If
            VariableData(i).Visible = True
            
            EditButton(i).Visible = True
            CopyButton(i).Visible = True
            DeleteButton(i).Visible = True
            
            i = i + 1
        End If
        Results.MoveNext
        RowCount = RowCount + 1
    Wend
    
    If NumberOfResults > 0 Then
        ResultsFrame.Caption = VScroll.value + 1 & " to " & VScroll.value + i & " of " & NumberOfResults & " in " & DataTypeSearch.Text
    Else
        ResultsFrame.Caption = "No Records Found"
    End If
    VariableLabel.Caption = VariableDataColumnName(DataTypeSearch.Text)
    
    If NumberOfResults < MEICNumber.UBound Then
        VScroll.Visible = False
    Else
        VScroll.Visible = True
    End If

End Sub



Private Sub ExitButton_Click()
    Unload Me
End Sub


Private Sub FromLatitude_Change()
    Call JobTracking.ForceFloatText(FromLatitude)
End Sub

Private Sub FromLongitude_Change()
    Call JobTracking.ForceFloatText(FromLongitude)
End Sub

Private Sub MEICNumberSearch_Change()
    Call JobTracking.ForceIntegerText(MEICNumberSearch)
End Sub

Private Sub ObsNumberSearch_Change()
    Call JobTracking.ForceIntegerText(ObsNumberSearch)
End Sub

Public Sub SearchButton_Click()
    Dim SQLQuery As String
    Dim WhereQuery As String
    Dim Results As Object
    Dim i As Integer
    On Error GoTo SearchButton_Error

    If DataTypeSearch.Text = "" Then
        DataTypeSearch.Text = "PINNIPEDS"
    Else
        WhereQuery = "FROM " & DataTable(DataTypeSearch.Text) & " d, " & _
                         " " & ObservationTable(DataTypeSearch.Text) & " o, " & _
                         " meds_processing_job j " & _
                     "WHERE d.meds_job_number = o.meds_job_number and " & _
                     "      d.meds_observation_number = o.meds_observation_number and " & _
                     "      j.job_number = d.meds_job_number "
    End If
    
    If MEICNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND j.meic_number = '" & MEICNumberSearch.Text & "'"
    End If
    
    If ObsNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.meds_observation_number = " & ObsNumberSearch.Text
    End If
    
    If ShipSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND d." & ShipColumnName(DataTypeSearch.Text) & " = '" & ShipSearch.Text & "'"
    End If
    
    If SearchDateFrom <> "" Then
        WhereQuery = WhereQuery & " AND o." & DateRecordedName(DataTypeSearch.Text) & " >= TO_DATE('" & _
            SearchDateFrom.Day & "/" & SearchDateFrom.Month & "/" & SearchDateFrom.Year & "','DD/MM/YYYY') "
    End If
    
    If SearchDateTo <> "" Then
        WhereQuery = WhereQuery & " AND o." & DateRecordedName(DataTypeSearch.Text) & " <= TO_DATE('" & _
            SearchDateTo.Day & "/" & SearchDateTo.Month & "/" & SearchDateTo.Year & "','DD/MM/YYYY') "
    End If
    
    If FromLatitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.latitude >= " & FromLatitude.Text
    End If
    
    If ToLatitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.latitude <= " & ToLatitude.Text
    End If
    
    If FromLongitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.longitude >= " & FromLongitude.Text
    End If
    
    If ToLongitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.longitude <= " & ToLongitude.Text
    End If
    
    SQLQuery = "Select count(*) " & WhereQuery
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    NumberOfResults = Results("count(*)")
    
    If NumberOfResults > 10000 Then
        MsgBox "Too Many Values (" & NumberOfResults & ") returned by search - refine search further and continue "
    Else
    
        SQLQuery = "SELECT j.meic_number, o.meds_observation_number, o.latitude, o.longitude," & _
                "      d." & ShipColumnName(DataTypeSearch.Text) & ", TO_CHAR(o." & DateRecordedName(DataTypeSearch.Text) & ",'DD/MM/YYYY') AS " & DateRecordedName(DataTypeSearch.Text) & _
                ",d." & VariableDataColumnName(DataTypeSearch.Text) & ", o.meds_job_number " & _
                WhereQuery & " ORDER BY " & OrderBy.Text & " " & OrderDirection.Text
    
        CurrentQuery = SQLQuery
    
        VScroll.Min = 0
        VScroll.Max = NumberOfResults - MEICNumber.UBound
        VScroll.value = 0
        VScroll.SmallChange = 10
        VScroll.LargeChange = 20
    
        Call DisplayResultsSet
    End If

Exit Sub
SearchButton_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing search :" & err.Number & " " & err.description
End If
End Sub

Private Sub ToLatitude_Change()
    Call JobTracking.ForceFloatText(ToLatitude)
End Sub

Private Sub ToLongitude_Change()
    Call JobTracking.ForceFloatText(ToLongitude)
End Sub

Private Sub VScroll_Change()
    Call DisplayResultsSet
End Sub

Public Sub ResetButton_Click()
    Call ClearSearchResults
    
    MEICNumberSearch.Text = ""
    ObsNumberSearch.Text = ""
    ShipSearch.Text = ""
    CurrentQuery = ""
    SearchDateFrom.CheckBox = True
    SearchDateFrom = Null
    SearchDateTo.CheckBox = True
    SearchDateTo = Null
    
    FromLatitude.Text = ""
    ToLatitude.Text = ""
    FromLongitude.Text = ""
    ToLongitude.Text = ""
    
    OrderBy.Text = "o.meds_job_number"
    OrderDirection = "DESC"
End Sub
