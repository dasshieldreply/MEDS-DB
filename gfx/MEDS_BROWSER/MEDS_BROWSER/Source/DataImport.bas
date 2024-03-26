Attribute VB_Name = "Module6"
Public Sub ImportData(ByVal Sfile As String, ByVal Map1 As Map)

    Dim FileType As String
    Dim LayerName As String
    
    On Error GoTo FileIOErr
    
    'open the file
    Open Sfile For Input As #1
     
    Input #1, FileType, LayerName
    
    If (FileType = "Point") Then
        ImportPoints Sfile, LayerName, Map1
    ElseIf (FileType = "Polygon") Then
        ImportPolygon Sfile, LayerName, Map1
    Else
         MsgBox "Unable to recognise file format"
    End If
    
    Close #1
    
    Exit Sub
    
FileIOErr:
    MsgBox err.Description
    Close #1
     
End Sub

Private Sub ImportPoints(ByVal pointfile As String, ByVal LayerName As String, ByVal Map1 As Map)
    Dim x1 As Double
    Dim y1 As Double
    Dim F As New mapxlib.Feature

    On Error GoTo FileDataErr
    
    If Main.LayerExists(LayerName) Then
        MsgBox "layer name in use unable to continue"
    Else
        'create a temp layer
        Map1.Layers.CreateLayer LayerName, , 1
        'attach the feature to the map
        F.Attach Map1
        'set the feature type to be a point
        F.Type = miFeatureTypeSymbol
    
        Do While Not EOF(1)
            'get the values for the point
            Input #1, x1, y1
            'set the temporary features properties
            F.Point.Set x1, y1
            'add the new feature to the layer
            Map1.Layers(LayerName).AddFeature F
        Loop
    End If
    
    Exit Sub
    
FileDataErr:
    MsgBox err.Description

End Sub

Private Sub ImportPolygon(ByVal pointfile As String, ByVal LayerName As String, ByVal Map1 As Map)
    Dim pnts As New Points
    Dim Lon, Lat As Double
    Dim Verticies As Integer
    Dim LoopCount As Integer
    Dim ftrFactory As FeatureFactory
    Dim styMapDefault As Style
    Dim ftrPolygon As Feature
    Set ftrFactory = Map1.FeatureFactory
    Set styMapDefault = Map1.DefaultStyle

    On Error GoTo FileDataErr
    
    If Main.LayerExists(LayerName) Then
        MsgBox "layer name in use unable to continue"
    Else
        Map1.Layers.CreateLayer LayerName

        'Read polgon file until End
        
        Do While Not EOF(1)
            Input #1, Verticies
     
        'Fetch the vericies for the polygon
            pnts.RemoveAll
            For LoopCount = 1 To Verticies
                Input #1, Lon, Lat
                pnts.AddXY Lon, Lat
            Next
        
        'Add polgon to layer

            Set ftrPolygon = ftrFactory.CreateRegion(pnts, styMapDefault)
            Map1.Layers(LayerName).AddFeature ftrPolygon
            Set ftrPolygon = Nothing

        Loop
    End If
    
    Exit Sub
    
FileDataErr:
    MsgBox err.Description
    
End Sub
