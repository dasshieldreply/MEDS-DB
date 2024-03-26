Attribute VB_Name = "Module4"
Public Sub LoadContourLine(ByVal Map1 As Map)
    Dim Query As String
    Dim AddLayer As Boolean
    Dim BathyLyr As Layer
    
    'Load Bathy data from geo-database
    Screen.MousePointer = vbHourglass
    
    ' Setup parameters to read in
    AddLayer = True
    Query = "SELECT CRV, SHAPE FROM WVS_3M_BATHY_LINE"
    BathyName = "Bathy Contour"

    'read in the contour lines
    
    If Not ReadFoundationData(BathyName, Query, AddLayer) Then
        MsgBox "Unable to load contour line!"
    End If
    
    Screen.MousePointer = vbHourglass
    
End Sub

Public Sub LoadCoastline(ByVal Map1 As Map)

'Written: 22/10/01
'Author:
'Purpose: Display 3m WVS Coastline as backdrop

    Dim i As Integer
    Dim Query As String
    Dim AddLayer As Boolean
    Dim CoastLyr As Layer
    Dim CoastName As String
    Dim Marker As New Style
    
    Screen.MousePointer = vbHourglass
    
    ' Setup parameters to read in
    
    AddLayer = True
    Map1.BackColor = RGB(150, 255, 255)
   
    Query = "SELECT NAM_DESCRI, SHAPE FROM WVS_D_3M_COUNTPOLY"
    
    CoastName = "Coastline"
    
    If ReadFoundationData(CoastName, Query, AddLayer) Then
    
        Set CoastLyr = Map1.Layers(CoastName)
    
        CoastLyr.OverrideStyle = True

        Marker.RegionBorderColor = miColorBlack
        Marker.RegionColor = RGB(210, 255, 190)
   
        CoastLyr.Style = Marker
    
    End If
    
    Screen.MousePointer = Default
    
End Sub

Public Sub LoadBathymetry(ByVal Map1 As Map)
'Written: 22/10/01
'Author:
'Purpose: Display 3m WVS Bathymetry as backdrop

    Dim Query As String
    Dim AddLayer As Boolean
    Dim BathyLyr As Layer
    Dim BathyName As String
    Dim BathyColor As mapxlib.Dataset
    
    Screen.MousePointer = vbHourglass
    
    'read in the coloured sections as a seperate layer
    
    AddLayer = True
    Query = "SELECT CVL, SHAPE FROM WVS_3M"
    BathyName = "Bathy Colour"
    
    If ReadFoundationData(BathyName, Query, AddLayer) Then
    
        Screen.MousePointer = vbHourglass
        Set BathyLyr = Map1.Layers(BathyName)
        
   ' Set color on bathymetry using CVL code from database
   
      Set BathyColor = BathyLyr.Datasets.Item(BathyName)

        BathyColor.Themes.Add miThemeRanged, "CVL", "BathyTheme"
        BathyColor.Themes.Item(1).Legend.Visible = False

        BathyColor.Themes.Item(1).AutoRecompute = False
        BathyColor.Themes("BathyTheme").ThemeProperties.NumRanges = 7
        BathyColor.Themes("BathyTheme").ThemeProperties.DistMethod = miCustomRanges
        BathyColor.Themes("BathyTheme").ThemeProperties.SpreadBy = 1
     
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(7).Max = 8000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(7).Min = 6000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(6).Max = 6000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(6).Min = 4000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(5).Max = 4000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(5).Min = 2000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(4).Max = 2000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(4).Min = 1000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(3).Max = 1000
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(3).Min = 600
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(2).Max = 600
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(2).Min = 400
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(1).Max = 400
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(1).Min = 200
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(1).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(2).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(3).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(4).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(5).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(6).Style.RegionBorderStyle = 0
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(7).Style.RegionBorderStyle = 0
         
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(7).Style.RegionColor = RGB(0, 50, 150)
        BathyColor.Themes("BathyTheme").ThemeProperties.RangeCategories(1).Style.RegionColor = RGB(0, 255, 255)
       
        BathyColor.Themes.Item(1).AutoRecompute = True

  
    End If
    
    Screen.MousePointer = Default
   
End Sub

Private Function ReadFoundationData(ByVal Name As String, ByVal Query As String, ByVal AddLayer As Boolean)

    Dim LayerInfoObject As New LayerInfo
    Dim strSQL As String
    Dim Dyn As Object
    Dim strPass As String
    
    On Error GoTo SQLerror:
  
    strSQL = "select * from meds_flags where flags_index = 1 and data_type = 'MEDS Procesing Job'"
    Set Dyn = OraDatabase.CreateDynaset(strSQL, 0&)
    strPass = Main.Encode(Dyn("flag_value"))
    If Main.LayerExists(Name) Then
        MsgBox "Foundation data already added"
        AddLayer = False
    Else
        LayerInfoObject.Type = miLayerInfoTypeServer
        LayerInfoObject.AddParameter "name", Name
        LayerInfoObject.AddParameter "ConnectString", "SRVR=" & Database & ";UID=" & "{insert-admin-user}" & ";PWD=" & strPass
        'LayerInfoObject.AddParameter "ConnectString", "SRVR=" & Database & ";UID=" & UID & ";PWD=" & Passwd
        LayerInfoObject.AddParameter "Query", Query
        LayerInfoObject.AddParameter "toolkit", "ORAINET"
        LayerInfoObject.AddParameter "AutoCreateDataset", 1
        LayerInfoObject.AddParameter "DatasetName", Name
        LayerInfoObject.AddParameter "Cache", "on"
        LayerInfoObject.AddParameter "Mbrsearch", "off"
    
        Main.Map1.Layers.Add LayerInfoObject
    
    End If
    
    ReadFoundationData = AddLayer
    Exit Function
    

SQLerror:

   MsgBox err.description
   AddLayer = False
   ReadFoundationData = AddLayer
   
End Function
