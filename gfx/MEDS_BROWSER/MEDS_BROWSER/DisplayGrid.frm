VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "msflxgrd.ocx"
Begin VB.Form displayGrid 
   Caption         =   "MEDS Data"
   ClientHeight    =   9615
   ClientLeft      =   3900
   ClientTop       =   2895
   ClientWidth     =   11970
   LinkTopic       =   "Form1"
   ScaleHeight     =   9615
   ScaleWidth      =   11970
   Begin VB.Frame Frame1 
      Caption         =   "General Attributes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7815
      Index           =   1
      Left            =   480
      TabIndex        =   2
      Top             =   840
      Width           =   11055
      Begin MSFlexGridLib.MSFlexGrid HeaderTable 
         Height          =   6975
         Index           =   1
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   10455
         _ExtentX        =   18441
         _ExtentY        =   12303
         _Version        =   393216
         AllowUserResizing=   3
      End
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   8655
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   11535
      _ExtentX        =   20346
      _ExtentY        =   15266
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton ExitBtn 
      Caption         =   "Exit"
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
      Left            =   4920
      TabIndex        =   0
      Top             =   9000
      Width           =   1575
   End
End
Attribute VB_Name = "displayGrid"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub ExitBtn_Click()
    Unload Me
    ShowAttributesIsLoaded = False
End Sub





Private Sub Form_Unload(Cancel As Integer)
    ShowAttributesIsLoaded = False
End Sub

Private Sub TabStrip1_Click()
    Dim Data() As String, ColsNames() As String
    Dim DataTable As String
    Dim k
    Dim Error As Boolean
    Dim NumberOfRows As Long

    HeaderTable(1).Clear
    k = Tables.keys
    DataTable = k(TabStrip1.SelectedItem.Index - 1)

    Call PointInformation.FetchDataFromDB(DataTable, Data, ColsNames, NumberOfRows, Error)
   
    If Error = False Then
        Call PointInformation.AddToGrid(displayGrid.HeaderTable(1), Data, ColsNames, UBound(ColsNames), NumberOfRows)
    End If
End Sub
