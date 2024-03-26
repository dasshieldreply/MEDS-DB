VERSION 5.00
Begin VB.Form BeachSearch 
   Caption         =   "Beach Search"
   ClientHeight    =   9210
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13635
   LinkTopic       =   "Form1"
   ScaleHeight     =   9210
   ScaleWidth      =   13635
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox MedsJobNumber 
      Height          =   285
      Index           =   13
      Left            =   10440
      TabIndex        =   229
      Top             =   5280
      Width           =   855
   End
   Begin VB.TextBox MedsJobNumber 
      Height          =   285
      Index           =   1
      Left            =   10440
      TabIndex        =   217
      Top             =   960
      Width           =   855
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   15
      Left            =   120
      TabIndex        =   215
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   15
      Left            =   1530
      TabIndex        =   214
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   15
      Left            =   2925
      TabIndex        =   213
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   15
      Left            =   4335
      TabIndex        =   212
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   15
      Left            =   5745
      TabIndex        =   211
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   15
      Left            =   7140
      TabIndex        =   210
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   15
      Left            =   8550
      TabIndex        =   209
      Top             =   6000
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   15
      Left            =   9960
      TabIndex        =   208
      Top             =   6000
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   15
      Left            =   11280
      TabIndex        =   207
      Top             =   6015
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   15
      Left            =   11880
      TabIndex        =   206
      Top             =   6015
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   15
      Left            =   12480
      TabIndex        =   205
      Top             =   6015
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   14
      Left            =   120
      TabIndex        =   204
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   14
      Left            =   1530
      TabIndex        =   203
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   14
      Left            =   2925
      TabIndex        =   202
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   14
      Left            =   4335
      TabIndex        =   201
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   14
      Left            =   5745
      TabIndex        =   200
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   14
      Left            =   7140
      TabIndex        =   199
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   14
      Left            =   8550
      TabIndex        =   198
      Top             =   5640
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   14
      Left            =   9960
      TabIndex        =   197
      Top             =   5640
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   14
      Left            =   11280
      TabIndex        =   196
      Top             =   5655
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   14
      Left            =   11880
      TabIndex        =   195
      Top             =   5655
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   14
      Left            =   12480
      TabIndex        =   194
      Top             =   5655
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   13
      Left            =   120
      TabIndex        =   193
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   13
      Left            =   1530
      TabIndex        =   192
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   13
      Left            =   2925
      TabIndex        =   191
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   13
      Left            =   4335
      TabIndex        =   190
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   13
      Left            =   5745
      TabIndex        =   189
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   13
      Left            =   7140
      TabIndex        =   188
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   13
      Left            =   8550
      TabIndex        =   187
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   13
      Left            =   9960
      TabIndex        =   186
      Top             =   5280
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   13
      Left            =   11280
      TabIndex        =   185
      Top             =   5295
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   13
      Left            =   11880
      TabIndex        =   184
      Top             =   5295
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   13
      Left            =   12480
      TabIndex        =   183
      Top             =   5295
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   12
      Left            =   120
      TabIndex        =   182
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   12
      Left            =   1530
      TabIndex        =   181
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   12
      Left            =   2925
      TabIndex        =   180
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   12
      Left            =   4335
      TabIndex        =   179
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   12
      Left            =   5745
      TabIndex        =   178
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   12
      Left            =   7140
      TabIndex        =   177
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   12
      Left            =   8550
      TabIndex        =   176
      Top             =   4920
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   12
      Left            =   9960
      TabIndex        =   175
      Top             =   4920
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   12
      Left            =   11280
      TabIndex        =   174
      Top             =   4935
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   12
      Left            =   11880
      TabIndex        =   173
      Top             =   4935
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   12
      Left            =   12480
      TabIndex        =   172
      Top             =   4935
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   11
      Left            =   120
      TabIndex        =   171
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   11
      Left            =   1530
      TabIndex        =   170
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   11
      Left            =   2925
      TabIndex        =   169
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   11
      Left            =   4335
      TabIndex        =   168
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   11
      Left            =   5745
      TabIndex        =   167
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   11
      Left            =   7140
      TabIndex        =   166
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   11
      Left            =   8550
      TabIndex        =   165
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   11
      Left            =   9960
      TabIndex        =   164
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   11
      Left            =   11280
      TabIndex        =   163
      Top             =   4575
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   11
      Left            =   11880
      TabIndex        =   162
      Top             =   4575
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   11
      Left            =   12480
      TabIndex        =   161
      Top             =   4575
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   10
      Left            =   120
      TabIndex        =   160
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   10
      Left            =   1530
      TabIndex        =   159
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   10
      Left            =   2925
      TabIndex        =   158
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   10
      Left            =   4335
      TabIndex        =   157
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   10
      Left            =   5745
      TabIndex        =   156
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   10
      Left            =   7140
      TabIndex        =   155
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   10
      Left            =   8550
      TabIndex        =   154
      Top             =   4200
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   10
      Left            =   9960
      TabIndex        =   153
      Top             =   4200
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   10
      Left            =   11280
      TabIndex        =   152
      Top             =   4215
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   10
      Left            =   11880
      TabIndex        =   151
      Top             =   4215
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   10
      Left            =   12480
      TabIndex        =   150
      Top             =   4215
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   9
      Left            =   120
      TabIndex        =   149
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   9
      Left            =   1530
      TabIndex        =   148
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   9
      Left            =   2925
      TabIndex        =   147
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   9
      Left            =   4335
      TabIndex        =   146
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   9
      Left            =   5745
      TabIndex        =   145
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   9
      Left            =   7140
      TabIndex        =   144
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   9
      Left            =   8550
      TabIndex        =   143
      Top             =   3840
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   9
      Left            =   9960
      TabIndex        =   142
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   9
      Left            =   11280
      TabIndex        =   141
      Top             =   3855
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   9
      Left            =   11880
      TabIndex        =   140
      Top             =   3855
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   9
      Left            =   12480
      TabIndex        =   139
      Top             =   3855
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   8
      Left            =   120
      TabIndex        =   138
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   8
      Left            =   1530
      TabIndex        =   137
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   8
      Left            =   2925
      TabIndex        =   136
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   8
      Left            =   4335
      TabIndex        =   135
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   8
      Left            =   5745
      TabIndex        =   134
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   8
      Left            =   7140
      TabIndex        =   133
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   8
      Left            =   8550
      TabIndex        =   132
      Top             =   3480
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   8
      Left            =   9960
      TabIndex        =   131
      Top             =   3480
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   8
      Left            =   11280
      TabIndex        =   130
      Top             =   3495
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   8
      Left            =   11880
      TabIndex        =   129
      Top             =   3495
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   8
      Left            =   12480
      TabIndex        =   128
      Top             =   3495
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   7
      Left            =   120
      TabIndex        =   127
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   7
      Left            =   1530
      TabIndex        =   126
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   7
      Left            =   2925
      TabIndex        =   125
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   7
      Left            =   4335
      TabIndex        =   124
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   7
      Left            =   5745
      TabIndex        =   123
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   7
      Left            =   7140
      TabIndex        =   122
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   7
      Left            =   8550
      TabIndex        =   121
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   7
      Left            =   9960
      TabIndex        =   120
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   7
      Left            =   11280
      TabIndex        =   119
      Top             =   3135
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   7
      Left            =   11880
      TabIndex        =   118
      Top             =   3135
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   7
      Left            =   12480
      TabIndex        =   117
      Top             =   3135
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   6
      Left            =   120
      TabIndex        =   116
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   6
      Left            =   1530
      TabIndex        =   115
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   6
      Left            =   2925
      TabIndex        =   114
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   6
      Left            =   4335
      TabIndex        =   113
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   6
      Left            =   5745
      TabIndex        =   112
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   6
      Left            =   7140
      TabIndex        =   111
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   6
      Left            =   8550
      TabIndex        =   110
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   6
      Left            =   9960
      TabIndex        =   109
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   6
      Left            =   11280
      TabIndex        =   108
      Top             =   2775
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   6
      Left            =   11880
      TabIndex        =   107
      Top             =   2775
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   6
      Left            =   12480
      TabIndex        =   106
      Top             =   2775
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   5
      Left            =   120
      TabIndex        =   105
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   5
      Left            =   1530
      TabIndex        =   104
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   5
      Left            =   2925
      TabIndex        =   103
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   5
      Left            =   4335
      TabIndex        =   102
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   5
      Left            =   5745
      TabIndex        =   101
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   5
      Left            =   7140
      TabIndex        =   100
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   5
      Left            =   8550
      TabIndex        =   99
      Top             =   2400
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   5
      Left            =   9960
      TabIndex        =   98
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   5
      Left            =   11280
      TabIndex        =   97
      Top             =   2415
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   5
      Left            =   11880
      TabIndex        =   96
      Top             =   2415
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   5
      Left            =   12480
      TabIndex        =   95
      Top             =   2415
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   4
      Left            =   120
      TabIndex        =   94
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   4
      Left            =   1530
      TabIndex        =   93
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   4
      Left            =   2925
      TabIndex        =   92
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   4
      Left            =   4335
      TabIndex        =   91
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   4
      Left            =   5745
      TabIndex        =   90
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   4
      Left            =   7140
      TabIndex        =   89
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   4
      Left            =   8550
      TabIndex        =   88
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   4
      Left            =   9960
      TabIndex        =   87
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   4
      Left            =   11280
      TabIndex        =   86
      Top             =   2055
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   4
      Left            =   11880
      TabIndex        =   85
      Top             =   2055
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   4
      Left            =   12480
      TabIndex        =   84
      Top             =   2055
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   3
      Left            =   120
      TabIndex        =   83
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   3
      Left            =   1530
      TabIndex        =   82
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   3
      Left            =   2925
      TabIndex        =   81
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   3
      Left            =   4335
      TabIndex        =   80
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   3
      Left            =   5745
      TabIndex        =   79
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   3
      Left            =   7140
      TabIndex        =   78
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   3
      Left            =   8550
      TabIndex        =   77
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   3
      Left            =   9960
      TabIndex        =   76
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   3
      Left            =   11280
      TabIndex        =   75
      Top             =   1695
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   3
      Left            =   11880
      TabIndex        =   74
      Top             =   1695
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   3
      Left            =   12480
      TabIndex        =   73
      Top             =   1695
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   2
      Left            =   120
      TabIndex        =   72
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   2
      Left            =   1530
      TabIndex        =   71
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   2
      Left            =   2925
      TabIndex        =   70
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   2
      Left            =   4335
      TabIndex        =   69
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   2
      Left            =   5745
      TabIndex        =   68
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   2
      Left            =   7140
      TabIndex        =   67
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   2
      Left            =   8550
      TabIndex        =   66
      Top             =   1320
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   2
      Left            =   9960
      TabIndex        =   65
      Top             =   1320
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   2
      Left            =   11280
      TabIndex        =   64
      Top             =   1335
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   2
      Left            =   11880
      TabIndex        =   63
      Top             =   1335
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   2
      Left            =   12480
      TabIndex        =   62
      Top             =   1335
      Width           =   615
   End
   Begin VB.TextBox MEICNumber 
      Height          =   285
      Index           =   1
      Left            =   120
      TabIndex        =   61
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox ObsNumber 
      Height          =   285
      Index           =   1
      Left            =   1530
      TabIndex        =   60
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox Latitude 
      Height          =   285
      Index           =   1
      Left            =   2925
      TabIndex        =   59
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox Longitude 
      Height          =   285
      Index           =   1
      Left            =   4335
      TabIndex        =   58
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox Country 
      Height          =   285
      Index           =   1
      Left            =   5745
      TabIndex        =   57
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox BeachName 
      Height          =   285
      Index           =   1
      Left            =   7140
      TabIndex        =   56
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox BeachNumber 
      Height          =   285
      Index           =   1
      Left            =   8550
      TabIndex        =   55
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox BeachSector 
      Height          =   285
      Index           =   1
      Left            =   9960
      TabIndex        =   54
      Top             =   960
      Width           =   1215
   End
   Begin VB.CommandButton EditButton 
      Caption         =   "Edit"
      Height          =   255
      Index           =   1
      Left            =   11280
      TabIndex        =   53
      Top             =   975
      Width           =   495
   End
   Begin VB.CommandButton CopyButton 
      Caption         =   "Copy"
      Height          =   255
      Index           =   1
      Left            =   11880
      TabIndex        =   52
      Top             =   975
      Width           =   495
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   255
      Index           =   1
      Left            =   12480
      TabIndex        =   51
      Top             =   975
      Width           =   615
   End
   Begin VB.Frame SearchFrame 
      Caption         =   "Search"
      Height          =   1935
      Left            =   0
      TabIndex        =   35
      Top             =   6480
      Width           =   13575
      Begin VB.TextBox MedsJobNumberSearch 
         Height          =   375
         Left            =   3000
         TabIndex        =   22
         Top             =   480
         Width           =   1335
      End
      Begin VB.TextBox ToLongitude 
         Height          =   315
         Left            =   6240
         TabIndex        =   26
         Top             =   880
         Width           =   735
      End
      Begin VB.TextBox FromLongitude 
         Height          =   315
         Left            =   4560
         TabIndex        =   25
         Top             =   880
         Width           =   735
      End
      Begin VB.TextBox FromLatitude 
         Height          =   315
         Left            =   5400
         TabIndex        =   24
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox ToLatitude 
         Height          =   315
         Left            =   5400
         TabIndex        =   23
         Top             =   480
         Width           =   735
      End
      Begin VB.Frame OrderByFrame 
         Caption         =   "Order By"
         Height          =   1500
         Left            =   11160
         TabIndex        =   39
         Top             =   240
         Width           =   2295
         Begin VB.ComboBox OrderBy 
            Height          =   315
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   31
            Top             =   360
            Width           =   2055
         End
         Begin VB.ComboBox OrderDirection 
            Height          =   315
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   32
            Top             =   1080
            Width           =   975
         End
      End
      Begin VB.ComboBox SectorSearch 
         Height          =   315
         Left            =   7200
         TabIndex        =   28
         Text            =   "SectorSearch"
         Top             =   1320
         Width           =   1815
      End
      Begin VB.ComboBox CountrySearch 
         Height          =   315
         Left            =   7200
         TabIndex        =   27
         Text            =   "CountrySearch"
         Top             =   480
         Width           =   1815
      End
      Begin VB.TextBox BeachNumberSearch 
         Height          =   315
         Left            =   9240
         TabIndex        =   30
         Top             =   1320
         Width           =   1815
      End
      Begin VB.TextBox BeachNameSearch 
         Height          =   315
         Left            =   9240
         TabIndex        =   29
         Top             =   480
         Width           =   1815
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   315
         Left            =   1560
         TabIndex        =   34
         Top             =   1320
         Width           =   1215
      End
      Begin VB.CommandButton SearchButton 
         Caption         =   "Search"
         Height          =   315
         Left            =   120
         TabIndex        =   33
         Top             =   1320
         Width           =   1215
      End
      Begin VB.TextBox ObsNumberSearch 
         Height          =   375
         Left            =   1560
         TabIndex        =   21
         Top             =   480
         Width           =   1215
      End
      Begin VB.ComboBox MEICNumberSearch 
         Height          =   315
         Left            =   120
         TabIndex        =   20
         Text            =   "MEICNumberSearch"
         Top             =   480
         Width           =   1215
      End
      Begin VB.Line Line2 
         X1              =   5280
         X2              =   6240
         Y1              =   1040
         Y2              =   1040
      End
      Begin VB.Line Line1 
         X1              =   5770
         X2              =   5770
         Y1              =   720
         Y2              =   1320
      End
      Begin VB.Label Label11 
         Caption         =   "East"
         Height          =   200
         Left            =   6360
         TabIndex        =   50
         Top             =   680
         Width           =   495
      End
      Begin VB.Label Label10 
         Caption         =   "West"
         Height          =   200
         Left            =   4680
         TabIndex        =   49
         Top             =   680
         Width           =   495
      End
      Begin VB.Label Label9 
         Caption         =   "South"
         Height          =   200
         Left            =   5520
         TabIndex        =   48
         Top             =   1620
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "North"
         Height          =   200
         Left            =   5520
         TabIndex        =   47
         Top             =   240
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "Beach Number"
         Height          =   255
         Left            =   9240
         TabIndex        =   46
         Top             =   1080
         Width           =   1215
      End
      Begin VB.Label Label6 
         Caption         =   "Sector"
         Height          =   255
         Left            =   7200
         TabIndex        =   45
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label5 
         Caption         =   "Beach Name"
         Height          =   255
         Left            =   9240
         TabIndex        =   44
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label4 
         Caption         =   "Country"
         Height          =   255
         Left            =   7200
         TabIndex        =   43
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "Meds Job Number"
         Height          =   255
         Left            =   3000
         TabIndex        =   42
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Obs Number"
         Height          =   255
         Left            =   1560
         TabIndex        =   41
         Top             =   240
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   240
         Width           =   1215
      End
   End
   Begin VB.Frame ActionsFrame 
      Caption         =   "Actions"
      Height          =   735
      Left            =   0
      TabIndex        =   36
      Top             =   8520
      Width           =   13575
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit"
         Height          =   375
         Left            =   11160
         TabIndex        =   38
         Top             =   240
         Width           =   2295
      End
      Begin VB.CommandButton AddDataButton 
         Caption         =   "Add Data"
         Height          =   375
         Left            =   120
         TabIndex        =   37
         Top             =   240
         Width           =   2295
      End
   End
   Begin VB.Frame ResultsFrame 
      Caption         =   "Search Results"
      Height          =   6495
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13575
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   15
         Left            =   10440
         TabIndex        =   231
         Top             =   5880
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   14
         Left            =   10440
         TabIndex        =   230
         Top             =   5520
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   12
         Left            =   10560
         TabIndex        =   228
         Top             =   4800
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   11
         Left            =   10440
         TabIndex        =   227
         Top             =   4440
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   10
         Left            =   10680
         TabIndex        =   226
         Top             =   4080
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   9
         Left            =   10680
         TabIndex        =   225
         Top             =   3720
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   8
         Left            =   10560
         TabIndex        =   224
         Top             =   3360
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   7
         Left            =   10560
         TabIndex        =   223
         Top             =   3000
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   6
         Left            =   10680
         TabIndex        =   222
         Top             =   2640
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   5
         Left            =   10800
         TabIndex        =   221
         Top             =   2280
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   4
         Left            =   10560
         TabIndex        =   220
         Top             =   1920
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   3
         Left            =   10440
         TabIndex        =   219
         Top             =   1560
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   2
         Left            =   10440
         TabIndex        =   218
         Top             =   1200
         Width           =   855
      End
      Begin VB.TextBox MedsJobNumber 
         Height          =   285
         Index           =   0
         Left            =   10440
         TabIndex        =   216
         Top             =   600
         Width           =   855
      End
      Begin VB.VScrollBar VScroll 
         Height          =   6135
         Left            =   13200
         TabIndex        =   232
         Top             =   280
         Width           =   255
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   255
         Index           =   0
         Left            =   12480
         TabIndex        =   19
         Top             =   615
         Width           =   615
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   255
         Index           =   0
         Left            =   11880
         TabIndex        =   18
         Top             =   615
         Width           =   495
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   255
         Index           =   0
         Left            =   11280
         TabIndex        =   17
         Top             =   615
         Width           =   495
      End
      Begin VB.TextBox BeachSector 
         Height          =   285
         Index           =   0
         Left            =   9960
         TabIndex        =   16
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox BeachNumber 
         Height          =   285
         Index           =   0
         Left            =   8550
         TabIndex        =   15
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox BeachName 
         Height          =   285
         Index           =   0
         Left            =   7140
         TabIndex        =   14
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Country 
         Height          =   285
         Index           =   0
         Left            =   5760
         TabIndex        =   13
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Longitude 
         Height          =   285
         Index           =   0
         Left            =   4335
         TabIndex        =   12
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Latitude 
         Height          =   285
         Index           =   0
         Left            =   2930
         TabIndex        =   11
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox ObsNumber 
         Height          =   285
         Index           =   0
         Left            =   1525
         TabIndex        =   10
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox MEICNumber 
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   9
         Top             =   600
         Width           =   1215
      End
      Begin VB.Label SectorLabel 
         Caption         =   "Sector"
         Height          =   255
         Left            =   9960
         TabIndex        =   8
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label BeachNumberLabel 
         AutoSize        =   -1  'True
         Caption         =   "Beach Number"
         Height          =   255
         Left            =   8550
         TabIndex        =   7
         Top             =   240
         Width           =   1065
      End
      Begin VB.Label BeachNameLabel 
         AutoSize        =   -1  'True
         Caption         =   "Beach Name"
         Height          =   195
         Left            =   7145
         TabIndex        =   6
         Top             =   240
         Width           =   930
      End
      Begin VB.Label CountryLabel 
         AutoSize        =   -1  'True
         Caption         =   "Country"
         Height          =   255
         Left            =   5740
         TabIndex        =   5
         Top             =   240
         Width           =   800
      End
      Begin VB.Label LongitudeLabel 
         AutoSize        =   -1  'True
         Caption         =   "Longitude"
         Height          =   255
         Left            =   4335
         TabIndex        =   4
         Top             =   240
         Width           =   705
      End
      Begin VB.Label latitudeLabel 
         AutoSize        =   -1  'True
         Caption         =   "Latitude"
         Height          =   255
         Left            =   2930
         TabIndex        =   3
         Top             =   240
         Width           =   570
      End
      Begin VB.Label ObsNumberLabel 
         AutoSize        =   -1  'True
         Caption         =   "Obs Number"
         Height          =   255
         Left            =   1525
         TabIndex        =   2
         Top             =   240
         Width           =   885
      End
      Begin VB.Label MeicNumberLabel 
         AutoSize        =   -1  'True
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   990
      End
   End
End
Attribute VB_Name = "BeachSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private CurrentQuery, CurrentCountQuery As String
Private NumberOfResults As Long
Private NameOfDateField As String
Private DataHasTime As Boolean
Private DateIsMandatory As Boolean
Private DataType As String

Private Sub InitialiseMeicNumbersForForm(ByRef col As Collection, ByVal DataTypeStr As String)
    Dim SQLQuery As String
    Dim Results As Object

    SQLQuery = "Select distinct meic_number from meds_processing_job j," & DataTypeStr & _
               "_OBSERVATION o where j.job_number = o.meds_job_number order by meic_number"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            col.Add Results("meic_number").value
        End If
        Results.MoveNext
    Wend

End Sub

Private Sub InitialiseMeicNumbersForNewJobForm(ByRef col As Collection, ByVal DataTypeStr As String)
    Dim SQLQuery As String
    Dim Results As Object

      SQLQuery = "Select distinct j.meic_number from job_tracking j, meds_job_type t " & _
                " where status NOT in ('CANCELLED','COMPLETED') " & _
                " and t.job_type_number = j.job_type_number " & _
                " and upper(t.description) like upper('" & DataType & "%') " & _
                " order by meic_number desc"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            col.Add Results("meic_number").value
        End If
        Results.MoveNext
    Wend

End Sub
' Initialise the set of MEIC numbers which are possible for the
' chosen data type on this form
Private Sub InitialiseMeicNumberBox(ByRef box As ComboBox, ByVal DataTypeStr As String)

    Dim col As Collection
    Dim Index As Long
    
    box.Clear
    
    ' add the empty string
    
    box.AddItem ("")
    
    Set col = New Collection
    Call InitialiseMeicNumbersForForm(col, DataTypeStr)
    
    For Index = 1 To col.Count
        box.AddItem col(Index)
    Next
    
End Sub


Private Sub InitialiseFromObsData(ByRef box As ComboBox, ByVal DataType As String, ByVal ColName As String)
    Dim SQLQuery As String
    Dim Results As Object

    box.Clear
    SQLQuery = "Select distinct " & ColName & " from " & DataType & "_OBSERVATION" & _
               " order by " & ColName
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    ' add the empty string, so that the box can be cleared
    
    box.AddItem ""
    
    While Not Results.EOF
        If Results(ColName) <> "" Then
            box.AddItem Results(ColName)
        End If
        Results.MoveNext
    Wend
    
    ' check for null values
    
    SQLQuery = "Select count(*) from " & DataType & "_OBSERVATION where " & ColName & " is NULL"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    If Results("count(*)") > 0 Then
        box.AddItem ("NULL")
    End If
End Sub

Private Sub InitialiseOrderBy(ByRef OrderBy As ComboBox, ByRef OrderDirection As ComboBox)

    OrderBy.Clear
    
    OrderBy.AddItem "j.meic_number"
    OrderBy.AddItem "o.meds_job_number"
    OrderBy.AddItem "o.meds_observation_number"
    OrderBy.AddItem "o.latitude"
    OrderBy.AddItem "o.longitude"
    OrderBy.AddItem "o.country"
    OrderBy.AddItem "o.beach_name"
    OrderBy.AddItem "o.beach_number"
    OrderBy.AddItem "o.sector"

    OrderBy.Text = "o.meds_observation_number"
    
    OrderDirection.Clear
    
    OrderDirection.AddItem ("DESC")
    OrderDirection.AddItem ("ASC")
    
    OrderDirection.Text = "DESC"
    
    
End Sub

Public Sub ClearSearchResults()
    Dim i As Integer
    Dim FocusIndex As Integer
    
    FocusIndex = MEICNumber(0).TabIndex
    
    For i = 0 To MEICNumber.Count - 1
        MEICNumber(i).Text = ""
        MEICNumber(i).Visible = False
        MEICNumber(i).Locked = True
        MEICNumber(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        MedsJobNumber(i).Text = ""
        MedsJobNumber(i).Visible = False
        MedsJobNumber(i).Locked = True
        ObsNumber(i).Text = ""
        ObsNumber(i).Visible = False
        ObsNumber(i).Locked = True
        ObsNumber(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        Latitude(i).Text = ""
        Latitude(i).Visible = False
        Latitude(i).Locked = True
        Latitude(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        Longitude(i).Text = ""
        Longitude(i).Visible = False
        Longitude(i).Locked = True
        Longitude(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        Country(i).Text = ""
        Country(i).Visible = False
        Country(i).Locked = True
        Country(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        BeachName(i).Text = ""
        BeachName(i).Visible = False
        BeachName(i).Locked = True
        BeachName(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        BeachNumber(i).Text = ""
        BeachNumber(i).Visible = False
        BeachNumber(i).Locked = True
        BeachNumber(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        BeachSector(i).Text = ""
        BeachSector(i).Visible = False
        BeachSector(i).Locked = True
        BeachSector(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        EditButton(i).Visible = False
        EditButton(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        CopyButton(i).Visible = False
        CopyButton(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
        DeleteButton(i).Visible = False
        DeleteButton(i).TabIndex = FocusIndex
        FocusIndex = FocusIndex + 1
    Next i
    
    ResultsFrame.Caption = 0 & " to " & 0 & " of " & 0 & " in UNKNOWN"
    VScroll.Visible = False
    VScroll.TabIndex = FocusIndex
    
End Sub


Private Sub AddDataButton_Click()
    
    Dim MEICNumbers As Collection
    Dim DataTypes As Collection
    
    Set MEICNumbers = New Collection
    Set DataTypes = New Collection
    
    Call InitialiseMeicNumbersForNewJobForm(MEICNumbers, DataType)
    Call InitialiseDataTypes(DataTypes)

    If NewJob.SetData(MEICNumberSearch, _
                        MEICNumbers, _
                        "Beach Data", _
                        DataTypes, _
                        False, _
                        NameOfDateField, _
                        DataHasTime, _
                        DateIsMandatory, _
                        False, _
                        0, _
                        "DataEdit") Then
                        
        NewJob.Show (1)
        
        ' update the data on the form
    
        Call DisplayResultsSet

        ' Update the contents of the Selection Combo boxes, in case they have changed
    
        Call RefreshDropDowns
    End If
End Sub

Private Sub CopyButton_Click(Index As Integer)
    Call ActivateEditForm(Index, EDIT_MODE_COPY)
End Sub

Private Sub DeleteButton_Click(Index As Integer)
    Call ActivateEditForm(Index, EDIT_MODE_DELETE)
End Sub

Private Sub EditButton_Click(Index As Integer)
    Call ActivateEditForm(Index, EDIT_MODE_EDIT)
End Sub

Private Sub Form_Activate()
    ' set focus to the search button
    
    SearchButton.SetFocus
End Sub

Private Sub Form_Initialize()
    NameOfDateField = "DATE_OF_SURVEY"
    DataHasTime = False
    DateIsMandatory = False
End Sub

Private Sub Form_Load()
    ' Initialise the data in the search combo boxes
    
    Call InitialiseDataType(DataType)
    Call InitialiseMeicNumberBox(MEICNumberSearch, DataType)
    Call InitialiseFromObsData(CountrySearch, DataType, "COUNTRY")
    Call InitialiseFromObsData(SectorSearch, DataType, "Sector")
    Call InitialiseOrderBy(OrderBy, OrderDirection)
        
    ResultsFrame.Caption = ""
    
    Call ClearSearchResults

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

Private Sub MedsJobNumberSearch_Change()
    Call JobTracking.ForceIntegerText(MedsJobNumberSearch)
End Sub

Private Sub MEICNumberSearch_Change()
    Call JobTracking.ForceIntegerText(MEICNumberSearch)
End Sub

Private Sub ObsNumberSearch_Change()
    Call JobTracking.ForceIntegerText(ObsNumberSearch)
End Sub

Private Sub ResetButton_Click()
    Call ClearSearchResults
    
    MEICNumberSearch.ListIndex = 0
    ObsNumberSearch.Text = ""
    MedsJobNumberSearch.Text = ""
    Call SetSelectedItem(CountrySearch, "")
    Call SetSelectedItem(SectorSearch, "")
    
    BeachNameSearch.Text = ""
    BeachNumberSearch.Text = ""

    FromLatitude.Text = ""
    ToLatitude.Text = ""
    FromLongitude.Text = ""
    ToLongitude.Text = ""
     
    CurrentQuery = ""
      
    OrderBy.Text = "o.meds_observation_number"
    OrderDirection = "DESC"

End Sub


Public Sub DisplayResultsSet()
    Dim i As Integer
    Dim Results As Object
    Dim RowCount As Integer
    
    Call ClearSearchResults
    
    If CurrentQuery = "" Then
        Exit Sub
    End If
    
    ' the number of objects selected (don't worry if it creeps over the maximum)
    
    Set Results = OraDatabase.CreateDynaset(CurrentCountQuery, 0&)
        
    NumberOfResults = Results("count(*)")
    
    ' get the objects that fulfil the selection criteria
    
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
            
            If Results("latitude") <> "" Then
                Latitude(i).Text = Results("latitude")
            End If
            Latitude(i).Visible = True
            
            If Results("longitude") <> "" Then
                Longitude(i).Text = Results("longitude")
            End If
            Longitude(i).Visible = True
            
            If Results("Country") <> "" Then
                Country(i).Text = Results("Country")
            End If
            Country(i).Visible = True
                      
            If Results("Sector") <> "" Then
                BeachSector(i).Text = Results("Sector")
            End If
            BeachSector(i).Visible = True
            
            If Results("Beach_name") <> "" Then
                BeachName(i).Text = Results("Beach_Name")
            End If
            BeachName(i).Visible = True
            
            If Results("Beach_number") <> "" Then
                BeachNumber(i).Text = Results("Beach_Number")
            End If
            BeachNumber(i).Visible = True
          
            EditButton(i).Visible = True
            CopyButton(i).Visible = True
            DeleteButton(i).Visible = True
            
            i = i + 1
        End If
        Results.MoveNext
        RowCount = RowCount + 1
    Wend
    
    If NumberOfResults > 0 Then
        ResultsFrame.Caption = VScroll.value + 1 & " to " & VScroll.value + i & " of " & NumberOfResults & " in " & DataType
    Else
        ResultsFrame.Caption = "No Records Found"
    End If
     
    VScroll.Visible = (NumberOfResults > (MEICNumber.UBound + 1))

End Sub

Private Sub SearchButton_Click()
    Dim SQLQuery As String
    Dim WhereQuery As String
    Dim Results As Object
    Dim i As Integer
    On Error GoTo SearchButton_Error
    
    WhereQuery = "FROM " & DataType & "_DATA d, " & _
                 "     " & DataType & "_OBSERVATION o, " & _
                 " meds_processing_job j " & _
                 "WHERE d.meds_job_number = o.meds_job_number and " & _
                 "      d.meds_observation_number = o.meds_observation_number and " & _
                 "      j.job_number = d.meds_job_number "
    
    If MEICNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND j.meic_number = '" & MEICNumberSearch.Text & "'"
    End If
    
    If ObsNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.meds_observation_number = " & ObsNumberSearch.Text
    End If
    
    If MedsJobNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.meds_job_number = " & MedsJobNumberSearch.Text
    End If
    
    If CountrySearch.Text <> "" Then
        If (CountrySearch.Text = "NULL") Then
            WhereQuery = WhereQuery & " AND o.Country is NULL"
        Else
            WhereQuery = WhereQuery & " AND o.Country = '" & _
            Replace(CountrySearch.Text, "'", "''") & "'"
        End If
    End If
        
    If SectorSearch.Text <> "" Then
        If (SectorSearch.Text = "NULL") Then
            WhereQuery = WhereQuery & " AND o.Sector is NULL"
        Else
            WhereQuery = WhereQuery & " AND o.Sector = '" & _
            Replace(SectorSearch.Text, "'", "''") & "'"
        End If
    End If
    
    If BeachNameSearch.Text <> "" Then
        If (BeachNameSearch.Text = "NULL") Then
            WhereQuery = WhereQuery & " AND o.Beach_Name is NULL"
        Else
            WhereQuery = WhereQuery & " AND o.Beach_Name like '%" & _
            Replace(BeachNameSearch.Text, "'", "''") & "%'"
        End If
    End If
    If BeachNumberSearch.Text <> "" Then
        If (BeachNumberSearch.Text = "NULL") Then
            WhereQuery = WhereQuery & " AND o.Beach_Number is NULL"
        Else
            WhereQuery = WhereQuery & " AND o.Beach_Number like '%" & _
            Replace(BeachNumberSearch.Text, "'", "''") & "%'"
        End If
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
    
    CurrentCountQuery = "Select count(*) " & WhereQuery
    Set Results = OraDatabase.CreateDynaset(CurrentCountQuery, 0&)
        
    NumberOfResults = Results("count(*)")
    
    If NumberOfResults > 10000 Then
        MsgBox "Too Many Values (" & NumberOfResults & ") returned by search - refine search further and continue "
    Else
    
        SQLQuery = "SELECT j.meic_number, o.meds_observation_number, o.latitude, o.longitude," & _
                "      o.country, o.beach_name, o.beach_number, o.sector, o.meds_job_number  " & _
                WhereQuery & " ORDER BY " & OrderBy.Text & " " & OrderDirection.Text
    
        CurrentQuery = SQLQuery
    
        VScroll.Min = 0
        VScroll.Max = NumberOfResults - MEICNumber.UBound - 1
        VScroll.value = 0
        VScroll.SmallChange = 10
        VScroll.LargeChange = 15
    
        Call DisplayResultsSet
        
        Call RefreshDropDowns
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

Private Sub ActivateEditForm(Index As Integer, EditMode As EditModeEnum)
    Dim JobNos As Collection
    Dim ObsNos As Collection
    Dim MEICNos As Collection
    Dim LongMEICNumber As Long
    
    ' Initialise collections
    Set JobNos = New Collection
    Set ObsNos = New Collection
    Set MEICNos = New Collection
   
    LongMEICNumber = -1   ' indicates null
    
    If MEICNumber(Index).Text <> "" Then
        LongMEICNumber = MEICNumber(Index).Text
    End If
    
    JobNos.Add MedsJobNumber(Index)
    ObsNos.Add ObsNumber(Index)
    MEICNos.Add LongMEICNumber

    Call DataEdit.SetEditDetails(EditMode, _
                                 MEICNos, _
                                 JobNos, _
                                 ObsNos, _
                                 DataType, _
                                 DataType, _
                                 NameOfDateField, _
                                 DataHasTime, _
                                 False, _
                                 False)
                                 
    DataEdit.Show (1)   ' Call the form modally
    
    ' update the data on the form
    
    Call DisplayResultsSet

    ' Update the contents of the Selection Combo boxes, in case they have changed
    
    Call RefreshDropDowns

End Sub

Private Sub RefreshDropDowns()
    ' Set the search dropdowns; they may have changed
     
    Call RefreshMeicNumberBox(MEICNumberSearch, DataType)
        
    Call RefreshFromObsData(CountrySearch, DataType, "COUNTRY")
    
    Call RefreshFromObsData(SectorSearch, DataType, "Sector")

End Sub

Private Sub RefreshMeicNumberBox(ByRef box As ComboBox, ByVal DataTypeStr As String)
    ' reset the contents of the ComboBox, retaining the current selection if possible
    
    Dim TextStr As String
    Dim Index, boxIndex As Long
    
    TextStr = box.Text
    
    Call InitialiseMeicNumberBox(box, DataTypeStr)
    
    ' The MeicNumberBox is read only; need to select the list index for this string
    ' and set that
    
    Call SetSelectedItem(box, TextStr)
End Sub

Private Sub RefreshFromObsData(ByRef box As ComboBox, ByVal DataType As String, ByVal ColName As String)
    ' reset the contents of the ComboBox, retaining the current selection
    
    Dim TextStr As String
    
    TextStr = box.Text
    
    Call InitialiseFromObsData(box, DataType, ColName)
           
    Call SetSelectedItem(box, TextStr)
End Sub

Private Sub SetSelectedItem(ByRef box As ComboBox, ByVal SelectedStr As String)

    Dim Index, boxIndex As Long
    
    boxIndex = -1
    Index = 0
    
    While (boxIndex < 0) And (Index < box.ListCount)
        If SelectedStr = box.List(Index) Then boxIndex = Index
        Index = Index + 1
    Wend
    
    If (boxIndex < 0) Then boxIndex = 0
    
    box.ListIndex = boxIndex
  

End Sub

Private Sub InitialiseDataType(DataTypeToInitialise As String)
    DataTypeToInitialise = "Beach"
End Sub

Private Sub InitialiseDataTypes(ByRef col As Collection)
    col.Add DataType
End Sub
