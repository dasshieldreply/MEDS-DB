Attribute VB_Name = "Module8"

Public Sub InitialiseGraph(Graph As MSChart, ByVal Text As String, ByVal Text1 As String)

'Set the graph up for XY plotting

    With Graph
'Reset graph
      .ToDefaults

'Set graph to correct seetings

      .chartType = VtChChartType2dXY
      .ShowLegend = False
      
      With .Plot.Axis(VtChAxisIdY).AxisTitle
         .TextLayout.Orientation = VtOrientationUp
         .VtFont.Size = 10
         .VtFont.Name = "Arial"
         .Visible = True
         .Text = Text1
      End With
      With .Plot.Axis(VtChAxisIdX).AxisTitle
         .VtFont.Size = 10
         .VtFont.Name = "Arial"
         .Visible = True
         .Text = Text
      End With

      .Plot.Axis(VtChAxisIdY).AxisScale.Type = VtChScaleTypeLinear
         
      .Plot.Axis(VtChAxisIdX).AxisScale.Type = VtChScaleTypeLinear

      .Plot.Axis(VtChAxisIdX).Intersection.Auto = False
      
      'Tip from KB article Q194221:
      .Plot.UniformAxis = False
      
   End With
   

End Sub
Public Sub CreateGraph(ByRef Data() As Double, ByVal Xcol As Integer, ByVal Ycol As Integer, _
                    ByVal StartPosn As Long, ByVal EndPosn As Long, ByVal MaxRows As Long, _
                    ByVal CurSeries As Integer, Graph As MSChart, ByVal PenColor As Boolean, _
                    ByVal WashingLine As Boolean, ByVal ShowMarker As Boolean, ByVal DepthFlag As Boolean)
                    
    Dim Lrow As Long
    Dim ptr As Integer
    Dim Offset As Double
    Dim XVal As Double, YVal As Double
     
    'Offset for washingline plots
    
    If WashingLine Then
        Offset = 0.5
    Else
        Offset = 0
    End If

 
   'We need to increase the ColumnCount.  For X-Y Scatter graphs, we
   'need 2 columns for each series.
   
   Graph.ColumnCount = CurSeries * 2

   With Graph
        
      With .Plot

         .Wall.Brush.Style = VtBrushStyleSolid

         .Wall.Brush.FillColor.Set 255, 255, 225
         
         If PenColor Then
            .Wall.Brush.FillColor.Set 255, 255, 225
            
          
            'You can set the individual Pen colors here, or just use
            'the defaults.
            Else 'Based on an article in the VB KB:

            .SeriesCollection(CurSeries).Pen.Style = VtPenStyleNull
            .SeriesCollection(CurSeries).Pen.VtColor.Set 0, 0, 0

         End If
      End With

      .ColumnLabelCount = CurSeries * 2

      'If the current series has more plot points that the previous
      'one, we need to change .RowCount accordingly:
        
      .RowCount = MaxRows
   
      'Both of the next 2 lines seem to do the same thing:
      '.Plot.SeriesCollection(CurSeries * 2 - 1).SeriesMarker.Show = ShowMarker
      .Plot.SeriesCollection.Item(CurSeries * 2 - 1).SeriesMarker.Show = ShowMarker

      ptr = 1
      
      'Create the plot points for this series from the ChartPoints array:
      For Lrow = StartPosn To EndPosn
  
        'Add data to plot (do not display if value is NULL) set to -9999 on input from the database
        
        If Data(Lrow, Xcol) <> -9999 And Data(Lrow, Ycol) <> -9999 Then
            
            'Store the current X and Y values
            XVal = Data(Lrow, Xcol) + (CurSeries * Offset)
        
            If DepthFlag Then
                YVal = -Data(Lrow, Ycol)
            Else
                YVal = Data(Lrow, Ycol)
            End If
        
            .DataGrid.SetData ptr, CurSeries * 2 - 1, XVal, False
            .DataGrid.SetData ptr, CurSeries * 2, YVal, False
        Else
            .DataGrid.SetData ptr, CurSeries * 2 - 1, 0, True
            .DataGrid.SetData ptr, CurSeries * 2, 0, True
        End If
        
        ptr = ptr + 1
        
      Next

      For Lrow = ptr To MaxRows ' Pad out missing rows
            .DataGrid.SetData Lrow, CurSeries * 2 - 1, 0, True
            .DataGrid.SetData Lrow, CurSeries * 2, 0, True
      Next
      
      .Column = CurSeries * 2 - 1

      .Refresh
      
   End With

SubExit:
   MousePointer = 0

End Sub

