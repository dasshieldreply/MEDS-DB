VERSION 5.00
Object = "{A43E7C03-A427-11D4-810B-00902744D791}#1.0#0"; "LatLong.ocx"
Object = "{9D6ED199-5910-11D2-98A6-00A0C9742CCA}#4.0#0"; "MAPX40.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Main 
   Caption         =   "Data Visualiser"
   ClientHeight    =   10665
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   15240
   LinkTopic       =   "Form1"
   ScaleHeight     =   10665
   ScaleWidth      =   15240
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame4 
      Caption         =   "Current Layer"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      TabIndex        =   16
      Top             =   4320
      Width           =   2415
      Begin VB.TextBox txtSelectableLayer 
         Height          =   285
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   17
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Selected position"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   120
      TabIndex        =   13
      Top             =   6000
      Width           =   2415
      Begin LATLONGLib.LatLong txtLatitude 
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   2175
         _Version        =   65536
         _ExtentX        =   3836
         _ExtentY        =   450
         _StockProps     =   221
      End
      Begin LATLONGLib.LatLong txtLongitude 
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   480
         Width           =   2175
         _Version        =   65536
         _ExtentX        =   3836
         _ExtentY        =   450
         _StockProps     =   221
         CoOrdType       =   1
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Cursor position"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   10
      Top             =   5040
      Width           =   2415
      Begin LATLONGLib.LatLong txtMouseLatitude 
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   2175
         _Version        =   65536
         _ExtentX        =   3836
         _ExtentY        =   450
         _StockProps     =   221
      End
      Begin LATLONGLib.LatLong txtMouseLongitude 
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   480
         Width           =   2175
         _Version        =   65536
         _ExtentX        =   3836
         _ExtentY        =   450
         _StockProps     =   221
         CoOrdType       =   1
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Chart details"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   120
      TabIndex        =   8
      Top             =   6960
      Width           =   2415
      Begin VB.ListBox liChartList 
         Height          =   2595
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Frame Details 
      Caption         =   "Layers"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3615
      Left            =   120
      TabIndex        =   4
      Top             =   720
      Width           =   2415
      Begin MSComctlLib.TreeView TreeView1 
         Height          =   3135
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   2205
         _ExtentX        =   3889
         _ExtentY        =   5530
         _Version        =   393217
         Indentation     =   88
         Style           =   7
         Appearance      =   1
         OLEDragMode     =   1
      End
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   645
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   15240
      _ExtentX        =   26882
      _ExtentY        =   1138
      ButtonWidth     =   1058
      ButtonHeight    =   979
      Appearance      =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   23
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Normal"
            Description     =   "Normal"
            Object.ToolTipText     =   "Point picker (charts)"
            Object.Tag             =   "Normal"
            ImageIndex      =   1
            BeginProperty ButtonMenus {66833FEC-8583-11D1-B16A-00C0F0283628} 
               NumButtonMenus  =   1
               BeginProperty ButtonMenu1 {66833FEE-8583-11D1-B16A-00C0F0283628} 
               EndProperty
            EndProperty
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Zoom in"
            Object.ToolTipText     =   "Zoom In"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Zoom out"
            Object.ToolTipText     =   "Zoom Out"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Pan"
            Object.ToolTipText     =   "Pan map"
            ImageIndex      =   6
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Centre"
            Object.ToolTipText     =   "Centre at a point"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "WorldView"
            Object.ToolTipText     =   "Show global display"
            ImageIndex      =   5
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Select"
            Object.ToolTipText     =   "Data picker (point)"
            ImageIndex      =   7
         EndProperty
         BeginProperty Button10 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Select rectangle"
            Object.ToolTipText     =   "Select by rectangle"
            ImageIndex      =   11
         EndProperty
         BeginProperty Button11 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Select circle"
            Object.ToolTipText     =   "Select by circle"
            ImageIndex      =   9
         EndProperty
         BeginProperty Button12 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Select polygon"
            Object.ToolTipText     =   "Select by polygon"
            ImageIndex      =   10
         EndProperty
         BeginProperty Button13 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button14 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "label point"
            Object.ToolTipText     =   "Label a geometry"
            ImageIndex      =   12
         EndProperty
         BeginProperty Button15 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Layers"
            Object.ToolTipText     =   "Alter layers properties"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button16 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            ImageIndex      =   13
            Style           =   3
         EndProperty
         BeginProperty Button17 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "To File"
            Object.ToolTipText     =   "Write To File/Report"
            ImageIndex      =   13
         EndProperty
         BeginProperty Button18 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Produce Graph"
            Object.ToolTipText     =   "Produce Graph"
            ImageIndex      =   14
         EndProperty
         BeginProperty Button19 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Data View"
            Object.ToolTipText     =   "View Layer Database Tables"
            ImageIndex      =   15
         EndProperty
         BeginProperty Button20 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button21 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Job Tracking"
            Object.ToolTipText     =   "Job Tracking"
            ImageIndex      =   16
         EndProperty
         BeginProperty Button22 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Marine Life"
            Object.ToolTipText     =   "Marine Life"
            ImageIndex      =   17
         EndProperty
         BeginProperty Button23 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Beach"
            Object.ToolTipText     =   "Edit Beach Data"
            ImageIndex      =   18
         EndProperty
      EndProperty
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   12600
         TabIndex        =   7
         Top             =   120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   11640
         TabIndex        =   6
         Top             =   120
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9960
      Top             =   11400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   6480
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483648
      ImageWidth      =   33
      ImageHeight     =   31
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   18
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":0000
            Key             =   "Normal"
            Object.Tag             =   "Normal"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":08AE
            Key             =   "Zoom in"
            Object.Tag             =   "Zoom in"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":115C
            Key             =   "Zoom out"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":1A0A
            Key             =   "Centre"
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":22B8
            Key             =   "Full"
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":2B66
            Key             =   "Pan"
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":3414
            Key             =   "Select"
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":3CC2
            Key             =   "Layers"
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4570
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4682
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4794
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":48A6
            Key             =   ""
         EndProperty
         BeginProperty ListImage13 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":4BF8
            Key             =   ""
         EndProperty
         BeginProperty ListImage14 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":546A
            Key             =   ""
         EndProperty
         BeginProperty ListImage15 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":58BC
            Key             =   ""
         EndProperty
         BeginProperty ListImage16 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":5F36
            Key             =   ""
         EndProperty
         BeginProperty ListImage17 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":6250
            Key             =   ""
         EndProperty
         BeginProperty ListImage18 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Main.frx":656A
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.PictureBox pctCursorPosition 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      DrawMode        =   1  'Blackness
      ForeColor       =   &H80000008&
      Height          =   525
      Left            =   6480
      ScaleHeight     =   495
      ScaleMode       =   0  'User
      ScaleWidth      =   976.182
      TabIndex        =   3
      Top             =   11160
      Visible         =   0   'False
      Width           =   1335
      Begin VB.Label lblCursorBottom 
         BackColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   2
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label lblCursorTop 
         BackColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   0
         Top             =   0
         Width           =   1215
      End
   End
   Begin MapXLib.Map Map1 
      Height          =   9255
      Left            =   2640
      TabIndex        =   18
      Top             =   840
      Width           =   12315
      _Version        =   400014
      _ExtentX        =   21722
      _ExtentY        =   16325
      _StockProps     =   1
      GeoDictionary   =   "GeoDictionary"
      GeoSet          =   "Empty"
      GeoSetUserName  =   ""
      CurrentTool     =   1000
      Zoom            =   0
      MaxSearchTime   =   30
      CenterX         =   0
      CenteryY        =   0
      Rotation        =   0
      FeatureEditMode =   1
      NodeHandleSize  =   0
      TitleText       =   ""
      DataSetGeoField =   ""
      AutoRedraw      =   -1  'True
      PreferCompactLegends=   0   'False
      TitleVisible    =   0   'False
      MousePointer    =   0
      MouseIcon       =   ""
      MatchThreshold  =   80
      WaitCursorEnabled=   -1  'True
      MousewheelSupport=   1
      MatchNumericFields=   0   'False
      RedrawInterval  =   100
      PanAnimationLayer=   0   'False
      InfotipSupport  =   -1  'True
      InfotipPopupDelay=   500
      DefaultConversionResolution=   12
      ExportSelection =   0   'False
      NumLayers       =   0
      TitleStyle.TextFontBackColor=   16777215
      TitleStyle.TextFontOpaque=   -1  'True
      TitleStyle.SymbolChar=   0
      BeginProperty TitleStyle.TextFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   45
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty TitleStyle.SymbolFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   42
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DefaultStyle.TextFontBackColor=   16777215
      DefaultStyle.SupportsBitmapSymbols=   -1  'True
      DefaultStyle.SymbolChar=   55
      DefaultStyle.SymbolFontBackColor=   16777215
      BeginProperty DefaultStyle.TextFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty DefaultStyle.SymbolFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      DefaultStyle.LineStyle=   1
      DefaultStyle.LineWidth=   1
      DefaultStyle.RegionColor=   16777215
      DefaultStyle.LinePattern=   2
      DefaultStyle.RegionBackColor=   16777215
      DefaultStyle.RegionBorderStyle=   1
      DefaultStyle.RegionBorderWidth=   1
      HasProjectionInfo=   -1  'True
      NumericCoordsys =   "Main.frx":69BC
      DisplayCoordsys =   "Main.frx":6AEC
      NumDatasets     =   0
      TitleX          =   5000
      TitleY          =   1000
      TitleVisible    =   0   'False
      TitleEditable   =   -1  'True
      TitlePostiion   =   0
      TitleBorder     =   -1  'True
   End
   Begin VB.Menu menuFile 
      Caption         =   "File"
      Begin VB.Menu menuExportData 
         Caption         =   "Export Data ..."
      End
      Begin VB.Menu menuOutputLayerData 
         Caption         =   "Output Layer Data"
      End
      Begin VB.Menu ProgramExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu menuExport 
      Caption         =   "Export Map"
      Begin VB.Menu menuFileMenuSave 
         Caption         =   "To File"
      End
      Begin VB.Menu menuFileCipboard 
         Caption         =   "To Clipboard"
      End
   End
   Begin VB.Menu menuFoundationData 
      Caption         =   "WVS Backdrop"
   End
   Begin VB.Menu menuTools 
      Caption         =   "Tools"
      Begin VB.Menu AdditionalZoom 
         Caption         =   "Additional zoom tools"
         Begin VB.Menu CaptureBounds 
            Caption         =   "Capture map bounds"
         End
         Begin VB.Menu ZoomtoCapturedBounds 
            Caption         =   "Zoom to Captured Bounds"
         End
         Begin VB.Menu menuOptimumZoom 
            Caption         =   "Zoom to Chart"
         End
         Begin VB.Menu CentreOn 
            Caption         =   "Centre on Selected position"
         End
      End
      Begin VB.Menu MenuManipulate 
         Caption         =   "Manipulate Map"
         Begin VB.Menu menuThemes 
            Caption         =   "Manipulate Themes and Legends"
         End
         Begin VB.Menu MenuProjection 
            Caption         =   "Manipulate Projection "
         End
         Begin VB.Menu menuBackground 
            Caption         =   "Map Background colour"
            Begin VB.Menu MenuBackgroundWhite 
               Caption         =   "White"
            End
            Begin VB.Menu MenuBackgroundBlue 
               Caption         =   "Light Blue"
            End
            Begin VB.Menu menuBackgroundCustom 
               Caption         =   "Custom Colour"
            End
         End
      End
      Begin VB.Menu LabelsOff 
         Caption         =   "Turn off all labels"
      End
      Begin VB.Menu menuBearing 
         Caption         =   "Show Bearing and Distance"
      End
      Begin VB.Menu menuRegisterTable 
         Caption         =   "Register Table"
         Enabled         =   0   'False
      End
   End
   Begin VB.Menu menuImportLayer 
      Caption         =   "File handling"
      Begin VB.Menu LoadGeotiff 
         Caption         =   "Load GeoTiff"
      End
      Begin VB.Menu LoadShape 
         Caption         =   "Load Shapefile"
      End
      Begin VB.Menu menuTabImport 
         Caption         =   "Load MapInfo Tab File"
      End
      Begin VB.Menu menuAsciiImport 
         Caption         =   "Load Ascii text"
      End
      Begin VB.Menu DefaultDirectory 
         Caption         =   "Set default directories"
      End
   End
   Begin VB.Menu menuDbExtraction 
      Caption         =   "Database Extraction"
      Begin VB.Menu menuDbGridded 
         Caption         =   "Climatology data"
      End
      Begin VB.Menu menuDbObserved 
         Caption         =   "Observed Physical Profiles (Serd)"
      End
      Begin VB.Menu menuDbObs 
         Caption         =   "Observations"
      End
      Begin VB.Menu menuDbObsTrcks 
         Caption         =   "Observations - Tracks"
      End
      Begin VB.Menu menuDbTopograghic 
         Caption         =   "Topographic Data "
      End
      Begin VB.Menu menuDbOFD 
         Caption         =   "Ocean Features"
      End
   End
   Begin VB.Menu mnuPopUp 
      Caption         =   "PopUp"
      Visible         =   0   'False
      Begin VB.Menu popUpSelect 
         Caption         =   "Select"
      End
      Begin VB.Menu popUpDraw 
         Caption         =   "Draw"
         Begin VB.Menu popUpDrawPoint 
            Caption         =   "Point"
         End
         Begin VB.Menu popUpDrawLine 
            Caption         =   "Line"
         End
         Begin VB.Menu popUpDrawPolygon 
            Caption         =   "Polygon"
         End
         Begin VB.Menu popUpDrawText 
            Caption         =   "Text"
         End
      End
      Begin VB.Menu popUpDelete 
         Caption         =   "Delete"
      End
   End
   Begin VB.Menu menuDataEdit 
      Caption         =   "Data Edit"
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 0"
         Index           =   0
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 1"
         HelpContextID   =   1
         Index           =   1
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 2"
         Index           =   2
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 3"
         Index           =   3
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 4"
         Index           =   4
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 5"
         Index           =   5
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 6"
         Index           =   6
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 7"
         Index           =   7
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 8"
         Index           =   8
         Visible         =   0   'False
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 9"
         Index           =   9
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 10"
         Index           =   10
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 11"
         Index           =   11
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 12"
         Index           =   12
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 13"
         Index           =   13
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 14"
         Index           =   14
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 15"
         Index           =   15
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 16"
         Index           =   16
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 17"
         Index           =   17
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 18"
         Index           =   18
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 19"
         Index           =   19
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 20"
         Index           =   20
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 21"
         Index           =   21
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 22"
         Index           =   22
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 23"
         Index           =   23
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 24"
         Index           =   24
      End
      Begin VB.Menu menuDataEditArray 
         Caption         =   "Data Edit 25"
         Index           =   25
      End
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


'Log on form to the database - do not continue unless log is achived

Private Sub Form_Load()

    'Form in LogOnForm.frm
    Set SQLDict = CreateObject("Scripting.Dictionary")

    'Label the form with the version number
    LogOnForm.Show
    
    Call LabelForm
    
End Sub

Private Sub LabelForm()
    Dim sVersion As String
    Dim CompileDateTime As String
    Dim FileName As String
    
    sVersion = App.Major & "." & App.Minor & "." & App.Revision
    
    FileName = App.Path & IIf(Right$(App.Path, 1) = _
                   "\", "", "\") & App.EXEName & ".exe"
                              
    If Dir$(FileName) <> "" Then
        CompileDateTime = "(built " & FileDateTime(FileName) & ")"
    Else
        CompileDateTime = ""
    End If

    Caption = Caption & " (version " & sVersion & ")  " '& CompileDateTime

End Sub


Public Function AccessAllowed(ByVal table_name As String) As Boolean
    Dim SQLQuery As String
    Dim Results As Object
    
    AccessAllowed = False
    
    SQLQuery = "SELECT count(*) from access_control where upper(table_name) = '" & _
                    UCase$(table_name) & "' and upper(user_name) = '" & UCase$(UID) & "'"

    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    If Not Results.EOF Then
        If val(Results("count(*)")) > 0 Then
            AccessAllowed = True
        End If
    End If

End Function

' Initialise values for display of the map
Public Sub Initialise()

    ' Set the default projection, datum and view
    
    Call SetDefaultView

    'Create a User layer for plotting etc. and set default symbol to red cross

    Call SetUserLayerStyle

    ' Create Custom Tools (icons on toolbar)

    Call CreateTools
    
    ' Set default style for the map
    
    Call SetDefaultStyles
    
    ' Update the layer tree dialog box to show inital layers

    Call UpdateSelectableLayer
    
    ' Set the PointInformation tracking variable to false
    PointInformationIsLoaded = False
    ShowAttributesIsLoaded = False

    ' Now display the map
    
    Show

    ' disable job tracking button and enable if allowed
    Toolbar1.Buttons(21).Visible = False
    
    If AccessAllowed("JOB_TRACKING") Then
        Toolbar1.Buttons(21).Visible = True
    End If
    
    ' disable marine life button
    Toolbar1.Buttons(22).Visible = False
    
    If AccessAllowed("MARINE_LIFE") Then
        Toolbar1.Buttons(22).Visible = True
    End If
        
    ' disable beach editing button
    Toolbar1.Buttons(23).Visible = False
    
    If AccessAllowed("BEACH") Then
        Toolbar1.Buttons(23).Visible = True
    End If

    ' set entries in the Dat Edit menu
    
    Call SetUpDataEdit

End Sub


'***************************** INITIALIALISE SUBROUTINES ***********************************

Private Sub SetDefaultView()
    
    Dim Rect As New Rectangle
    Dim strSQL As String
    Dim Dyn As Object
    Dim strUser As String
    
    strUser = UCase$(UID)
    
  
   'Display world countries on Mercator projection
    
    Map1.DisplayCoordSys.Set miMercator, 104, miUnitMeter, 0#
  
    Map1.NumericCoordSys.Set miLongLat, Map1.DisplayCoordSys.Datum
    
    Map1.MapUnit = miUnitMeter
    
    Map1.RedrawInterval = 10
    
    'Set boundaries of map
    
    Rect.Set -180, -60, 180, 80
    
    Set Map1.Bounds = Rect
    
    'Store the old bounds for use later
    
    OldBounds.Set -180, -60, 180, 80

    NumVertices = 4
    XArray(1) = -180#
    XArray(4) = -180#
    YArray(1) = 90#
    YArray(2) = 90#
    XArray(2) = 180#
    XArray(3) = 180#
    YArray(3) = -90
    YArray(4) = -90#
    
    'Turn off txt mouse error messages
    
    txtMouseLatitude.HideErrors = True
    txtMouseLatitude.FormatType = 1
    txtMouseLatitude.CoOrdType = 0
    
    txtMouseLongitude.HideErrors = True
    txtMouseLongitude.FormatType = 1
    txtMouseLongitude.CoOrdType = 1
        
    ' set default output file path from database
    strSQL = "select * from directory_lookup where user_name = '$DEFAULT$' and lookup_type = 'OUTPUT'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        OutputFilePath = Dyn("file_path")
    Else
        OutputFilePath = "c:\program files\meds\"
    End If
        
    'Allow override of default file path for output to a safe place
    
    strSQL = "select * from DIRECTORY_LOOKUP where user_name = '" & strUser & "' and lookup_type = 'OUTPUT'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        OutputFilePath = Dyn("file_path")
    End If
      
    strSQL = "select * from DIRECTORY_LOOKUP where user_name = '$DEFAULT$' and lookup_type = 'INPUT'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        InputFilePath = Dyn("file_path")
         If Dir(InputFilePath, vbDirectory) = "" Then
            MsgBox "Input file path '" & InputFilePath & "'stored in database table 'DIRECTORY_LOOKUP' as '$DEFAULT$' is not set to a valid directory - contact system admin to change it"
            InputFilePath = "c:\" 'somewhere we know will exist
         End If
    Else
        InputFilePath = "e:\meds\"
    End If
    
    ' Override the default input file path if the user has one
    
    strSQL = "select * from DIRECTORY_LOOKUP where user_name = '" & strUser & "' and lookup_type = 'INPUT'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    If Not Dyn.EOF Then
        InputFilePath = Dyn("file_path")
         
         If Dir(Dyn("file_path"), vbDirectory) = "" Then
            MsgBox "Input file path '" & Dyn("file_path") & "' for user '" & strUser & " is invalid use 'File Handling' 'Set Default directories' to set correctly "
         Else
            InputFilePath = Dyn("file_path")
         End If
    End If
    
    
    
    
    
End Sub

Private Sub SetUserLayerStyle()
    Dim UserLayer As New Layer
    
    'Create layer for user geometries created ont he fly to be stored.
    
    Set UserLayer = Map1.Layers.CreateLayer("User")
    
    Set UserLayer = Map1.Layers("User")
    
    'Set user layer default style
    
    UserLayer.OverrideStyle = True
    UserPointStyle.SymbolType = miSymbolTypeBitmap
    UserPointStyle.SymbolBitmapColor = miColorRed
    UserPointStyle.SymbolBitmapOverrideColor = True
    UserPointStyle.SymbolBitmapTransparent = True
    UserPointStyle.SymbolBitmapSize = 18
    UserPointStyle.SymbolBitmapName = "cross.bmp"
    UserPointStyle.SymbolBitmapColor = miColorRed
    Map1.Layers.Item("User").Style = UserPointStyle

End Sub

Private Sub CreateTools()

    ' Normal_Tool = Default tool for clicking on map and showing position and list of charts
    Map1.CreateCustomTool NORMAL_TOOL, miToolTypePoint, miDefaultCursor
    ' Bearing_Distance_Tool = Bearing and Distance Tool
    Map1.CreateCustomTool BEARING_DISTANCE_TOOL, miToolTypeLine, miSelectCursor
    'POINT_TOOL = Selection of user object tool
    Map1.CreateCustomTool POINT_TOOL, miToolTypePoint, miDefaultCursor
    'POLY_LINE_TOOL = Dynamically create a line on screen
    Map1.CreateCustomTool POLY_LINE_TOOL, miToolTypePoly, miLabelCursor
    'POLYGON_TOOL = Dynamically create a polygon on screen
    Map1.CreateCustomTool POLYGON_TOOL, miToolTypePoly, miRegionSelectCursor
    'TEXT_TOOL = Dynamically add text to a screen
    Map1.CreateCustomTool TEXT_TOOL, miToolTypePoint, miCrossCursor
    
End Sub

Private Sub SetDefaultStyles()
    
    'Set defult settings or the screen and user
    
    Map1.CurrentTool = NORMAL_TOOL
    Map1.SelectionStyle.RegionPattern = 52
    Map1.SelectionStyle.RegionBorderColor = miColorBlack
    Map1.SelectionStyle.RegionBorderStyle = 65
    txtSelectableLayer = "World Countries"

End Sub

Public Sub UpdateSelectableLayer()
  'Update the selected layer information
Dim DeletedLayer As Boolean
Dim i As Integer
    
    'Update the tree view of layers in the system
    Call TreeView_Update
    
    If Map1.Layers.Count > 0 Then
              
        DeletedLayer = True
        
        'Test if a layer can be selected and test if a layer has been deleted.
        
        For i = 1 To Map1.Layers.Count  'loop for all layers
            If Map1.Layers(i).Name = "World Countries" Then
                Map1.Layers.Move i, Map1.Layers.Count
            End If
            If Map1.Layers(i).Type <> miLayerTypeRaster And Map1.Layers(i).Name <> "World Countries" And Map1.Layers(i).Name <> txtSelectableLayer Then
               Map1.Layers(i).Selectable = False
            End If
            If Map1.Layers(i).Name = txtSelectableLayer Then
                DeletedLayer = False
            End If

        Next
        
        If DeletedLayer = True Then
            txtSelectableLayer = ""
        End If
        
    End If

    
End Sub
'***************************** END OF INITIALISE SUBROUTINES  ****************************************

'***************************** INFORMATION WINDOW SUBROUTINES ****************************************

'Create treeview of nodes

Private Sub TreeView_Update()
    
'Update tree view of layers
Dim nodX As Node
Dim TableList As Object
Dim k, i

    Set TableList = CreateObject("Scripting.Dictionary")

    TreeView1.LineStyle = tvwRootLines
    TreeView1.Checkboxes = True
    TreeView1.Nodes.Clear
     
    Set nodX = TreeView1.Nodes.Add(, , "Layer", "Visible Layers")
    TreeView1.Nodes.Item("Layer").Root.Checked = True
    TreeView1.Nodes.Item("Layer").Root.Expanded = True
    
    'loop through all and add all layers to the treeView control and check the visible ones
   
    For Each LyrTree In Map1.Layers
        
        Set nodX = TreeView1.Nodes.Add("Layer", tvwChild, LyrTree.Name, LyrTree.Name)
        TableList.Add LyrTree.Name, True

        If LyrTree.Visible = True Then
            nodX.Checked = True
        Else
            nodX.Checked = False
        End If
    Next
    
    k = SQLDict.keys
    Dim LayerName As String
       For i = 0 To SQLDict.Count - 1
            If Right(k(i), 4) = "Name" Then
                LayerName = SQLDict.Item(k(i))
                If TableList.Exists(LayerName) = False Then
                    If SQLDict.Exists(LayerName & "Attribute") = True Then
                        SQLDict.Remove LayerName & "Attribute"
                    End If
                    If SQLDict.Exists(LayerName & "DataTypeIndex") = True Then
                        SQLDict.Remove LayerName & "DataTypeIndex"
                    End If
                    If SQLDict.Exists(LayerName & "ObsTable") = True Then
                        SQLDict.Remove LayerName & "ObsTable"
                    End If
                    If SQLDict.Exists(LayerName & "Name") = True Then
                        SQLDict.Remove LayerName & "Name"
                    End If
                    If SQLDict.Exists(LayerName & "Gridded") = True Then
                        SQLDict.Remove LayerName & "Gridded"
                    End If
                    If SQLDict.Exists(LayerName & "Generic") = True Then
                        SQLDict.Remove LayerName & "Generic"
                    End If
                    If SQLDict.Exists(LayerName & "JobColumn") = True Then
                        SQLDict.Remove LayerName & "JobColumn"
                    End If
                End If
            End If
        Next
    
    
End Sub


Private Sub menuDataEditArray_Click(Index As Integer)
    
    If DataSearch.SetDataDetails(menuDataEditArray(Index).Tag) Then
        DataSearch.Show
    End If
    
End Sub

Private Sub menuDbObs_Click()
    GenericIndex = 1
    SelectDataForm.Show

End Sub

Private Sub menuDbObsTrcks_Click()
    GenericIndex = 8
    SelectDataForm.Show

End Sub

Private Sub menuDbOFD_Click()
    GenericIndex = 4
    SelectDataForm.Show
End Sub

Private Sub menuDbTopograghic_Click()
    GenericIndex = 3
    SelectDataForm.Show

End Sub

Private Sub menuExportData_Click()
    If Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count > 0 Then
        If Main.txtSelectableLayer.Text <> "User" Then
            DataOutput.Show
        End If
    Else
        MsgBox ("You must first select some features")
    End If
End Sub

Private Sub menuOutputLayerData_Click()
    If SQLDict.Exists(Main.txtSelectableLayer.Text & "Name") = False Then
        MsgBox ("No Exportable Layer Selected")
        Exit Sub
    End If
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        MsgBox ("Climatology cannot be exported using the MEIC format")
        Exit Sub
      End If
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 8 Then
        MsgBox ("Tracks and Envelopes cannot be exported using the MEIC format")
        Exit Sub
    End If
    
    Call OutputCSVFile
End Sub

Private Sub TreeView1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then DisplayDatumInfo
End Sub

Private Sub TreeView1_NodeCheck(ByVal Node As MSComctlLib.Node)

'Set nodes on/off

    Select Case Node
    'Root node ?
    Case "Visible Layers":
        If Node.Checked = True Then
            For LyrCount = 2 To TreeView1.Nodes.Count
                TreeView1.Nodes.Item(LyrCount).Checked = True
                Map1.Layers.Item(TreeView1.Nodes.Item(LyrCount).Text).Visible = True
            Next
        Else
            For LyrCount = 2 To TreeView1.Nodes.Count
                TreeView1.Nodes.Item(LyrCount).Checked = False
                Map1.Layers.Item(TreeView1.Nodes.Item(LyrCount).Text).Visible = False
            Next
        End If
    'Other Nodes
    Case Else:
        If Node.Checked = True Then
            If TreeView1.Nodes.Item(1).Checked = False Then
                TreeView1.Nodes.Item(1).Checked = True
            End If
            Map1.Layers.Item(Node.Text).Visible = True
        Else
            For LyrCount = 2 To TreeView1.Nodes.Count
                If TreeView1.Nodes.Item(LyrCount).Checked = True Then
                        LyrCount = TreeView1.Nodes.Count + 2
                End If
            Next
            Map1.Layers.Item(Node.Text).Visible = False
            If LyrCount = TreeView1.Nodes.Count + 1 Then
                    TreeView1.Nodes.Item(1).Checked = False
            End If
        End If
        
    End Select

End Sub

Private Sub Treeview1_nodeclick(ByVal Node As MSComctlLib.Node)
'User clicked on a node - this is now the selected layer

Dim LayerCount As Integer
Dim flag As Integer
    
    flag = 1
    'Test that seelcted layer is not raster
    For LayerCount = 1 To Map1.Layers.Count
        If Map1.Layers(LayerCount).Type = miLayerTypeRaster And Map1.Layers(LayerCount).Name = Node Then
            MsgBox "Cannot use raster Image as Selectable Layer"
            flag = 0
        Exit For
        End If
     Next
    
    If Node <> "Visible Layers" And flag > 0 Then
        txtSelectableLayer = Node
    End If
     
End Sub

'End of treeview

Private Sub TreeView1_DblClick()

' Throw up the MapX layers dialog when there is a double click on the
' tree view

     Map1.Layers.LayersDlg
     
     TreeView_Update

End Sub

'Click on the chart list box

Public Sub liChartList_Click()
    
    Dim i As Integer
    Dim Ftrs As Features
    Dim dset As Dataset
    Dim Lyr As Layer
    Dim Numfeatures As Long
    Dim pt As New Point
    Dim SelectedStyle As New Style
   
    If LayerExists("Chart Panel") Then
        
        Set Lyr = Map1.Layers("Chart Panel")
        Set dset = Map1.Datasets.Add(miDataSetLayer, Lyr)
        Set Lyr.LabelProperties.Dataset = dset
        Set Lyr.LabelProperties.DataField = dset.Fields.Item("Rowid")
                
        pt.Set txtLongitude.value, txtLatitude.value
        Set Ftrs = Lyr.SearchWithinDistance(pt, 0, 0, 1)
        Numfeatures = Ftrs.Count
        
        For i = 1 To Numfeatures
        '   MsgBox "Name = " & ftrs(i).Name & "selected chart = " & RowidArray(liChartList.ListIndex + 1)
            If Ftrs(i).Name = RowidArray(liChartList.ListIndex + 1) Then
                Lyr.Selection.Replace Ftrs(i)
                Map1.Refresh
                Exit For
            End If
        Next
        
    End If
    
    Call FetchChartBackdrop(Map1)
    
End Sub
'"Set As backdrop" Button


'"Entering position manually for charts"

Private Sub txtLongitude_lostfocus()

        Call GetChartList(txtLatitude.value, txtLongitude.value)
        
End Sub
'***************************** END OF INFORMATION WINDOW  ****************************************

'*****************************       MENU BAR ACTIONS     ****************************************

'-------------------------- Exit

Private Sub ProgramExit_Click()

    Unload Me
      
End Sub


'--------------------------Export Map

Private Sub menuFileMenuSave_Click()
  
'Save current map to file

Dim Sfile As String
    
    On Error GoTo MapErr

    'Use common dialog to fetch file name
    
    With CommonDialog1
             .DialogTitle = "Export map"
             .Flags = 0
             .FileName = ""
             .CancelError = True
             .InitDir = OutputFilePath
             .Filter = "GIF image(*.gif)|*.gif|TIF (*.tif)|*.tif|Bitmap (*.bmp)|*.bmp|JPEG image (*.jpeg)|*.jpeg|Portable Network Graphic (*.png)|*.png|Photoshop (*.psd)|*.psd|Meta file (*.wmf)|*.wmf"
             .ShowSave
             If Len(.FileName) = 0 Then
                 Exit Sub
             End If
             Sfile = .FileName
    End With

    'Allow highlights to be exported
    
    Map1.ExportSelection = True
       
    ' Select output type based on order of filters in the .Filter statement
 
    Select Case CommonDialog1.FilterIndex
        Case 1: ' Gif
            Map1.ExportMap Sfile, miFormatGIF
        Case 2: ' Tif
            Map1.ExportMap Sfile, miFormatTIF
        Case 3: ' Bitmap
            Map1.ExportMap Sfile, miFormatBMP
        Case 4: ' JPEG
            Map1.ExportMap Sfile, miFormatJPEG
        Case 5: ' PNG
            Map1.ExportMap Sfile, miFormatPNG
        Case 6: ' PSD
            Map1.ExportMap Sfile, miFormatPSD
        Case 7: ' WMF
            Map1.ExportMap Sfile, miFormatWMF
        Case Else:
            MsgBox "Please select an output format"
    End Select
    
    Exit Sub
      
MapErr:

    MsgBox err.description
   
End Sub

Private Sub menuFileCipboard_Click()
'save current map to the clipboard

    Map1.ExportSelection = True
    Map1.ExportMap "clipboard", miFormatBMP

End Sub

'-----------------------------WVS Backdrop

Private Sub menuFoundationData_Click()

Dim i As Integer
Dim Rect As New Rectangle, SavedBounds As New Rectangle

    'turn off all layers
    
    For i = 1 To Map1.Layers.Count
        Map1.Layers(i).Visible = False
    Next
    
    'zoom to map extents
    Set SavedBounds = Map1.Bounds
    
    Rect.Set -180, -90, 180, 90
    Set Map1.Bounds = Rect
    
    'continue with load
    
    'Display Dialog box
    
    WVSdialog.Show
    
    'Load Bathymetry contour line
    WVSdialog.WVSTextBox(0).Text = "Loading.........."
    WVSdialog.Refresh
    
    LoadContourLine Map1 'Utilities.bas
    
    'Load Bathymetry Contour Colours
    
    WVSdialog.WVSTextBox(0).Text = "Loaded"
    WVSdialog.WVSTextBox(1).Text = "Loading.........."
    WVSdialog.Refresh
    
    LoadBathymetry Map1 'Utilities.bas
    
    'Load Coastline
    
    WVSdialog.WVSTextBox(1).Text = "Loaded"
    WVSdialog.WVSTextBox(2).Text = "Loading..........."
    WVSdialog.Refresh
    
    LoadCoastline Map1 'Utilities.bas
    
    Call UpdateSelectableLayer
    
    'Clear dialog and hide
    
    For i = 0 To 2
        WVSdialog.WVSTextBox(i) = " "
    Next
    
    Unload WVSdialog
    
    menuFoundationData.Enabled = False
    
    'Tidy-up
    
    'zoom to old bounds
    
     Map1.Bounds = SavedBounds

        
End Sub

'------------------------------------------------ Tools
'Zoom options

'Zoom to captured bounds

Private Sub CaptureBounds_Click()
    
    Set OldBounds = Map1.Bounds
 
End Sub

'Capture current bounds

Private Sub ZoomtoCapturedBounds_Click()
Dim Rect As New Rectangle

    Set Rect = Map1.Bounds
    Map1.Bounds = OldBounds
    Set OldBounds = Rect

End Sub

'Zoom to optimum level for raster backdrop

Private Sub menuOptimumZoom_click()
    
    Call Zoom100(Map1)
        
End Sub
'zoom to captured position

Private Sub CentreOn_Click()

'Draw the default user layer symbol on the map at the point the user clicked
'and add the cross to the user layer

    Dim ftrSymbol As Feature
    Dim ptClickPoint As New Point
    Dim curzoom As Double
    Dim ftrFactory As FeatureFactory
    
    'Set zoom level to current zoom level
    curzoom = Map1.Zoom
    Set ftrFactory = Map1.FeatureFactory

    'Set point to the position clicked on by the user
    ptClickPoint.Set txtLongitude.value, txtLatitude.value
    'add point to layer
    Set ftrSymbol = ftrFactory.CreateSymbol(ptClickPoint, UserPointStyle)
    Map1.Layers("User").AddFeature ftrSymbol
    Set ftrSymbol = Nothing

    ' Zoom to center on the point
    Map1.ZoomTo curzoom, txtLongitude.value, txtLatitude.value
        
End Sub

'Change map view

'Alter projection dialog

Private Sub MenuProjection_Click()

    On Error GoTo label
    
    Map1.DisplayCoordSys.PickCoordSys
    
    Exit Sub

label:

    MsgBox err.description
    
End Sub

'alter themes dialog

Private Sub menuThemes_Click()
 Dim i As Integer
 
 On Error Resume Next
 
 For i = 1 To Map1.Datasets.Count

    Map1.Datasets(i).Themes(1).Legend.LegendDlg
    Map1.Datasets(i).Themes(1).ThemeDlg

 Next
 
End Sub

'Alter backdrop colour

Private Sub MenuBackgroundBlue_Click()
    'set a blue back drop
    
    Map1.BackColor = RGB(150, 255, 255)
    
End Sub


Private Sub menuBackgroundCustom_Click()
    
    'user sets backdrop colour
        
    On Error Resume Next
    
    With CommonDialog1
        .Flags = cdlCCPreventFullOpen Or cdlCCRGBInit
        .Color = Map1.BackColor
            .CancelError = False
            .ShowColor
            Map1.BackColor = .Color
    End With
    
End Sub

Private Sub MenuBackgroundWhite_Click()
    'set a white back drop
    
    Map1.BackColor = RGB(255, 255, 255)
    
End Sub

' turn off all use labels

Private Sub LabelsOff_Click()
Dim i As Integer
    
    For i = 1 To Map1.Layers.Count
        Map1.Layers(i).ClearCustomLabels
    Next
    
End Sub

'Set to tool to show Bearing and distance

Private Sub menuBearing_Click()

    Map1.CurrentTool = BEARING_DISTANCE_TOOL
                
End Sub

'Utility to register a table - only available to {insert-admin-user}

Private Sub menuRegisterTable_Click()

    RegisterTableForm.Show

End Sub
'------------------------------End of tools option

'------------------------------File Handling

'Change the default directories

Private Sub DefaultDirectory_Click()

    ChangeDirectory.Show
    
End Sub

'Load a shape file in as a layer

Private Sub LoadShape_Click()
Dim Lyr As Layer
Dim LayerInfoObject As New LayerInfo
Dim Sfile As String
Dim Items() As String
Dim i As Long
Dim NewCoordSys As CoordSys
Dim Ds As mapxlib.Dataset
    
    On Error GoTo label
    
    With CommonDialog1
        .DialogTitle = "SHAPEFILE name"
        .Flags = 0
        .FileName = ""
        .CancelError = True
        .InitDir = InputFilePath
        .Filter = "geotif (*.shp)|*.shp"
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName
    End With
    
    If Main.LayerExists(Sfile) Then
        MsgBox "Layer already loaded"
    Else

        Items() = Split(Sfile, "\")
        
    'Load directly from a shapefile
    
    'first set the coordinate system
    
        Set NewCoordSys = Map1.NumericCoordSys.Clone()
        
    'load shapefile
    
        LayerInfoObject.Type = miLayerInfoTypeShape
        LayerInfoObject.AddParameter "name", Items(UBound(Items))
        LayerInfoObject.AddParameter "filespec", Sfile
        LayerInfoObject.AddParameter "coordsys", NewCoordSys
    
        Set Lyr = Map1.Layers.Add(LayerInfoObject, 1)
    
        Set Ds = Map1.Datasets.Add(6, Lyr, Items(UBound(Items)))
        
        Call UpdateSelectableLayer
       
    End If
    
    Exit Sub
    
label:
     MsgBox err.description
End Sub

'Load a geotiff in as a layer

Private Sub LoadGeotiff_Click()
Dim Lyr As Layer
Dim LayerInfoObject As New LayerInfo
Dim Sfile As String
Dim Items() As String
Dim i As Long
    
    On Error GoTo label
    
    With CommonDialog1
        .DialogTitle = "Geotiff file name"
        .Flags = 0
        .FileName = ""
        .CancelError = True
        .InitDir = InputFilePath
        .Filter = "geotif (*.tif)|*.tif"
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName
    End With
    
    If Main.LayerExists(Sfile) Then
        MsgBox "Layer already loaded"
    Else

        Items() = Split(Sfile, "\")
        
    'Load directly from a geotiff

        LayerInfoObject.Type = miLayerInfoTypeRaster
        LayerInfoObject.AddParameter "name", Items(UBound(Items))
        LayerInfoObject.AddParameter "filespec", Sfile
    
        Map1.Layers.Add LayerInfoObject
        
        Map1.Bounds = Map1.Layers(Items(UBound(Items))).Bounds
        
        Map1.NumericCoordSys.Set miLongLat, Map1.DisplayCoordSys.Datum
    
        Call Main.UpdateSelectableLayer
       
    End If
    
    Exit Sub
    
label:

     MsgBox err.description
    
End Sub

'Ascii file import

Private Sub menuAsciiImport_Click()
    Dim Sfile As String
    
    On Error GoTo MapErr
    
    With CommonDialog1
             .DialogTitle = "Import data"
             .Flags = 0
             .FileName = ""
             .CancelError = True
             .InitDir = InputFilePath
             .Filter = "Text file(*.txt)|*.txt"
             .ShowOpen
             If Len(.FileName) = 0 Then
                 Exit Sub
             End If
             Sfile = .FileName
    End With

    ImportData Sfile, Map1      ' See module DataImport.bas
    
    Call UpdateSelectableLayer
    DoEvents
    
    Exit Sub
      
MapErr:

     MsgBox err.description

End Sub

'Tab file Import

Sub menuTabImport_click()
    
    Dim Sfile As String
    Dim Lyr As New Layer

    On Error GoTo MapErr
    
    With CommonDialog1
             .DialogTitle = "Add Layer"
             .Flags = 0
             .FileName = ""
             .CancelError = True
             .InitDir = InputFilePath
             .Filter = "Tab file(*.tab)|*.tab"
             .ShowOpen
             If Len(.FileName) = 0 Then
                 Exit Sub
             End If
             Sfile = .FileName
    End With
                      
    Set Lyr = Map1.Layers.Add(Sfile)
          
    Lyr.OverrideStyle = True
    Lyr.Style.SymbolType = miSymbolTypeBitmap
    Lyr.Style.SymbolBitmapColor = miColorRed
    Lyr.Style.SymbolBitmapOverrideColor = True
    Lyr.Style.SymbolBitmapTransparent = True
            
    Call UpdateSelectableLayer
    DoEvents
    
    Exit Sub
    
MapErr:

    MsgBox err.description
        
End Sub

'Database Extraction

Private Sub menuDbObserved_Click()
    GenericIndex = 6
    SelectDataForm.Show
    
    'Serdform.Show

End Sub
'Fetch Representative data from the database

Private Sub menuDbGridded_Click()
    GenericIndex = 5
    SelectDataForm.Show
 
    'FetchRepData.Show
   
End Sub

'Database Information

'Dispaly information on the current layer

Private Sub menuDbInformation_Click()

 
    If TestSQLLayer() Then
        SQLLayerForm.LayerName(0).Text = SQLLayerInfo(SQLCurrentPointer, SQLLayerNameIdx)   ' Layer Name
        SQLLayerForm.LayerName(1).Text = SQLLayerInfo(SQLCurrentPointer, SQLDataClassIdx)   ' Data Class
        SQLLayerForm.LayerName(2).Text = SQLLayerInfo(SQLCurrentPointer, SQLDataTypeIdx)    ' Data Type
        SQLLayerForm.LayerName(3).Text = SQLLayerInfo(SQLCurrentPointer, SQLTemporalIdx)    ' Temporal Range
        SQLLayerForm.LayerName(4).Text = SQLLayerInfo(SQLCurrentPointer, SQLParentLayerIdx) ' Parent detail
        SQLLayerForm.SQLStatement.Text = SQLLayerInfo(SQLCurrentPointer, SQLStatementIdx)   ' SQL Statement
        
        SQLLayerForm.Show
    Else
        MsgBox "Current Layer is not from database"
    End If
   
End Sub


'*****************************   END OF MENU BAR ACTIONS     ****************************************

'*****************************           MAPX ICONS          ****************************************

Private Sub Toolbar1_ButtonClick(ByVal Button As Button)
Dim Rect As New Rectangle

    On Error Resume Next
    
    Select Case Button.Key
        Case "Normal"
            Map1.CurrentTool = NORMAL_TOOL
        Case "Zoom in"
            Map1.CurrentTool = miZoomInTool
        Case "Zoom out"
            Map1.CurrentTool = miZoomOutTool
        Case "Centre"
            Map1.CurrentTool = miCenterTool
        Case "Pan"
            Map1.CurrentTool = miPanTool
        Case "WorldView"
            Rect.Set -180, -60, 180, 80
            Set Map1.Bounds = Rect
        Case "Select"
            Map1.CurrentTool = miSelectTool
        Case "Layers"
            Map1.Layers.LayersDlg
            TreeView_Update
        Case "Select rectangle"
            Map1.CurrentTool = miRectSelectTool
        Case "Select circle"
            Map1.CurrentTool = miRadiusSelectTool
        Case "Select polygon"
            Map1.CurrentTool = miPolygonSelectTool
        Case "label point"
            Map1.CurrentTool = miLabelTool
        Case "To File"
            If Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count > 0 Then
                DataOutput.Show
            Else
                MsgBox ("You must first select some features")
            End If
        Case "Produce Graph"
            If Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count > 0 Then
                Call SetupGraphTables
            Else
                MsgBox ("You must first select some features")
            End If
            'Call MultipleDetails(Map1, txtSelectableLayer, Map1.Layers.Item(txtSelectableLayer).Selection.Count)
        Case "Data View"
            If Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count > 0 Then
                Call GeomDetails(Map1, txtSelectableLayer, 1)
            Else
                MsgBox ("You must first select a feature")
            End If
        Case "Job Tracking"
            JobTracking.Show
        Case "Marine Life"
            MarineLifeSearch.Show
        Case "Beach"
            BeachSearch.Show
     End Select
       
End Sub

'*****************************       END OF MAPX ICONS        ****************************************

'*****************************         Pop-up Menu            ****************************************

'Pop-up options

Private Sub popUpSelect_Click()

    Map1.CurrentTool = miSelectTool
         
End Sub


Private Sub popUpDrawPoint_Click()
        
        Map1.CurrentTool = POINT_TOOL
               
End Sub
Private Sub popUpDrawLine_Click()

        Map1.CurrentTool = POLY_LINE_TOOL
                
End Sub
Private Sub popUpDrawPolygon_Click()

        Map1.CurrentTool = POLYGON_TOOL
                
End Sub
Private Sub popUpDrawText_Click()

        Map1.CurrentTool = TEXT_TOOL
                
End Sub

Private Sub popUpDelete_Click()

        Dim selftr As String
        
        If Map1.Layers("User").Selection.Count > 0 Then
            selftr = Map1.Layers("User").Selection.Item(1)
            Map1.Layers("User").DeleteFeature selftr
        Else
            MsgBox "None Selected"
        End If
               
End Sub

'*****************************      End of Pop-up Menu         ****************************************

'*****************************      General MAP Routines       ****************************************

'If the form is resized automatically set the map and information widows

Private Sub Form_Resize()
Dim ScreenWidth As Double
Dim ScreenHeight As Double

    On Error Resume Next
    
    ScreenWidth = Screen.width * 0.185
    ScreenHeight = Screen.height * 0.13

    Map1.height = Main.height - ScreenHeight
    Map1.width = Main.width - ScreenWidth

    Map1.Visible = True
    
End Sub

'Test to see if cursor is of the form

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

        pctCursorPosition.Visible = False
        
End Sub

'Zoom control
Private Sub Map1_MapViewChanged()

' Ensure that map never shrinks beyond 360 degrees in longitude otherwise the
' Latlong ActiveX control generates error messages
        
Dim Rect As New mapxlib.Rectangle
        
        Set Rect = Map1.Bounds
  
        If Rect.width > 360 Then
            Rect.Set -180, -60, 180, 80
            Set Map1.Bounds = Rect
        ElseIf Rect.height > 180 Then
            Rect.Set -180, -60, 180, 80
            Set Map1.Bounds = Rect
        End If

End Sub

'Test the current tool and perform actions according to type of too used

Private Sub Map1_ToolUsed(ByVal ToolNum As Integer, ByVal x1 As Double, ByVal y1 As Double, ByVal X2 As Double, ByVal Y2 As Double, ByVal Distance As Double, ByVal Shift As Boolean, ByVal Ctrl As Boolean, EnableDefault As Boolean)

    Dim ftrFactory As FeatureFactory
    Dim ptClickPoint As New Point
    
    On Error GoTo ErrorHandler
    
    Set ftrFactory = Map1.FeatureFactory

    Select Case ToolNum
        Case NORMAL_TOOL
            If LayerExists("Chart Panel") Then
               Map1.Layers("Chart Panel").Selection.ClearSelection
            End If
            liChartList.Clear
            txtLatitude = y1
            txtLatitude.ForceReturn
            txtLongitude = x1
            txtLongitude.ForceReturn
            DoEvents
            Call GetChartList(y1, x1)
        Case POINT_TOOL
            Dim ftrSymbol As Feature
            ptClickPoint.Set x1, y1
            Set ftrSymbol = ftrFactory.CreateSymbol(ptClickPoint, UserPointStyle)
            Map1.Layers("User").AddFeature ftrSymbol
            Set ftrSymbol = Nothing
        Case TEXT_TOOL
            Dim ftrText As Feature
            Dim textstyle As New Style
            Dim UserText As String
            UserText = InputBox("Enter Text ", "TEXT")
            ptClickPoint.Set x1, y1
            textstyle.TextFont.Size = 8
            Set ftrText = ftrFactory.CreateText(ptClickPoint, UserText, miPositionCC, textstyle)
            Map1.Layers("User").AddFeature ftrText
            Set ftrText = Nothing
    End Select
    
Exit Sub
    
ErrorHandler:
    MsgBox err.description
End Sub

'If Polygon tool is in use draw lines or polygons (and add to the user layer)

Private Sub Map1_PolyToolUsed(ByVal ToolNum As Integer, ByVal Flags As Long, ByVal Points As Object, _
                              ByVal bShift As Boolean, ByVal bCtrl As Boolean, EnableDefault As Boolean)
                              
    Dim ftrFactory As FeatureFactory
    Dim styMapDefault As Style
    
    On Error GoTo ErrorHandler
    
    Set ftrFactory = Map1.FeatureFactory
    Set styMapDefault = Map1.DefaultStyle

    Select Case Flags
        Case miPolyToolBegin
            ' Insert any code here for begin of polytool
        Case miPolyToolInProgress
            ' Insert any code here for each click to create a node
        Case miPolyToolEnd
            Select Case ToolNum
                Case POLY_LINE_TOOL
                    Dim ftrPLine As Feature
                    Set ftrPLine = ftrFactory.CreateLine(Points, styMapDefault)
                    Map1.Layers("User").AddFeature ftrPLine
                    Set ftrPLine = Nothing
                Case POLYGON_TOOL
                    Dim ftrPolygon As Feature
                    Set ftrPolygon = ftrFactory.CreateRegion(Points, styMapDefault)
                    Map1.Layers("User").AddFeature ftrPolygon
                    Set ftrPolygon = Nothing
            End Select
    End Select
    
    Exit Sub
    
ErrorHandler:
    MsgBox err.description
End Sub
                               
'tests to see what has been selected by the user (clicked on with tht eselection tool)

Private Sub Map1_SelectionChanged()
    
    'On Error GoTo err:
    
    'First test if current layer is an SQL layer
   
    If TestSQLLayer() Then
    
    'Now check the number of points selected

        'If (Map1.Layers.Item(txtSelectableLayer).Selection.Count = 1) And (Map1.CurrentTool = miSelectTool) Then
        '    Call GeomDetails(Map1, txtSelectableLayer, 1)
        'ElseIf Map1.Layers.Item(txtSelectableLayer).Selection.Count > 0 Then
        '    Call MultipleDetails(Map1, txtSelectableLayer, Map1.Layers.Item(txtSelectableLayer).Selection.Count)
        'End If
    End If

    Exit Sub
    
err:
     MsgBox err.description
    
End Sub

' If mouse is moved  perform appropriate actions

Private Sub Map1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

Dim X2 As Double
Dim Y2 As Double
Dim CursorPositionX As Single
Dim CursorPositionY As Single
Dim Lat As Double
        lblCursorTop.BackColor = vbWhite
        lblCursorBottom.BackColor = vbWhite
        lblCursorTop.ForeColor = vbBlack
        lblCursorBottom.ForeColor = vbBlack

'  Get map co-ordinates (X2,Y2) from screen co-ordinates (X,Y)

        Map1.ConvertCoord X, Y, X2, Y2, miScreenToMap
        
'  Put map co-ordinates into latlong control to format correctly

        txtMouseLatitude.value = Y2
        txtMouseLatitude.ForceReturn

        txtMouseLongitude.value = X2
        txtMouseLongitude.ForceReturn

        '  Screen coordinates are in twips so convert to pixels

        CursorPositionX = X * Screen.TwipsPerPixelX
        CursorPositionY = Y * Screen.TwipsPerPixelY
        
        'If Bearing on display bearing and distance information
        
       If Map1.CurrentTool = BEARING_DISTANCE_TOOL And Button = 1 Then
            pctCursorPosition.Visible = True
            lblCursorTop = Format(Bearing(MouseDownX1, MouseDownY1, X2, Y2, Map1), "##0.0") & " degs."
            lblCursorBottom = CLng(Map1.Distance(MouseDownX1, MouseDownY1, X2, Y2)) & " mtrs."
            pctCursorPosition.left = CursorPositionX + 170
            pctCursorPosition.top = CursorPositionY + 875

        'If radius is on display the radius from the point
        
        ElseIf Map1.CurrentTool = miRadiusSelectTool And Button = 1 Then
            pctCursorPosition.Visible = True
            lblCursorTop = "Radius:"
            lblCursorBottom = CLng(Map1.Distance(MouseDownX1, MouseDownY1, X2, Y2)) & " mtrs."
            pctCursorPosition.left = CursorPositionX + 500
            pctCursorPosition.top = CursorPositionY + 500
        End If

End Sub

'Right hand click on a map sets displays menu pop-up
Private Sub Map1_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
 
        If Button = 2 Then
            PopupMenu mnuPopUp
        End If
     
End Sub

' When movining the mouse with bearing or radius tool on
Private Sub Map1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

        If (Button = 1 And Map1.CurrentTool = BEARING_DISTANCE_TOOL) Or _
           (Button = 1 And Map1.CurrentTool = miRadiusSelectTool) Or _
           (Button = 2) Then
                Map1.ConvertCoord X, Y, MouseDownX1, MouseDownY1, miScreenToMap
        End If

End Sub


'************************************** END OF GENERAL MAP FUNCTIONS ******************************

'**************************************    UTILITY ROUTINES USED     ******************************

'Test if the layer still exisist on the map

Function LayerExists(LayerName) As Boolean

Dim i As Integer

    LayerExists = False
    
    For i = 1 To Map1.Layers.Count
            If Map1.Layers(i).Name = LayerName Then
                LayerExists = True
            End If
    Next

End Function

'Test if a selected layer comes from the database

Public Function TestSQLLayer() As Boolean
    Dim CurrentLayer As String
    Dim i As Integer
    Dim Found As Boolean
    
    Found = False
    
    'Set current layer to layer selected by user
    
    If LayerExists(txtSelectableLayer) Then
   
        CurrentLayer = txtSelectableLayer.Text
        
        'Loop while name is not in SQL list of layers
    
        While Not (Found) And i < SQLLayerCount
            If SQLLayerInfo(i, 0) = CurrentLayer Then
                Found = True
                SQLCurrentPointer = i
            End If
            i = i + 1
        Wend

    End If

    TestSQLLayer = Found
    
End Function

'Test if the selected layer changes

Private Sub txtSelectableLayer_Change()
Dim Lyr As Layer
Dim dummy As Boolean

    For Each Lyr In Map1.Layers
        If Lyr.Type <> miLayerTypeRaster And Lyr.Name <> "World Countries" Then
            If Lyr.Name = txtSelectableLayer Then
                Lyr.Selectable = True
            Else
                Lyr.Selectable = False
            End If
        End If
    Next
    
    dummy = TestSQLLayer
    
    Set Lyr = Nothing
End Sub

'
' The dataset name must be less than 30 characters or label lookup doesn't work
' this routine thins down the layer name to achive this by removing characters
' that are unnecessary and then truncating
'
Public Function DatasetNameFromLayer(LayerName As String) As String
Dim i As Integer

    DatasetNameFromLayer = ""
    
    For i = 1 To Len(LayerName)
        Dim character As String
        
        character = Mid(LayerName, i, 1)
        
        If (Asc(character) >= Asc("0") And Asc(character) <= Asc("9")) Or _
             (Asc(character) >= Asc("a") And Asc(character) <= Asc("z")) Or _
               (Asc(character) >= Asc("A") And Asc(character) <= Asc("Z")) _
        Then
            DatasetNameFromLayer = DatasetNameFromLayer & character
        End If
        
    Next i

    '
    ' Also the layer name can be no longer than 30 characters
    '
    If Len(DatasetNameFromLayer) > 30 Then
        DatasetNameFromLayer = left(DatasetNameFromLayer, 30)
    End If
End Function

'Fetch data from database and add as a layer to the current Map

Public Function AddLayer(ByVal Query As String, ByVal Name As String, ByVal bitmapFile As String, _
    ByVal Color As String) As Boolean
Dim Lyr As Layer
Dim LayerInfoObject As New LayerInfo
Dim i, X As Integer, ptr As Integer, j As Integer
Dim strTmp As String
Dim strSQL As String
Dim Dyn As Object
Dim strPass As String
Dim iGeneric As Integer

    ptr = 0
    
    For i = 0 To SQLLayerCount
        
        If Main.LayerExists(SQLLayerInfo(i, SQLLayerNameIdx)) Then
        ' Layer still exists
            'Store Current Layer Info.
            For j = 0 To SQLLAYERCOLS
                SQLLayerInfo(ptr, j) = SQLLayerInfo(i, j)
            Next
            
            'Increment Ptr
            ptr = ptr + 1
        Else
            SQLLayerInfo(i, SQLLayerNameIdx) = ""
        End If
        
    Next
    
    'Set SQLLayerCount to ptr
    SQLLayerCount = ptr

    On Error GoTo SQLerror:
  
    strSQL = "select * from meds_flags where flags_index = 1 and data_type = 'MEDS Procesing Job'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    strPass = Main.Encode(Dyn("flag_value"))
    Dyn.Close
    If LayerExists(Name) Then
        MsgBox "layer already created"
        AddLayer = False
    Else
        LayerInfoObject.Type = miLayerInfoTypeServer
        LayerInfoObject.AddParameter "name", Name
        LayerInfoObject.AddParameter "ConnectString", "SRVR=" & Database & ";UID=" & "{insert-admin-user}" & ";PWD=" & strPass
        'LayerInfoObject.AddParameter "ConnectString", "SRVR=" & Database & ";UID=" & UID & ";PWD=" & Passwd
        LayerInfoObject.AddParameter "Query", Query
        LayerInfoObject.AddParameter "toolkit", "ORAINET"
        LayerInfoObject.AddParameter "AutoCreateDataset", 1
        LayerInfoObject.AddParameter "DatasetName", DatasetNameFromLayer(Name)
        
        iGeneric = SQLDict.Item(Name & "Generic")
        
        If iGeneric = 6 Then
            LayerInfoObject.AddParameter "Cache", "on"
            LayerInfoObject.AddParameter "Mbrsearch", "off"
        Else
            LayerInfoObject.AddParameter "Cache", "off"
            If iGeneric = 5 Or iGeneric = 1 Then
                If SelectDataForm.FixExtents.value = 0 And SelectDataForm.PositionRect.value = 0 Then
                    LayerInfoObject.AddParameter "Mbrsearch", "on"
                Else
                    LayerInfoObject.AddParameter "Mbrsearch", "off"
                End If
            Else
                    LayerInfoObject.AddParameter "Mbrsearch", "on"
            End If
        End If
        Map1.Layers.Add LayerInfoObject
    
        Set Lyr = Map1.Layers(Name)

        Lyr.OverrideStyle = True
        Lyr.Style.SymbolType = miSymbolTypeBitmap
        Lyr.Style.SymbolBitmapColor = miColorBlack
        Lyr.Style.SymbolBitmapOverrideColor = True
        Lyr.Style.SymbolBitmapTransparent = True
        Lyr.Style.SymbolBitmapSize = 10
        Lyr.Style.SymbolBitmapName = bitmapFile
        Lyr.Style.SymbolBitmapColor = Color

        Call UpdateSelectableLayer
        AddLayer = True
        DoEvents
    End If
    
    Exit Function
    
SQLerror:
     MsgBox err.description
    AddLayer = False
   
End Function


Public Sub OutputCSVFile()
    Dim Lyr As Layer
    Dim Fts As Features
    Dim F As Feature
    Dim Query As Dataset
    Dim mjn, mon As Integer
    Dim MEDSGen As Object
    Dim Dyn As Object
    Dim strSQL As String
    Dim i As Integer
    Dim Sfile As String, ReturnValue As String, FilterText As String
    Dim IndexCounter As Integer, DataCounter As Integer, fnum As Integer
    Dim TempString As String, Seperator As String
    Dim strExtension As String
    Dim iFeatureCount As Integer
    
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 6 Then
        Set MEDSGen = CreateObject("ITASerd.MEDSInterface")
    Else
        Set MEDSGen = CreateObject("ITA_Aqua.MEDSGenericInterface")
    End If
    
    strSQL = "select distinct file_extension from field_lookup where data_type_index = " & SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    strExtension = Dyn("file_extension")
    Dyn.Close

    
    'Set the seperator
    FilterText = strExtension & "(" & strExtension & ")"
    'Get filename
    
    With CommonDialog1
        .DialogTitle = "Save data file"
        .Flags = 0
        .FileName = ""
        .CancelError = False
        .InitDir = OutputFilePath
        .Filter = FilterText
        .ShowSave
        
        If Len(.FileName) = 0 Then
            Exit Sub
        End If
        
        Sfile = .FileName & Right(strExtension, 4)
     End With

    Screen.MousePointer = vbHourglass
    MEDSGen.Fkey = Passwd
    MEDSGen.User = UID
    MEDSGen.Database = Database
    MEDSGen.Init
    MEDSGen.DataTypeIndex = SQLDict.Item(Main.txtSelectableLayer.Text & "DataTypeIndex")
    

    Set Lyr = Map1.Layers(txtSelectableLayer.Text)
    Set Query = Map1.Datasets.Item(DatasetNameFromLayer(txtSelectableLayer.Text))
    iFeatureCount = Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).Selection.Count
    If iFeatureCount <= 0 Then
        Set Fts = Main.Map1.Layers.Item(Main.txtSelectableLayer).AllFeatures
        iFeatureCount = Main.Map1.Layers.Item(Main.txtSelectableLayer.Text).AllFeatures.Count
    Else
        Set Fts = Main.Map1.Layers.Item(Main.txtSelectableLayer).Selection
    End If
    For i = 1 To iFeatureCount
        Set F = Fts(i)
        MEDSGen.MedsJobNumber = Query.value(F, "MEDS_JOB_NUMBER")
        MEDSGen.MEDSObservationNumber = Query.value(F, "MEDS_OBSERVATION_NUMBER")
        Set F = Nothing
    Next
    MEDSGen.FileName = Sfile
    MEDSGen.ProcessJob
    MEDSGen.Close
    Screen.MousePointer = vbDefault
    
End Sub
Public Function Encode(strTmp As String) As String
    Dim strPass As String
    Dim i As Integer
    Dim r As Integer
    Dim strKey As String
    
    strKey = "{Insert-Key}"
    For i = 1 To Len(strTmp)
         r = Asc(Mid(strTmp, i, 1)) Xor Asc(Mid(strKey, i, 1))
         strPass = strPass & Chr$(r)
    Next
    Encode = strPass
End Function
Public Function Decode(strTmp As String) As String

End Function

Private Sub SetUpDataEdit()
    Dim Index As Integer
    Dim SQLQuery As String
    Dim Results As Object
    Dim TableName, Alias As String
           
    SQLQuery = "SELECT table_name, data_type_alias FROM generic_edit " & _
               "WHERE upper(row_type) = 'DEFINITION'"
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    Index = 0
    While Not Results.EOF
        If Not IsNull(Results("table_name")) Then
            Set TableName = Results("table_name")
            If IsNull(Results("data_type_alias")) Then
                Alias = TableName
            Else
                Alias = Results("data_type_alias")
            End If
        
            ' is the user authorised to edit this data?
            If AccessAllowed(TableName) Or AccessAllowed(Alias) Then
                menuDataEditArray(Index).Visible = True
                menuDataEditArray(Index).Caption = Alias
                menuDataEditArray(Index).Tag = TableName
                Index = Index + 1
            End If
        End If
        Results.MoveNext
    Wend
    
    If (Index > 0) Then
        For Index = Index To menuDataEditArray.Count - 1
            menuDataEditArray(Index).Visible = False
        Next Index
    Else
        menuDataEdit.Visible = False
    End If
    
End Sub

Private Sub DisplayDatumInfo()
    Dim Cs As CoordSys
    Dim Lyr As Layer
    
    Dim Index As Integer
    
    Set Cs = Map1.DisplayCoordSys
    
    DescribeCoordSys Cs, "Display Coordinate System"
    
    Set Cs = Map1.NumericCoordSys
    
    DescribeCoordSys Cs, "Numeric Coordinate System"
    
    For Index = 1 To Map1.Layers.Count
        Set Lyr = Map1.Layers(Index)
        Set Cs = Lyr.CoordSys
        
        DescribeCoordSys Cs, Lyr.Name
    Next Index
    
End Sub

Private Sub DescribeCoordSys(Cs As CoordSys, Name As String)
    Dim Message As String
    Dim Dt As Datum
    
    Set Dt = Cs.Datum
    
    Message = "Layer        : " & Name
    Message = Message & vbLf & CoordSysTypeStr(Cs)
    Message = Message & vbLf & "Datum       : Ellipsoid    :  " & Dt.Ellipsoid
    Message = Message & vbLf & "Datum       : Size         : " & Dt.SemiMajorAxis & " , " & Dt.SemiMinorAxis
    Message = Message & vbLf & "Datum       : Eccentricity : " & Dt.Eccentricity
    Message = Message & vbLf & "Datum       : Flattening   : " & Dt.Flattening
    Message = Message & vbLf & "Datum       : Rotations    : " & Dt.RotateX & " , " & Dt.RotateY & " , " & Dt.RotateZ
    Message = Message & vbLf & "Datum       : Shifts       : " & Dt.ShiftX & " , " & Dt.ShiftY & " , " & Dt.ShiftZ
    Message = Message & vbLf & "Datum       : Scale Change : " & Dt.ScaleAdjust
                   
    MsgBox Message

End Sub



Private Function CoordSysTypeStr(Cs As CoordSys) As String
    Dim retStr As String
    
    Select Case Cs.Type
        Case miAlbersEqualAreaConic
            retStr = "AlbersEqualAreaConic"
        Case miRobinson
            retStr = "Robinson"
        Case miMercator
            retStr = "Mercator"
        Case miAzimuthalEquidistant
            retStr = "AzimuthalEquidistant"
        Case miCylindricalEqualArea
            retStr = "CylindricalEqualArea"
        Case miEckertIV
            retStr = "EckertIV"
        Case miEckertVI
            retStr = "EckertVI"
        Case miEquidistantConic
            retStr = "EquidistantConic"
        Case miGall
            retStr = "Gall"
        Case miHotineObliqueMercator
            retStr = "HotineObliqueMercator"
        Case miLambertAzimuthalEqualArea
            retStr = "LambertAzimuthalEqualArea"
        Case miLambertConformalConic
            retStr = "LambertConformalConic"
        Case miLambertConformalConicBelgium
            retStr = "LambertConformalConicBelgium"
        Case miLongLat
            retStr = "LongLat"
        Case miMercator
            retStr = "Mercator"
        Case miMillerCylindrical
            retStr = "MillerCylindrical"
        Case miMollweide
            retStr = "Mollweide"
        Case miNewZealandMapGrid
            retStr = "NewZealandMapGrid"
        Case miNonEarth
            retStr = "Unprojected; cartesian coords"
        Case miSinusoidal
            retStr = "Sinusoidal"
        Case miStereographic
            retStr = "Stereographic"
        Case miSwissObliqueMercator
            retStr = "SwissObliqueMercator"
        Case miTransverseMercator
            retStr = "TransverseMercator"
        Case miTransverseMercatorDenmarkS34J
            retStr = "TransverseMercatorDenmarkS34J"
        Case miTransverseMercatorDenmarkS34S
            retStr = "TransverseMercatorDenmarkS34S"
        Case miTransverseMercatorDenmarkS45B
            retStr = "TransverseMercatorDenmarkS45B"
        Case miTransverseMercatorFinland
            retStr = "TransverseMercatorFinland"
        Case Else
            retStr = "Unrecognised Coordinate System " & Cs.Type
    End Select
    
    retStr = "Projection : " & retStr
    retStr = retStr & vbLf & "Projection : Bounds       : " & Cs.Bounds.Xmin & ", " & Cs.Bounds.Ymin & ", " & Cs.Bounds.Xmax & ", " & Cs.Bounds.Ymax
    retStr = retStr & vbLf & "Projection : False Origin : " & Cs.FalseEasting & ", " & Cs.FalseNorthing
    retStr = retStr & vbLf & "Projection : Lat Origin   : " & Cs.OriginLatitude
    retStr = retStr & vbLf & "Projection : Long Origin  : " & Cs.OriginLongitude
    retStr = retStr & vbLf & "Projection : Range        : " & Cs.Range
    retStr = retStr & vbLf & "Projection : Scale Factor : " & Cs.ScaleFactor
    retStr = retStr & vbLf & "Projection : Standard Pars: " & Cs.StandardParallelOne & ", " & Cs.StandardParallelTwo
    retStr = retStr & vbLf & "Projection : Units        : " & Cs.Units
  
    CoordSysTypeStr = retStr
End Function
