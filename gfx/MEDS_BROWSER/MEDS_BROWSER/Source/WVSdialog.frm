VERSION 5.00
Begin VB.Form WVSdialog 
   Caption         =   "WVS Data Load"
   ClientHeight    =   3375
   ClientLeft      =   4065
   ClientTop       =   4350
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   ScaleHeight     =   3375
   ScaleWidth      =   6615
   Begin VB.Frame WVSFrame 
      Caption         =   "WVS Load Progress"
      Height          =   2895
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   6135
      Begin VB.TextBox WVSTextBox 
         Height          =   285
         Index           =   2
         Left            =   2880
         TabIndex        =   5
         Top             =   2160
         Width           =   2775
      End
      Begin VB.TextBox WVSTextBox 
         Height          =   285
         Index           =   1
         Left            =   2880
         TabIndex        =   4
         Top             =   1440
         Width           =   2775
      End
      Begin VB.TextBox WVSTextBox 
         Height          =   285
         Index           =   0
         Left            =   2880
         TabIndex        =   1
         Top             =   720
         Width           =   2775
      End
      Begin VB.Label Label1 
         Caption         =   "WVS Countries"
         Height          =   255
         Index           =   2
         Left            =   360
         TabIndex        =   6
         Top             =   2160
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "WVS Bathymetry colour"
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   3
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label1 
         Caption         =   "WVS Bathymetry Line"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   2
         Top             =   720
         Width           =   1815
      End
   End
End
Attribute VB_Name = "WVSdialog"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
