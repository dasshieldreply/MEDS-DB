Attribute VB_Name = "Module3"

Public Sub Zoom100(ByVal Map1 As Map)

Dim X As Double
Dim Y As Double
Dim Newzoom As Double
Dim LayerName As String
Dim TabPosition As Integer
Dim BackdropScale As Double

    RasterBackdrop = False
    LayerCount = 1
    If Main.liChartList.Text = "" Then
        Exit Sub
    End If
    'Replace tab character with underscore character to assemble correct filename
    
    TabPosition = InStr(1, Main.liChartList.Text, vbTab)
    LayerName = left(Main.liChartList.Text, TabPosition - 1) & "_" & Mid(Main.liChartList.Text, TabPosition + 1)
  
    If Main.LayerExists(LayerName) Then
            
        'Find center of layer
        X = Map1.Layers(LayerName).Bounds.Xmin _
                + (Map1.Layers(LayerName).Bounds.Xmax - Map1.Layers(LayerName).Bounds.Xmin) / 2
        Y = Map1.Layers(LayerName).Bounds.Ymin _
                + (Map1.Layers(LayerName).Bounds.Ymax - Map1.Layers(LayerName).Bounds.Ymin) / 2
        
        'Find backdrop scale
        BackdropScale = ScaleArray(Main.liChartList.ListIndex + 1)
            
        'Zoom to layer
        Map1.MapUnit = miUnitInch
        Newzoom = Map1.MapScreenWidth / 127 * BackdropScale
        Map1.ZoomTo Newzoom, X, Y
        Map1.MapUnit = miUnitMeter
            
    Else
        MsgBox "Selected chart is not a loaded as a layer"
    End If

End Sub

Public Function Bearing(ByVal MapX1 As Double, ByVal MapY1 As Double, _
                        ByVal MapX2 As Double, ByVal MapY2 As Double, ByVal Map1 As Map) As Double
                        
    Dim dx As Double
    Dim dy As Double
    Dim x1 As Single
    Dim y1 As Single
    Dim X2 As Single
    Dim Y2 As Single
    
    Const Rad_to_Deg = 57.29577951
    
    Map1.ConvertCoord x1, y1, MapX1, MapY1, miMapToScreen
    Map1.ConvertCoord X2, Y2, MapX2, MapY2, miMapToScreen
    
    dx = X2 - x1
    dy = Y2 - y1
    
    If X2 = x1 Then
        If Y2 = y1 Then
            Bearing = 0
        Else
            If Y2 > y1 Then
                Bearing = 180
            Else
                Bearing = 0
            End If
        End If
    Else
        If Y2 = y1 Then
            If X2 = x1 Then
                Bearing = 0
            Else
                If X2 > x1 Then
                    Bearing = 90
                Else
                    Bearing = 270
                End If
            End If
        Else
            Bearing = Rad_to_Deg * Atn(dx / dy)
      
            If dx > 0 And dy < 0 Then
                Bearing = Bearing * -1
            ElseIf dx > 0 And dy > 0 Then
                Bearing = 180 - Bearing
            ElseIf dx < 0 And dy > 0 Then
                Bearing = Bearing * -1 + 180
            ElseIf dx < 0 And dy < 0 Then
                Bearing = 360 - Bearing
            End If
        End If
    End If
            
End Function



