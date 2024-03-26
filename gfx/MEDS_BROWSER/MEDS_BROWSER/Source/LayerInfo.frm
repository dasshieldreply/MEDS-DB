VERSION 5.00
Begin VB.Form SQLLayerForm 
   Caption         =   "Layer Information"
   ClientHeight    =   6270
   ClientLeft      =   5820
   ClientTop       =   5235
   ClientWidth     =   7605
   LinkTopic       =   "Form1"
   ScaleHeight     =   6270
   ScaleWidth      =   7605
   Begin VB.Frame LayerFrame 
      Caption         =   "SQL Layer Information"
      Height          =   5895
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   7095
      Begin VB.TextBox LayerName 
         Height          =   285
         Index           =   4
         Left            =   3000
         TabIndex        =   13
         Top             =   2280
         Width           =   3495
      End
      Begin VB.TextBox SQLStatement 
         Height          =   1695
         Left            =   360
         MultiLine       =   -1  'True
         TabIndex        =   6
         Top             =   3240
         Width           =   6255
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Close"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2520
         TabIndex        =   5
         Top             =   5160
         Width           =   1815
      End
      Begin VB.TextBox LayerName 
         Height          =   285
         Index           =   0
         Left            =   3000
         TabIndex        =   4
         Top             =   360
         Width           =   3495
      End
      Begin VB.TextBox LayerName 
         Height          =   285
         Index           =   1
         Left            =   3000
         TabIndex        =   3
         Top             =   840
         Width           =   3495
      End
      Begin VB.TextBox LayerName 
         Height          =   285
         Index           =   2
         Left            =   3000
         TabIndex        =   2
         Top             =   1320
         Width           =   3495
      End
      Begin VB.TextBox LayerName 
         Height          =   285
         Index           =   3
         Left            =   3000
         TabIndex        =   1
         Top             =   1800
         Width           =   3495
      End
      Begin VB.Label NameTxt 
         Caption         =   "Layer Name"
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
         TabIndex        =   12
         Top             =   360
         Width           =   1815
      End
      Begin VB.Label NameTxt 
         Caption         =   "Data Class"
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
         TabIndex        =   11
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label NameTxt 
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
         Index           =   2
         Left            =   360
         TabIndex        =   10
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label NameTxt 
         Caption         =   "Temporal details"
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
         Index           =   3
         Left            =   360
         TabIndex        =   9
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label NameTxt 
         Caption         =   "Child of "
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
         Index           =   4
         Left            =   360
         TabIndex        =   8
         Top             =   2280
         Width           =   1815
      End
      Begin VB.Label NameTxt 
         Caption         =   "SQL statement used to create the layer:"
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
         Index           =   5
         Left            =   360
         TabIndex        =   7
         Top             =   2880
         Width           =   3615
      End
   End
End
Attribute VB_Name = "SQLLayerForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub ExitButton_Click()
    Unload Me
End Sub
