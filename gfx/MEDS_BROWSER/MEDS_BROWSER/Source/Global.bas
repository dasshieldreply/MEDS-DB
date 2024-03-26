Attribute VB_Name = "Module1"
Global OraSession As Object
Global OraDatabase As Object
Global Symbol As String
Global UID As String
Global Passwd As String
Global Database As String
Global OutputFilePath As String
Global InputFilePath As String
Global OldBounds As New mapxlib.Rectangle
Global GenericIndex As Integer

Public XArray(50) As Double
Public YArray(50) As Double
Public NumVertices As Integer
Public ScaleArray(50) As Long
Public RowidArray(50) As String
Global MouseDownX1 As Double
Global MouseDownY1 As Double
Global g_ftrPointToMove As Feature
Private Const Deg_to_Rad = 0.1745329252
Private Const Rad_to_Deg = 57.29577951

Global Const NORMAL_TOOL = 1
Global Const BEARING_DISTANCE_TOOL = 2
Global Const POINT_TOOL = 3
Global Const POLY_LINE_TOOL = 4
Global Const POLYGON_TOOL = 5
Global Const TEXT_TOOL = 6
Global LyrTree As Layer
Global LyrCount As Integer
Global StrDist As String

Global UserPointStyle As New Style

'Setup SQL table names

Global Const SQLJobTable = "MEDS_PROCESSING_JOB"
Global Const SQLCruiseTable = "CRUISE_TABLE"
Global Const SQLFlagTable = "MEDS_FLAG_TABLE"

Global Const SQLJobAlias = "JOB"
Global Const SQLCruiseAlias = "CRS"
Global Const SQLFlagAlias = "FLG"
Global Const SQLHeaderAlias = "HDR"
Global Const SQLAttributeAlias = "ATT"

'Setup variables for constructing SQL queries

Global SQLBaseWhere As String
Global SQLBaseAttributes As String
Global SQLBaseTable As String
Global SQLDict As Object

'Global Pointer to Show which Type is building the Query

Global SQLQueryParent As String


Global Criteria As Object
Global Tables As Object
Global Fields As Object
Global Columns As Object
Global ColumnFields As Object

'Setup Maximum SQL layers permitted per session
Global Const SQLMAXLAYERS = 100
Global Const SQLLAYERCOLS = 10

'Arrays to store Layer details from SQL queries
Global SQLLayerInfo(SQLMAXLAYERS, SQLLAYERCOLS) As String

'Define what each column stores

Global Const SQLLayerNameIdx = 0
Global Const SQLDataClassIdx = 1
Global Const SQLDataTypeIdx = 2
Global Const SQLTemporalIdx = 3
Global Const SQLAttributeTableIdx = 4
Global Const SQLHeaderTableIdx = 5
Global Const SQLJobColIdx = 6
Global Const SQLDataStyleIdx = 7
Global Const SQLStatementIdx = 8
Global Const SQLParentLayerIdx = 9

'This is the current layer being constructed
Global Const SQLConstructCols = 7

Global SQLCurrentLayer(SQLConstructCols) As String

'Setup Counter to keep tarack on number of layers

Global SQLLayerCount As Integer
Global SQLCurrentPointer As Integer

Global PointInformationIsLoaded As Boolean
Global ShowAttributesIsLoaded As Boolean


