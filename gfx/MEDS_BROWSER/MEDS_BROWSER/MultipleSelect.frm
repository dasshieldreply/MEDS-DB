VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form MultipleSelect 
   Caption         =   "Multiple Selection"
   ClientHeight    =   11790
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15105
   LinkTopic       =   "Form1"
   ScaleHeight     =   11790
   ScaleWidth      =   15105
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame DataSource 
      Caption         =   "DataSource"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   0
      TabIndex        =   38
      Top             =   2640
      Width           =   3135
      Begin VB.ComboBox SourceTable 
         Height          =   315
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   39
         Top             =   240
         Width           =   2655
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   0
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Height          =   11415
      Left            =   3240
      ScaleHeight     =   11355
      ScaleWidth      =   11715
      TabIndex        =   32
      Top             =   120
      Width           =   11775
      Begin MSChart20Lib.MSChart Graph 
         Height          =   2895
         Index           =   0
         Left            =   480
         OleObjectBlob   =   "MultipleSelect.frx":0000
         TabIndex        =   33
         Top             =   240
         Width           =   2295
      End
      Begin MSChart20Lib.MSChart Graph 
         Height          =   3255
         Index           =   1
         Left            =   3600
         OleObjectBlob   =   "MultipleSelect.frx":236D
         TabIndex        =   34
         Top             =   0
         Width           =   2535
      End
      Begin MSChart20Lib.MSChart Graph 
         Height          =   3255
         Index           =   2
         Left            =   480
         OleObjectBlob   =   "MultipleSelect.frx":46C3
         TabIndex        =   35
         Top             =   3480
         Width           =   2535
      End
      Begin MSChart20Lib.MSChart Graph 
         Height          =   3255
         Index           =   3
         Left            =   3720
         OleObjectBlob   =   "MultipleSelect.frx":6A19
         TabIndex        =   36
         Top             =   3480
         Width           =   2535
      End
   End
   Begin VB.Frame Frame7 
      Caption         =   "Graph 4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   0
      TabIndex        =   17
      Top             =   8280
      Width           =   3135
      Begin VB.ComboBox XParamList 
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   19
         Text            =   "Please Select"
         Top             =   600
         Width           =   2655
      End
      Begin VB.ComboBox YParamList 
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   18
         Text            =   "Please Select"
         Top             =   1200
         Width           =   2655
      End
      Begin VB.Label Label2 
         Caption         =   "Y Parameter"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   21
         Top             =   960
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "X Parameter"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   20
         Top             =   360
         Width           =   1695
      End
   End
   Begin VB.Frame Frame6 
      Caption         =   "Graph 3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   0
      TabIndex        =   16
      Top             =   6720
      Width           =   3135
      Begin VB.ComboBox YParamList 
         Height          =   315
         Index           =   2
         Left            =   120
         TabIndex        =   25
         Text            =   "Please Select"
         Top             =   1080
         Width           =   2655
      End
      Begin VB.ComboBox XParamList 
         Height          =   315
         Index           =   2
         Left            =   120
         TabIndex        =   24
         Text            =   "Please Select"
         Top             =   480
         Width           =   2655
      End
      Begin VB.Label Label2 
         Caption         =   "Y Parameter"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   29
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "X Parameter"
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   28
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame5 
      Caption         =   "Graph 2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   0
      TabIndex        =   15
      Top             =   5040
      Width           =   3135
      Begin VB.ComboBox YParamList 
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   23
         Text            =   "Please Select"
         Top             =   1080
         Width           =   2655
      End
      Begin VB.ComboBox XParamList 
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   22
         Text            =   "Please Select"
         Top             =   480
         Width           =   2655
      End
      Begin VB.Label Label2 
         Caption         =   "Y Parameter"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   31
         Top             =   840
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "X Parameter"
         Height          =   375
         Index           =   3
         Left            =   120
         TabIndex        =   30
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Actions"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   0
      TabIndex        =   10
      Top             =   9840
      Width           =   3135
      Begin VB.CommandButton PrintBtn 
         Caption         =   "Save Graph"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   1680
         TabIndex        =   14
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton PlotBtn 
         Caption         =   "Create Graph"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   240
         TabIndex        =   13
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton ExportBtn 
         Caption         =   "Export Data"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   570
         Left            =   240
         TabIndex        =   12
         Top             =   960
         Width           =   1215
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
         Height          =   570
         Left            =   1680
         TabIndex        =   11
         Top             =   960
         Width           =   1215
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Graph 1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   0
      TabIndex        =   7
      Top             =   3360
      Width           =   3135
      Begin VB.ComboBox XParamList 
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   9
         Text            =   "Please Select"
         Top             =   480
         Width           =   2655
      End
      Begin VB.ComboBox YParamList 
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   8
         Text            =   "Please Select"
         Top             =   1080
         Width           =   2655
      End
      Begin VB.Label Label1 
         Caption         =   "X Parameter"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   27
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label Label2 
         Caption         =   "Y Parameter"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   26
         Top             =   840
         Width           =   1455
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Graph Mode"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   0
      TabIndex        =   3
      Top             =   1200
      Width           =   3135
      Begin VB.CheckBox NegYCol 
         Alignment       =   1  'Right Justify
         Caption         =   "Negative Y Column"
         Height          =   255
         Left            =   120
         TabIndex        =   37
         Top             =   960
         Width           =   1935
      End
      Begin VB.OptionButton WashingLine 
         Alignment       =   1  'Right Justify
         Caption         =   "Washing-line Plot"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   480
         Width           =   1935
      End
      Begin VB.OptionButton LinePlot 
         Alignment       =   1  'Right Justify
         Caption         =   "X-Y Line Plot"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Value           =   -1  'True
         Width           =   1935
      End
      Begin VB.OptionButton XYScatter 
         Alignment       =   1  'Right Justify
         Caption         =   "XY Scatter Plot"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   720
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Selection Information"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3135
      Begin VB.Label Recordlabel 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2775
      End
      Begin VB.Label LevelsLabel 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   600
         Width           =   2775
      End
   End
End
Attribute VB_Name = "MultipleSelect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub ExitBtn_Click()
    Unload Me
    
    'Main.Map1.Layers.Item(Main.txtSelectableLayer).Selection.ClearSelection
End Sub


Private Sub ExportBtn_Click()
    DataOutput.Show
End Sub


Private Sub Graph_AxisSelected(Index As Integer, axisID As Integer, AxisIndex As Integer, MouseFlags As Integer, Cancel As Integer)
Dim MinValue As Double, MaxValue As Double
Dim Counter As Integer, Division As Double

    MinValue = Graph(Index).Plot.Axis(axisID).ValueScale.Minimum
    MaxValue = Graph(Index).Plot.Axis(axisID).ValueScale.Maximum
    Division = Graph(Index).Plot.Axis(axisID).ValueScale.MajorDivision
   
    AlterAxis.GraphNum.Clear
    AlterAxis.AxisName.Clear
    
    For Counter = 1 To 4
        If Graph(Counter - 1).Visible Then
            AlterAxis.GraphNum.AddItem "Graph " & Counter
        End If
    Next
        
    AlterAxis.AxisName.AddItem "X Axis"
    AlterAxis.AxisName.AddItem "Y Axis"
    
    AlterAxis.GraphNum.ListIndex = Index
    AlterAxis.AxisName.ListIndex = axisID

    AlterAxis.AxisVal(0) = MinValue
    AlterAxis.AxisVal(1) = MaxValue
    
    AlterAxis.MajorInterval = Division
    
    AlterAxis.Show
End Sub



Private Sub Graph_SeriesSelected(Index As Integer, Series As Integer, MouseFlags As Integer, Cancel As Integer)
'Highlight selected series and show point information

    If XYScatter.Value = False Then
        Graph(Index).Plot.SeriesCollection(Series).Pen.Style = VtPenStyleDashed
        Call HighlightPoint((Series + 1) / 2)
    End If
    
End Sub

Private Sub PlotBtn_Click()
Dim GraphCount As Integer, GraphTotal As Integer
Dim TopAnchor As Integer, LeftAnchor As Integer
Dim GraphHeight As Integer, GraphWidth As Integer
Dim GraphOn(4) As Boolean
    
    'Automatically scale the graphs
    TopAnchor = 120
    LeftAnchor = 400
    GraphHeight = 11100
    GraphWidth = 11100
    
    'Test which graphs are on
    
    For GraphCount = 0 To 3
        If (XParamList(GraphCount).List(XParamList(GraphCount).ListIndex) <> "N/A" And _
            YParamList(GraphCount).List(YParamList(GraphCount).ListIndex) <> "N/A") Then
            
            'Okay go back to multipledisplay to pick up the data and add it to the graphs
                
                Call BuildGraph(Graph(GraphCount), _
                            XParamList(GraphCount).List(XParamList(GraphCount).ListIndex), _
                            YParamList(GraphCount).List(YParamList(GraphCount).ListIndex))
                GraphTotal = GraphTotal + 1
                GraphOn(GraphCount) = True
        Else
            'Sorry this graph is not to be shown......
            GraphOn(GraphCount) = False
            Graph(GraphCount).Visible = False
        End If
    Next
    
    'Display graphs on screen
    
    Select Case GraphTotal
    Case 1: ' Just one graph
        For GraphCount = 0 To 3
            If GraphOn(GraphCount) Then FormatGraph Graph(GraphCount), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
        Next
    Case 2: ' Two graphs
        GraphWidth = GraphWidth / 2
        For GraphCount = 0 To 3
            If GraphOn(GraphCount) Then
                FormatGraph Graph(GraphCount), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
                LeftAnchor = LeftAnchor + GraphWidth
            End If
        Next
    Case 3: ' Three graphs
        GraphWidth = GraphWidth / 3
        For GraphCount = 0 To 3
            If GraphOn(GraphCount) Then
                FormatGraph Graph(GraphCount), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
                LeftAnchor = LeftAnchor + GraphWidth
            End If
        Next
    Case 4: ' four graphs
        GraphWidth = GraphWidth / 2
        GraphHeight = GraphHeight / 2
        FormatGraph Graph(0), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
        LeftAnchor = LeftAnchor + GraphWidth
        FormatGraph Graph(1), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
        LeftAnchor = LeftAnchor - GraphWidth
        TopAnchor = TopAnchor + GraphHeight
        FormatGraph Graph(2), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
        LeftAnchor = LeftAnchor + GraphWidth
        FormatGraph Graph(3), GraphHeight, TopAnchor, GraphWidth, LeftAnchor
    Case Else:
        MsgBox "No graphs selected"
    End Select
    
    
End Sub

Private Sub FormatGraph(Graph As MSChart, ByVal height As Integer, ByVal top As Integer, ByVal width As Integer, ByVal left As Integer)
 
    Graph.height = height
    Graph.top = top
    Graph.width = width
    Graph.left = left
    Graph.Visible = True
    
    Graph.Plot.Axis(VtChAxisIdX).Intersection.Auto = False
    Graph.Plot.Axis(VtChAxisIdX).Intersection.Point = _
    Graph.Plot.Axis(VtChAxisIdY).ValueScale.Minimum
        
End Sub

Private Sub PrintBtn_Click()
Dim Sfile As String
Dim GraphCount As Integer
Dim Current As String

    'Use common dialog to fetch file name
    On Error GoTo label
    
    With CommonDialog1
        .DialogTitle = "Save graph images"
        .Flags = 0
        .FileName = ""
        .CancelError = True
        .InitDir = OuputFilePath
        .Filter = "Bitmap (*.bmp)|*.bmp"
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName
     End With
    
    'Loop for each graphic displayed
   
    For GraphCount = 0 To 3
        If Graph(GraphCount).Visible Then
            
            Clipboard.Clear
            'Add each graph to the clipboard
            Graph(GraphCount).EditCopy
            Picture1.AutoRedraw = True
            Picture1.Picture = Clipboard.GetData(vbCFMetafile)
            'Save each graph from the cliboard

            Current = Replace(Sfile, ".", "_G" & GraphCount + 1 & ".")

            SavePicture Picture1.Picture, Current
        End If
      Next
      
    Clipboard.Clear
    Exit Sub
label:
    MsgBox err.Description
    
End Sub


Private Sub SourceTable_Click()
        'Call MultipleDetails(Main.Map1, Main.txtSelectableLayer.Text, Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count)
End Sub
