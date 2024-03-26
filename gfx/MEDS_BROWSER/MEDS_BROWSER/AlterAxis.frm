VERSION 5.00
Begin VB.Form AlterAxis 
   Caption         =   "Alter Axis"
   ClientHeight    =   4605
   ClientLeft      =   7950
   ClientTop       =   5445
   ClientWidth     =   2670
   LinkTopic       =   "Form1"
   ScaleHeight     =   4605
   ScaleWidth      =   2670
   Begin VB.Frame Frame1 
      Caption         =   "Alter axis"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2415
      Begin VB.TextBox MajorInterval 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Left            =   1200
         TabIndex        =   12
         Top             =   2880
         Width           =   975
      End
      Begin VB.TextBox AxisVal 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   1200
         TabIndex        =   8
         Top             =   1920
         Width           =   975
      End
      Begin VB.TextBox AxisVal 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         Height          =   285
         Index           =   1
         Left            =   1200
         TabIndex        =   7
         Top             =   2400
         Width           =   975
      End
      Begin VB.CommandButton CancelBtn 
         Caption         =   "Exit"
         Height          =   495
         Left            =   1200
         TabIndex        =   6
         Top             =   3600
         Width           =   735
      End
      Begin VB.CommandButton OkBtn 
         Caption         =   "OK"
         Height          =   495
         Left            =   240
         TabIndex        =   5
         Top             =   3600
         Width           =   735
      End
      Begin VB.ComboBox AxisName 
         Height          =   315
         Left            =   240
         TabIndex        =   3
         Text            =   "Please select"
         Top             =   1320
         Width           =   1935
      End
      Begin VB.ComboBox GraphNum 
         Height          =   315
         Left            =   240
         TabIndex        =   2
         Text            =   "Please select"
         Top             =   600
         Width           =   1935
      End
      Begin VB.Label Interval 
         Caption         =   "Num Intervals"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   2880
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "Minimum"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   1920
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Maximum"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   2400
         Width           =   1095
      End
      Begin VB.Label Label2 
         Caption         =   "Axis"
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
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "Graph Number"
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
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1335
      End
   End
End
Attribute VB_Name = "AlterAxis"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub AxisName_Click()
    AxisVal(0).Text = MultipleSelect.Graph(GraphNum.ListIndex).Plot.Axis(AxisName.ListIndex).ValueScale.Minimum
    AxisVal(1).Text = MultipleSelect.Graph(GraphNum.ListIndex).Plot.Axis(AxisName.ListIndex).ValueScale.Maximum
    MajorInterval.Text = MultipleSelect.Graph(GraphNum.ListIndex).Plot.Axis(AxisName.ListIndex).ValueScale.MajorDivision
    
    AlterAxis.Refresh
End Sub

Private Sub CancelBtn_Click()
    Unload Me
End Sub

Private Sub OkBtn_Click()
Dim Graph As Integer, Axis As Integer
Dim Min As Double, Max As Double, SwopVals As Double, Div As Double

    Graph = GraphNum.ListIndex
    Axis = AxisName.ListIndex
    
    If Not (IsNumeric(AxisVal(0).Text)) Then
        MsgBox "Please enter a number into axis minimum"
    ElseIf Not (IsNumeric(AxisVal(1).Text)) Then
        MsgBox "Please enter a number into axis maximum"
    ElseIf Not (IsNumeric(MajorInterval.Text)) Then
        MsgBox "Please enter a number into Number of intervals"
    Else
        Min = AxisVal(0).Text
        Max = AxisVal(1).Text
        Div = MajorInterval.Text
        
        'Ensure max and min the correct way round
        If Max < Min Then
            SwopVals = Min
            Max = Min
            Min = SwopVals
        End If
        
        'Now alter the graph!!!!
        
        With MultipleSelect.Graph(Graph).Plot.Axis(Axis).ValueScale
            .Auto = False
            .Minimum = Min
            .Maximum = Max
            .MajorDivision = Div
        End With
        
        MultipleSelect.Graph(Graph).Plot.Axis(VtChAxisIdX).Intersection.Point = _
            MultipleSelect.Graph(Graph).Plot.Axis(VtChAxisIdY).ValueScale.Minimum
    
    End If

    
End Sub
