Attribute VB_Name = "Module2"

Public Sub FetchChartBackdrop(ByVal Map1 As Map)

Dim LayerCount As Integer
Dim layerfilename As String
Dim layerpath As String
Dim TabPosition As Integer
Dim CheckExists As String
Dim PanelRowID As String
Dim Lyr As Layer
Dim LayerInfoObject As New LayerInfo

    'Replace tab character with underscore character to assemble correct filename
    
    TabPosition = InStr(1, Main.liChartList.Text, vbTab)
    layerfilename = left(Main.liChartList.Text, Len(Main.liChartList.Text) - 4)
    
    'First try to load as a tab file since most geotiffs will have to have
    'had a tab file already written
    
    layerpath = InputFilePath & "geotiff\" & layerfilename & ".tab"
  
    CheckExists = Dir(layerpath)
    
    On Error GoTo ErrorHandler
    
    If Main.LayerExists(layerfilename) Then
    
        MsgBox "Layer " & layerfilename & " already loaded"
    
    ElseIf CheckExists = "" Then
       ' try to load the GEOTIFF directly
        
        layerpath = InputFilePath & "geotiff\" & layerfilename & ".tif"
  
        CheckExists = Dir(layerpath)
        
        If CheckExists = "" Then
            MsgBox "Unable to locate chart as geo-tiff or via a tab file"
        Else
    
            'Load directly from a geotiff
        
            LayerInfoObject.Type = miLayerInfoTypeRaster
            LayerInfoObject.AddParameter "name", layerfilename
            LayerInfoObject.AddParameter "filespec", layerpath
    
            Map1.Layers.Add LayerInfoObject
        
            Map1.Bounds = Map1.Layers(layerfilename).Bounds
        
            Map1.NumericCoordSys.Set miLongLat, Map1.DisplayCoordSys.Datum
     
            PanelRowID = RowidArray(Main.liChartList.ListIndex + 1)
    
            Call Main.UpdateSelectableLayer
       
            Call GetPanelLimits(PanelRowID)
        End If
        
             
    Else
        'Load the TAB file
        
        'Okay load via tab file
        
        Map1.Layers.Add layerpath
        Map1.Bounds = Map1.Layers(layerfilename).Bounds
        Map1.NumericCoordSys.Set miLongLat, Map1.DisplayCoordSys.Datum
            
        PanelRowID = RowidArray(Main.liChartList.ListIndex + 1)
    
        Call Main.UpdateSelectableLayer
       
        Call GetPanelLimits(PanelRowID)

     End If
    
Exit Sub

ErrorHandler:

   MsgBox err.description
    
End Sub

Public Sub GetChartList(dlatitude, dlongitude)

    Dim ChartQuery As String
    Dim ChartPanels As Object
        
    Main.liChartList.Clear

    ChartQuery = "SELECT rowid, chart_number_prefix, chart_number, chart_number_suffix, panel_number, scale " _
    & "FROM chart_panel " _
    & "WHERE SDO_RELATE(limits,MDSYS.SDO_GEOMETRY(2001,null,MDSYS.SDO_POINT_TYPE(" _
    & CStr(dlongitude) & "," & CStr(dlatitude) _
    & ",null),null,null),'mask=anyinteract querytype=window') = 'TRUE'" _
    & "ORDER BY scale"
    
    ChartQuery = "SELECT filename, size_degrees " _
    & "FROM tiff_charts " _
    & "WHERE SDO_RELATE(limits,MDSYS.SDO_GEOMETRY(2001,null,MDSYS.SDO_POINT_TYPE(" _
    & CStr(dlongitude) & "," & CStr(dlatitude) _
    & ",null),null,null),'mask=anyinteract querytype=window') = 'TRUE'" _
    & "ORDER BY size_degrees ASC"
    
    Set ChartPanels = OraDatabase.CreateDynaset(ChartQuery, 0&)
        
    i = 1
    
    While Not ChartPanels.EOF
        Main.liChartList.AddItem (ChartPanels("filename"))
        
        ChartPanels.MoveNext
    Wend
            
End Sub

Public Sub GetPanelLimits(RowID)

    Dim LimitsQuery As String
    Dim Ordinates As Object
    Dim i As Integer
    
    LimitsQuery = "SELECT column_value FROM TABLE (SELECT cp.limits.sdo_ordinates " _
                & "FROM chart_panel cp WHERE cp.rowid = '" & RowID & "')"
      
    Set Ordinates = OraDatabase.CreateDynaset(LimitsQuery, 0&)
        
    Erase XArray
    Erase YArray
           
    i = 1
    
    While Not Ordinates.EOF
        XArray(i) = Ordinates("column_value")
        Ordinates.MoveNext
        YArray(i) = Ordinates("column_value")
        Ordinates.MoveNext
        i = i + 1
    Wend
  
    NumVertices = i - 2
        
End Sub

