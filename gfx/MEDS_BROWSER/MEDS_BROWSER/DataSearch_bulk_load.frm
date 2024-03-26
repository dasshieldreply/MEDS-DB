VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form DataSearch 
   Caption         =   "Data Search"
   ClientHeight    =   9690
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13635
   LinkTopic       =   "Form1"
   ScaleHeight     =   9690
   ScaleWidth      =   13635
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame ActionsFrame 
      Caption         =   "Actions"
      Height          =   735
      Left            =   0
      TabIndex        =   44
      Top             =   8880
      Width           =   13575
      Begin VB.CommandButton AddTrackButton 
         Caption         =   "Add Track"
         Height          =   375
         Left            =   2880
         TabIndex        =   63
         Top             =   240
         Width           =   2295
      End
      Begin VB.CommandButton AddDataButton 
         Caption         =   "Add Data"
         Height          =   375
         Left            =   120
         TabIndex        =   46
         Top             =   240
         Width           =   2295
      End
      Begin VB.CommandButton ExitButton 
         Caption         =   "Exit"
         Height          =   375
         Left            =   11160
         TabIndex        =   45
         Top             =   240
         Width           =   2295
      End
   End
   Begin VB.Frame SearchFrame 
      Caption         =   "Search"
      Height          =   2535
      Left            =   0
      TabIndex        =   14
      Top             =   6360
      Width           =   13575
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   10
         Left            =   9460
         TabIndex        =   39
         Top             =   1920
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   10
         Left            =   9460
         TabIndex        =   30
         Text            =   "SearchComboBox"
         Top             =   1920
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   9
         Left            =   9460
         TabIndex        =   35
         Top             =   1250
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   9
         Left            =   9460
         TabIndex        =   28
         Text            =   "SearchComboBox"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   8
         Left            =   9460
         TabIndex        =   29
         Top             =   480
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   8
         Left            =   9460
         TabIndex        =   26
         Text            =   "SearchComboBox"
         Top             =   480
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   7
         Left            =   7260
         TabIndex        =   27
         Top             =   1920
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   7
         Left            =   7260
         TabIndex        =   24
         Text            =   "SearchComboBox"
         Top             =   1920
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   4
         Left            =   2400
         TabIndex        =   15
         Top             =   1920
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   4
         Left            =   2400
         TabIndex        =   13
         Text            =   "SearchComboBox"
         Top             =   1920
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   0
         Left            =   200
         TabIndex        =   5
         Text            =   "SearchComboBox"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   6
         Left            =   7260
         TabIndex        =   22
         Text            =   "SearchComboBox"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   6
         Left            =   7260
         TabIndex        =   23
         Top             =   1200
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   5
         Left            =   7260
         TabIndex        =   20
         Text            =   "SearchComboBox"
         Top             =   480
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   5
         Left            =   7260
         TabIndex        =   21
         Top             =   480
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   3
         Left            =   2400
         TabIndex        =   11
         Text            =   "SearchComboBox"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   3
         Left            =   2400
         TabIndex        =   12
         Top             =   1200
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   2
         Left            =   2400
         TabIndex        =   9
         Text            =   "SearchComboBox"
         Top             =   480
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   2
         Left            =   2400
         TabIndex        =   10
         Top             =   480
         Width           =   1600
      End
      Begin VB.ComboBox SearchComboBox 
         Height          =   315
         Index           =   1
         Left            =   200
         TabIndex        =   7
         Text            =   "SearchComboBox"
         Top             =   1920
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   1
         Left            =   200
         TabIndex        =   8
         Top             =   1920
         Width           =   1600
      End
      Begin VB.TextBox SearchTextBox 
         Height          =   375
         Index           =   0
         Left            =   200
         TabIndex        =   6
         Top             =   1200
         Width           =   1600
      End
      Begin VB.Frame DateSearchFrame 
         Caption         =   "Date Recorded"
         Height          =   1815
         Left            =   9000
         TabIndex        =   47
         Top             =   360
         Visible         =   0   'False
         Width           =   2535
         Begin VB.Frame FromDateFrame 
            Caption         =   "From"
            Height          =   735
            Left            =   120
            TabIndex        =   31
            Top             =   240
            Width           =   2295
            Begin MSComCtl2.DTPicker SearchDateFrom 
               Height          =   375
               Left            =   120
               TabIndex        =   33
               Top             =   240
               Width           =   2040
               _ExtentX        =   3598
               _ExtentY        =   661
               _Version        =   393216
               CheckBox        =   -1  'True
               Format          =   16711680
               CurrentDate     =   38495
            End
         End
         Begin VB.Frame Frame1 
            Caption         =   "To"
            Height          =   735
            Left            =   120
            TabIndex        =   32
            Top             =   960
            Width           =   2295
            Begin MSComCtl2.DTPicker SearchDateTo 
               Height          =   375
               Left            =   120
               TabIndex        =   34
               Top             =   240
               Width           =   2040
               _ExtentX        =   3598
               _ExtentY        =   661
               _Version        =   393216
               CheckBox        =   -1  'True
               Format          =   16711680
               CurrentDate     =   38495
            End
         End
      End
      Begin VB.ComboBox MEICNumberSearch 
         Height          =   315
         Left            =   200
         TabIndex        =   4
         Text            =   "MEICNumberSearch"
         Top             =   480
         Width           =   1600
      End
      Begin VB.CommandButton SearchButton 
         Caption         =   "Search"
         Height          =   315
         Left            =   4560
         TabIndex        =   38
         Top             =   2040
         Width           =   975
      End
      Begin VB.CommandButton ResetButton 
         Caption         =   "Reset"
         Height          =   315
         Left            =   5760
         TabIndex        =   40
         Top             =   2040
         Width           =   975
      End
      Begin VB.Frame OrderByFrame 
         Caption         =   "Order By"
         Height          =   1500
         Left            =   11640
         TabIndex        =   25
         Top             =   480
         Width           =   1815
         Begin VB.ComboBox OrderDirection 
            Height          =   315
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   37
            Top             =   1080
            Width           =   975
         End
         Begin VB.ComboBox OrderBy 
            Height          =   315
            Left            =   120
            Style           =   2  'Dropdown List
            TabIndex        =   36
            Top             =   360
            Width           =   1500
         End
      End
      Begin VB.TextBox ToLatitude 
         Height          =   315
         Left            =   5280
         TabIndex        =   17
         Top             =   480
         Width           =   735
      End
      Begin VB.TextBox FromLatitude 
         Height          =   315
         Left            =   5280
         TabIndex        =   16
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox FromLongitude 
         Height          =   315
         Left            =   4440
         TabIndex        =   18
         Top             =   885
         Width           =   735
      End
      Begin VB.TextBox ToLongitude 
         Height          =   315
         Left            =   6120
         TabIndex        =   19
         Top             =   885
         Width           =   735
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   10
         Left            =   9460
         TabIndex        =   60
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   9
         Left            =   9460
         TabIndex        =   59
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label Label9 
         Caption         =   "South"
         Height          =   195
         Left            =   5400
         TabIndex        =   58
         Top             =   1680
         Width           =   495
      End
      Begin VB.Label Label8 
         Caption         =   "North"
         Height          =   195
         Left            =   5400
         TabIndex        =   57
         Top             =   240
         Width           =   495
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   8
         Left            =   9460
         TabIndex        =   56
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   7
         Left            =   7260
         TabIndex        =   55
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   6
         Left            =   7260
         TabIndex        =   54
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   5
         Left            =   7260
         TabIndex        =   53
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   4
         Left            =   2400
         TabIndex        =   52
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   3
         Left            =   2400
         TabIndex        =   51
         Top             =   960
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   2
         Left            =   2400
         TabIndex        =   50
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   1
         Left            =   200
         TabIndex        =   49
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label SearchLabel 
         Caption         =   "Search Label"
         Height          =   255
         Index           =   0
         Left            =   200
         TabIndex        =   48
         Top             =   945
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "MEIC Number"
         Height          =   255
         Left            =   200
         TabIndex        =   43
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label Label10 
         Caption         =   "West"
         Height          =   195
         Left            =   4560
         TabIndex        =   42
         Top             =   675
         Width           =   495
      End
      Begin VB.Label Label11 
         Caption         =   "East"
         Height          =   195
         Left            =   6240
         TabIndex        =   41
         Top             =   675
         Width           =   495
      End
      Begin VB.Line Line1 
         X1              =   5640
         X2              =   5640
         Y1              =   720
         Y2              =   1320
      End
      Begin VB.Line Line2 
         X1              =   5160
         X2              =   6120
         Y1              =   1035
         Y2              =   1035
      End
   End
   Begin VB.Frame ResultsFrame 
      Caption         =   "Results Frame"
      Height          =   6255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13575
      Begin VB.CheckBox MultiSelectCheck 
         Caption         =   "Allow Multiple Select"
         Height          =   255
         Left            =   11520
         TabIndex        =   62
         Top             =   5790
         Width           =   1935
      End
      Begin VB.CommandButton DeleteButton 
         Caption         =   "Delete"
         Height          =   315
         Left            =   6840
         TabIndex        =   61
         Top             =   5760
         Width           =   975
      End
      Begin MSComctlLib.ListView SearchResults 
         Height          =   5415
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   13335
         _ExtentX        =   23521
         _ExtentY        =   9551
         View            =   3
         LabelEdit       =   1
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   0
      End
      Begin VB.CommandButton CopyButton 
         Caption         =   "Copy"
         Height          =   315
         Left            =   5760
         TabIndex        =   3
         Top             =   5760
         Width           =   975
      End
      Begin VB.CommandButton EditButton 
         Caption         =   "Edit"
         Height          =   315
         Left            =   4680
         TabIndex        =   2
         Top             =   5760
         Width           =   975
      End
   End
End
Attribute VB_Name = "DataSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Enum ColDataTypeEnum
    COL_DATA_TYPE_INTEGER = 0
    COL_DATA_TYPE_FLOAT = 1
    COL_DATA_TYPE_CHAR = 2
    COL_DATA_TYPE_DATE = 3
    COL_DATA_TYPE_GEOMETRY = 4
    COL_DATA_TYPE_OTHER = 5
End Enum

Private Initialised

Private CurrentQuery, CurrentCountQuery As String
Private NumberOfResults As Long

Private DataType As String
Private DataTypeAlias As String
Private NameOfDateField As String
Private JobTypeDescription As String
Private DataHasTime As Boolean
Private DateIsMandatory As Boolean
Private NewDataHasCruise As Boolean
Private DateSearchEnabled As Boolean
Private DataAltered As Boolean
Private IsComboBox() As Boolean
Private DataHasTrack As Boolean
Private BulkImportType As Integer

Private ColumnNames As Collection
Private ColumnSearchNames As Collection
Private ColumnHeaderNames As Collection
Private JobNumbers As Collection
Private ObsNumbers As Collection
Private ColumnDataTypes As Collection

Private SearchNumbers As Collection
Private SearchCriteria As Collection
Private SearchDataTypes As Collection

Public Function TestForBulkImport(ByVal ImportType As Integer) As Boolean
    
    Dim RetVal As Boolean
    
    RetVal = False
    
    Select Case ImportType
        
        Case 100
            ' Import Type 100 is import secchi data from h635 file
            ' so must be dealing with Secchi data which is stored in SECCHI_DISK
            ' tables
            RetVal = (UCase(DataType) = "SECCHI_DISK")
            
        Case Else
            
    End Select
 
    TestForBulkImport = RetVal
 
End Function


Private Sub InitialiseMeicNumbersForNewJobForm(ByRef col As Collection, ByVal DataTypeStr As String)
    Dim SQLQuery As String
    Dim Results As Object

    SQLQuery = "Select distinct j.meic_number from job_tracking j, meds_job_type t " & _
               " where status NOT in ('CANCELLED','COMPLETED') " & _
               " and t.job_type_number = j.job_type_number " & _
               " and upper(t.description) like upper('" & DataTypeStr & "%') " & _
               " order by meic_number desc"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            col.Add Results("meic_number").value
        End If
        Results.MoveNext
    Wend

End Sub


Private Sub InitialiseDataTypes(ByRef col As Collection)
    col.Add DataType
End Sub

Private Sub AddButtonFunction(ByVal BulkImport As Integer, NextForm As String)

    Dim MEICNumbers As Collection
    Dim DataTypes As Collection
    
    Set MEICNumbers = New Collection
    Set DataTypes = New Collection
    
    Call InitialiseMeicNumbersForNewJobForm(MEICNumbers, JobTypeDescription)
    Call InitialiseDataTypes(DataTypes)

    If NewJob.SetData(MEICNumberSearch, _
                        MEICNumbers, _
                        DataTypeAlias, _
                        DataTypes, _
                        NewDataHasCruise, _
                        NameOfDateField, _
                        DataHasTime, _
                        DateIsMandatory, _
                        DataHasTrack, _
                        BulkImport, _
                        NextForm) Then
                        
        DataAltered = True      ' assume going to do something
        NewJob.Show (1)
    
        Set DataTypes = Nothing
        Set MEICNumbers = Nothing
    
        If DataAltered Then
            ' update the data on the form
            Call DisplayResults

            ' Update the contents of the Selection Combo boxes, in case they have changed
            Call InitialiseComboBoxes(True)
        Else
            SearchResults.SetFocus
        End If
    End If

End Sub

Private Sub AddDataButton_Click()
    
   Call AddButtonFunction(BulkImportType, "DataEdit")

End Sub

Private Sub AddTrackButton_Click()
    Call AddButtonFunction(0, "TrackEdit")
End Sub

Private Sub CopyButton_Click()
    Call ActivateEditForm(EDIT_MODE_COPY)
End Sub

Private Sub DeleteButton_Click()
    Call ActivateEditForm(EDIT_MODE_DELETE)
End Sub

Private Sub EditButton_Click()
    Call ActivateEditForm(EDIT_MODE_EDIT)
End Sub
Private Sub ActivateEditForm(EditMode As EditModeEnum)
    Dim LongMEICNumber As Long
    Dim JobNos As Collection
    Dim ObsNos As Collection
    Dim MEICNos As Collection
    Dim Index As Long, NumSelected As Long
    Dim Ok As Boolean
    
    If SearchResults.ListItems.Count = 0 Then
        Exit Sub
    End If
    
    ' Initialise collections
    Set JobNos = New Collection
    Set ObsNos = New Collection
    Set MEICNos = New Collection
 
    ' if ListView is in multiselect mode then
    ' have to look at all the rows to get set
    ' of selected rows
    If SearchResults.MultiSelect Then
        NumSelected = 0
               
        For Index = 1 To SearchResults.ListItems.Count
            If SearchResults.ListItems(Index).Selected Then
                NumSelected = NumSelected + 1
                JobNos.Add JobNumbers(Index)
                ObsNos.Add ObsNumbers(Index)
                LongMEICNumber = -1
                If SearchResults.ListItems(Index).Text <> "" Then
                    LongMEICNumber = SearchResults.ListItems(Index).Text
                End If
                MEICNos.Add LongMEICNumber
            End If
        Next Index
    Else
        ' This is optimisation when do not have to look at all the rows
        NumSelected = 1
        Index = SearchResults.SelectedItem.Index
    
        JobNos.Add JobNumbers(Index)
        ObsNos.Add ObsNumbers(Index)
        LongMEICNumber = -1   ' indicates null
        If SearchResults.ListItems(Index).Text <> "" Then
            LongMEICNumber = SearchResults.ListItems(Index).Text
        End If
        MEICNos.Add LongMEICNumber
    End If
        
    Ok = DataEdit.SetEditDetails(EditMode, _
                                 MEICNos, _
                                 JobNos, _
                                 ObsNos, _
                                 DataType, _
                                 DataTypeAlias, _
                                 NameOfDateField, _
                                 DataHasTime, _
                                 DateIsMandatory, _
                                 DataHasTrack)
    
    ' finished with collections now
    Set MEICNos = Nothing
    Set JobNos = Nothing
    Set ObsNos = Nothing
    
    If Not Ok Then
        MsgBox "Inconsistant number of elements in collections", vbExclamation
        Exit Sub
    End If
                                   
    DataAltered = True  ' assume data will be altered
    DataEdit.Show (1)   ' Call the form modally
    
    Set JobNos = Nothing
    Set ObsNos = Nothing
    Set MEICNos = Nothing
    
    If DataAltered Then
        ' update the data on the form
        Call DisplayResults

        ' Update the contents of the Selection Combo boxes, in case they have changed
        Call InitialiseComboBoxes(True)
    Else
        SearchResults.SetFocus
    End If

End Sub
Private Sub ExitButton_Click()
    Unload Me
End Sub

Private Sub Initialise()
    Dim SQLQuery As String
    Dim Results As Object
    Dim TableName, ColumnName, HeaderName As String
    Dim ColumnSearchName As String
    Dim ITemp As Integer
    Dim ColDataType As ColDataTypeEnum

    Set ColumnHeaderNames = New Collection
    Set ColumnNames = New Collection
    Set ColumnSearchNames = New Collection

    On Error GoTo ORACLE_ERROR
    
    SQLQuery = "SELECT table_name, column_name, column_header, column_order," & _
               "text_search,combo_search " & _
               "FROM Generic_edit WHERE upper(table_name) like " & _
               "upper('" & DataType & "%') and upper(row_type) like 'DISPLAY' ORDER BY column_order ASC"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    ' always have this, as it comes from a completely different table
    ColumnHeaderNames.Add "MEIC Number"
    ColumnNames.Add "meic_number"
    ColumnSearchNames.Add "j.meic_number"
    
    While Not Results.EOF
        TableName = Results("table_name")
        ColumnName = Results("column_name")
        
        ' ignore any ColumnName that is not in the data table.
        ' I would have expected to be able to test if a key exists in a collection
        ' but as far as I can see, I cannot
        On Error GoTo COLUMN_ERROR
        ColDataType = ColumnDataTypes.Item(ColumnName)
 
        If IsNull(Results("column_header")) Then
            HeaderName = ColumnName
        Else
            HeaderName = Results("column_header")
        End If
        If (UCase$(TableName) Like UCase$("*_data")) Then
            ColumnSearchName = "d." & ColumnName
        Else
            ColumnSearchName = "o." & ColumnName
        End If
        
        If Not IsNull(Results("column_order")) Then
            ColumnNames.Add (ColumnName)
            ColumnHeaderNames.Add (HeaderName)
            ColumnSearchNames.Add (ColumnSearchName)
        End If
       
        ' Only allow selection criteria for data types we can deal with
        
        If ColDataType = COL_DATA_TYPE_CHAR Or ColDataType = COL_DATA_TYPE_FLOAT Or _
           ColDataType = COL_DATA_TYPE_INTEGER Then
            If Not IsNull(Results("text_search")) Then
                ITemp = Results("text_search")
                SearchLabel(ITemp).Visible = True
                SearchTextBox(ITemp).Visible = True
                SearchLabel(ITemp) = HeaderName
                SearchCriteria.Add ColumnSearchName
                SearchNumbers.Add ITemp
                SearchDataTypes.Add ColDataType, CStr(ITemp)
            End If
        
            If Not IsNull(Results("combo_search")) Then
                If IsNull(Results("text_search")) Then  ' Don't allow text box and Combo Box
                    ITemp = Results("combo_search")
                    SearchLabel(ITemp).Visible = True
                    SearchComboBox(ITemp).Visible = True
                    SearchLabel(ITemp) = HeaderName
                    SearchCriteria.Add ColumnSearchName
                    SearchNumbers.Add ITemp
                    SearchDataTypes.Add ColDataType, CStr(ITemp)
                    IsComboBox(ITemp) = True
               End If
            End If
        End If
        
COLUMN_ERROR:
        Results.MoveNext
    Wend

    ' always require these next two
    ColumnSearchNames.Add "o.meds_observation_number"
    ColumnSearchNames.Add "o.meds_job_number"

Exit Sub
    
    
ORACLE_ERROR:
If err.Number <> 32755 Then
    MsgBox "Error while processing search :" & err.Number & " " & err.description
End If

End Sub

Private Sub InitialiseColumnDataTypes()
    Dim SQLString As String
    Dim Results As Object
    Dim Name, VarType, TypeMod As String
    Dim DataScale As Integer
    Dim ColDataType As ColDataTypeEnum
    
    Set ColumnDataTypes = New Collection
    
    SQLString = "Select distinct COLUMN_NAME, DATA_TYPE, DATA_SCALE from all_tab_columns a where " & _
                "a.owner = 'MEDSADMIN' and a.table_name IN ('" & _
                UCase$(DataType) & "_DATA','" & UCase$(DataType) & "_OBSERVATION')"
    Set Results = OraDatabase.CreateDynaset(SQLString, 0&)

    While Not Results.EOF
        Name = Results("COLUMN_NAME")
        VarType = Results("DATA_TYPE")
        If Not IsNull(Results("DATA_SCALE")) Then DataScale = Results("DATA_SCALE")
        
        Select Case VarType
            Case "VARCHAR2"
                ColDataType = COL_DATA_TYPE_CHAR
            Case "SDO_GEOMETRY"
                ColDataType = COL_DATA_TYPE_GEOMETRY
            Case "DATE"
                ColDataType = COL_DATA_TYPE_DATE
            Case "NUMBER"
                If DataScale = 0 Then
                    ColDataType = COL_DATA_TYPE_INTEGER
                Else
                    ColDataType = COL_DATA_TYPE_FLOAT
                End If
            Case Else
                ColDataType = COL_DATA_TYPE_OTHER
        End Select
        
        ColumnDataTypes.Add ColDataType, Name
   
        Results.MoveNext
    Wend
    
End Sub

Private Sub Form_Initialize()
    Initialised = False
End Sub

Private Sub Form_Load()
    Dim ColX As ColumnHeader
    Dim Index As Integer
    
    Call InitialiseDefinition
    Call InitialiseColumnDataTypes
    
    Call InitialiseSearchFrame
 
    Call Initialise
       
    ' add the column headers to the form. Add the same names to the Order by drop down
    For Index = 1 To ColumnHeaderNames.Count
        Set ColX = SearchResults.ColumnHeaders.Add()
        ColX.Text = ColumnHeaderNames(Index)
        ColX.width = (SearchResults.width - 1000) / ColumnHeaderNames.Count
        OrderBy.AddItem ColumnHeaderNames(Index)
    Next Index
    
    Call InitialiseComboBoxes(False)

    Call ResetButton_Click
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Initialised = False
End Sub

Private Sub FromLatitude_Change()
    Call JobTracking.ForceFloatText(FromLatitude)
End Sub

Private Sub FromLatitude_KeyPress(KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub FromLongitude_Change()
    Call JobTracking.ForceFloatText(FromLongitude)
End Sub

Private Sub FromLongitude_KeyPress(KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub MEICNumberSearch_KeyPress(KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub MultiSelectCheck_Click()
    Dim Index As Long

    ' get (one of) the selected line
    Index = -1
    If SearchResults.ListItems.Count > 0 Then
        Index = SearchResults.SelectedItem.Index
    End If
    
    ' set the ListView into Multi/Single select mode
    SearchResults.MultiSelect = (MultiSelectCheck.value = Checked)
    
    ' select the selected line retrieved above
    If Index > 0 Then
        SearchResults.ListItems(Index).Selected = True
    
        ' set focus to highlight the selected line
        SearchResults.SetFocus
    End If
    
End Sub

Private Sub ResetButton_Click()
    Dim Index As Integer
    
    ' clear and rename the search results
    SearchResults.ListItems.Clear
    ResultsFrame.Caption = DataTypeAlias & " Results"
    
    ' clear the current query
    CurrentQuery = ""
    
    ' set the Ordering to default
    OrderBy.ListIndex = 0
    
    ' Clear the location search
    FromLatitude.Text = ""
    ToLatitude.Text = ""
    FromLongitude.Text = ""
    ToLongitude.Text = ""

    'Clear the By Date search
    SearchDateTo.value = Now
    SearchDateTo.CheckBox = True
    SearchDateTo = Null
    SearchDateFrom.value = Now
    SearchDateFrom.CheckBox = True
    SearchDateFrom = Null
    
    DateSearchFrame.Visible = DateSearchEnabled

    ' clear the rest of the search boxes
    For Index = 0 To SearchLabel.Count - 1
        SearchTextBox(Index) = ""
        If SearchComboBox(Index).ListCount > 0 Then SearchComboBox(Index).ListIndex = 0
    Next Index
    
    If MEICNumberSearch.ListCount > 0 Then MEICNumberSearch.ListIndex = 0

End Sub

Private Sub SearchButton_Click()
    Dim SQLQuery As String
    Dim WhereQuery As String
    Dim Results As Object
    Dim NumberOfResults As Integer
    Dim Index, Index2 As Integer
    Dim ColDataType As ColDataTypeEnum
    
    On Error GoTo SearchButton_Error
    
    WhereQuery = " FROM " & DataType & "_DATA d, " & _
                 "     " & DataType & "_OBSERVATION o, " & _
                 " meds_processing_job j " & _
                 "WHERE d.meds_job_number = o.meds_job_number and " & _
                 "      d.meds_observation_number = o.meds_observation_number and " & _
                 "      j.job_number = d.meds_job_number "
        
    If MEICNumberSearch.Text <> "" Then
        WhereQuery = WhereQuery & " AND j.meic_number = '" & MEICNumberSearch.Text & "'"
    End If
    
    If FromLatitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.latitude >= " & FromLatitude.Text
    End If
    
    If ToLatitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.latitude <= " & ToLatitude.Text
    End If
    
    If FromLongitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.longitude >= " & FromLongitude.Text
    End If
    
    If ToLongitude.Text <> "" Then
        WhereQuery = WhereQuery & " AND o.longitude <= " & ToLongitude.Text
    End If
    
    If DateSearchFrame.Visible And SearchDateFrom.Enabled And SearchDateFrom <> "" Then
        WhereQuery = WhereQuery & " AND o." & NameOfDateField & " >= TO_DATE('" & _
            SearchDateFrom.Day & "/" & SearchDateFrom.Month & "/" & SearchDateFrom.Year & "','DD/MM/YYYY') "
    End If
    
    If DateSearchFrame.Visible And SearchDateTo.Enabled And SearchDateTo <> "" Then
        WhereQuery = WhereQuery & " AND o." & NameOfDateField & " <= TO_DATE('" & _
            SearchDateTo.Day & "/" & SearchDateTo.Month & "/" & SearchDateTo.Year & "','DD/MM/YYYY') "
    End If

    ' add in the user definable criteria
    
    For Index2 = 1 To SearchNumbers.Count
        Index = SearchNumbers.Item(Index2)
        If SearchComboBox(Index).Visible And SearchComboBox(Index).Text <> "" Then
            If (UCase$(SearchComboBox(Index).Text) = "NULL") Then
                WhereQuery = WhereQuery & " AND " & SearchCriteria.Item(Index2) & " is NULL"
            Else
                WhereQuery = WhereQuery & " AND " & SearchCriteria.Item(Index2) & " = '" & _
                Replace(SearchComboBox(Index).Text, "'", "''") & "'"
            End If
        End If
        
        If SearchTextBox(Index).Visible And SearchTextBox(Index).Text <> "" Then
            If (UCase$(SearchTextBox(Index).Text) = "NULL") Then
                    WhereQuery = WhereQuery & " AND " & SearchCriteria.Item(Index2) & " is NULL"
            Else
                ColDataType = SearchDataTypes.Item(CStr(Index))
                If (ColDataType = COL_DATA_TYPE_INTEGER) Or (ColDataType = COL_DATA_TYPE_FLOAT) Then
                    WhereQuery = WhereQuery & "AND " & SearchCriteria.Item(Index2) & _
                    " = " & SearchTextBox(Index).Text
                Else
                    WhereQuery = WhereQuery & " AND " & SearchCriteria.Item(Index2) & _
                    " like '%" & Replace(SearchTextBox(Index).Text, "'", "''") & "%'"
                End If
            End If
        End If
    Next Index2


    CurrentCountQuery = "Select count(1)" & WhereQuery
    Set Results = OraDatabase.CreateDynaset(CurrentCountQuery, 0&)
        
    NumberOfResults = Results("count(1)")
    
    If NumberOfResults > 1000000 Then
        MsgBox "Too Many Values (" & NumberOfResults & ") returned by search - refine search further and continue "
    Else
        SQLQuery = "SELECT "
        
        For Index = 1 To ColumnNames.Count
            If (Index = 1) Then
                SQLQuery = SQLQuery & ColumnSearchNames(Index)
            Else
                SQLQuery = SQLQuery & ", " & ColumnSearchNames(Index)
            End If
        Next Index
        
        SQLQuery = SQLQuery & ", d.meds_observation_number, d.meds_job_number"
        SQLQuery = SQLQuery & WhereQuery
        If OrderBy.Text <> "" Then
            SQLQuery = SQLQuery & _
                    " ORDER BY " & ColumnSearchNames.Item(OrderBy.ListIndex) & _
                    " " & OrderDirection.Text
        End If
        
        CurrentQuery = SQLQuery
   
        Call DisplayResults
        
        Call InitialiseComboBoxes(True)
    End If

Exit Sub
SearchButton_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing search :" & err.Number & " " & err.description
End If

End Sub

Private Sub DisplayResults()
    Dim i As Integer
    Dim Results As Object
    Dim RowCount As Integer
    Dim li As ListItem
    Dim lsi As ListSubItem
    Dim OutStr As String
    Dim Loading As Boolean
    
    On Error GoTo DisplayResults_Error
    
    Loading = False
    
    SearchResults.ListItems.Clear
    SearchResults.MultiSelect = (MultiSelectCheck.value = Checked)
    Set JobNumbers = New Collection
    Set ObsNumbers = New Collection
    
    If CurrentQuery = "" Then
        Exit Sub
    End If
    
    ' the number of objects selected (don't worry if it creeps over the maximum)
    
    Set Results = OraDatabase.CreateDynaset(CurrentCountQuery, 0&)
        
    NumberOfResults = Results("count(1)")
    
    ' get the objects that fulfil the selection criteria
    
    Set Results = OraDatabase.CreateDynaset(CurrentQuery, 0&)

    Loading = True
    While Not Results.EOF
        For i = 1 To ColumnNames.Count
            If Not IsNull(Results(ColumnNames(i))) Then
                OutStr = Results(ColumnNames(i))
            Else
                OutStr = ""
            End If
        
            If (i = 1) Then
                Set li = SearchResults.ListItems.Add(, , OutStr)
            Else
                li.ListSubItems.Add , , OutStr
            End If
        Next i
        
        If Not IsNull(Results("meds_observation_number")) Then
            OutStr = Results("meds_observation_number")
        Else
            OutStr = ""
        End If
        
        ObsNumbers.Add OutStr
         
        If Not IsNull(Results("meds_job_number")) Then
            OutStr = Results("meds_job_number")
        Else
            OutStr = ""
        End If
         
        JobNumbers.Add OutStr

        Results.MoveNext
    Wend
    Loading = False
    
    If NumberOfResults > 0 Then
        ResultsFrame.Caption = "Found " & NumberOfResults & " in " & DataTypeAlias
    Else
        ResultsFrame.Caption = "No Records Found in " & DataTypeAlias
    End If

    SearchResults.SetFocus
Exit Sub
DisplayResults_Error:
If err.Number <> 32755 Then
    MsgBox "Error while processing search :" & err.Number & " " & err.description
End If
If Loading Then
    OutStr = "XXXXXXXXXXXXXX"
    Resume Next
End If

End Sub



Private Sub InitialiseSearchFrame()
    Dim Index As Integer
    
    Set SearchNumbers = New Collection
    Set SearchCriteria = New Collection
    Set SearchDataTypes = New Collection
    ReDim IsComboBox(0 To SearchLabel.Count - 1)
    
    ' initialise Selection ordering
    OrderBy.Clear
    OrderBy.AddItem ("")  ' rest populated in form_load

    ' select an order by entry
    OrderBy.ListIndex = 0
    
    OrderDirection.Clear
    OrderDirection.AddItem ("ASC")
    OrderDirection.AddItem ("DESC")
    
    OrderDirection.Text = "ASC"
    
    For Index = 0 To (SearchLabel.Count - 1)
        SearchLabel(Index).Visible = False
        SearchTextBox(Index).Visible = False
        SearchComboBox(Index).Visible = False
        IsComboBox(Index) = False
    Next Index
    
    ' enable the MultiSelectCheck check box, if
    ' appropriate user
    
    MultiSelectCheck.value = Unchecked
    MultiSelectCheck.Enabled = multiSelectUser()
    
End Sub

Private Sub SetSelectedItem(ByRef box As ComboBox, ByVal SelectedStr As String)

    Dim Index, boxIndex As Long
    
    boxIndex = -1
    Index = 0
    
    While (boxIndex < 0) And (Index < box.ListCount)
        If SelectedStr = box.List(Index) Then boxIndex = Index
        Index = Index + 1
    Wend
    
    If (boxIndex < 0) Then boxIndex = 0
    
    box.ListIndex = boxIndex
  

End Sub
Private Sub InitialiseMeicNumbersForForm(ByRef col As Collection)
    Dim SQLQuery As String
    Dim Results As Object

    SQLQuery = "Select distinct meic_number from meds_processing_job j," & DataType & _
               "_OBSERVATION o where j.job_number = o.meds_job_number Order by meic_number"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    While Not Results.EOF
        If Results("meic_number") <> "" Then
            col.Add Results("meic_number").value
        End If
        Results.MoveNext
    Wend

End Sub

' Initialise the set of MEIC numbers which are possible for the
' chosen data type on this form
Private Sub InitialiseMeicNumberBox(ByVal ForRefresh As Boolean)
    Dim col As Collection
    Dim Index As Long
    Dim TextStr As String
    
    TextStr = MEICNumberSearch.Text

    MEICNumberSearch.Clear
    
    ' add the empty string
    
    MEICNumberSearch.AddItem ("")
    
    Set col = New Collection
    Call InitialiseMeicNumbersForForm(col)
    
    For Index = 1 To col.Count
        MEICNumberSearch.AddItem col(Index)
    Next
    
    If ForRefresh Then Call SetSelectedItem(MEICNumberSearch, TextStr)
End Sub


Private Sub InitialiseComboContents(ByRef box As ComboBox, _
                                    ByVal SearchName As String, _
                                    ByVal ForRefresh As Boolean)
    Dim SQLQuery As String
    Dim Results As Object
    Dim TableName, ColumnName As String
    Dim TextStr As String
    
    TextStr = box.Text

    ColumnName = Right(SearchName, Len(SearchName) - 2)
    If left(SearchName, 2) = "o." Then
        TableName = DataType & "_observation"
    Else
        TableName = DataType & "_data"
    End If

    box.Clear
    SQLQuery = "Select distinct " & ColumnName & " from " & TableName & _
               " Order by " & ColumnName
    
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
    ' add the empty string, so that the box can be cleared
    
    box.AddItem ""
    
    While Not Results.EOF
        If Results(ColumnName) <> "" Then
            box.AddItem Results(ColumnName)
        End If
        Results.MoveNext
    Wend
    
    ' check for null values
    
    SQLQuery = "Select count(1) from " & TableName & " where " & ColumnName & " is NULL"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)

    If Results("count(1)") > 0 Then
        box.AddItem ("NULL")
    End If
    
    If ForRefresh Then Call SetSelectedItem(box, TextStr)
End Sub

Private Sub InitialiseComboBoxes(ByVal ForRefresh As Boolean)
    Dim Index, ComboIndex As Integer
    
    Call InitialiseMeicNumberBox(ForRefresh)
    
    For Index = 1 To SearchNumbers.Count
        ComboIndex = SearchNumbers.Item(Index)
        If IsComboBox(ComboIndex) Then
            Call InitialiseComboContents(SearchComboBox(ComboIndex), SearchCriteria(Index), ForRefresh)
        End If
    Next Index
End Sub



Private Sub SearchComboBox_KeyPress(Index As Integer, KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub SearchResults_ColumnClick(ByVal ColumnHeader As MSComctlLib.ColumnHeader)

'    SearchResults.SortKey = ColumnHeader.Index - 1
    
    ' reverse the ordering from previous sort
'    If SearchResults.SortOrder = lvwAscending Then
'        SearchResults.SortOrder = lvwDescending
'    Else
'        SearchResults.SortOrder = lvwAscending
'    End If
    
    ' Set Sorted to True to sort the list
'    SearchResults.Sorted = True

End Sub

Private Sub SearchTextBox_Change(Index As Integer)
    Dim ColDataType As ColDataTypeEnum
    Dim BoxText As String
    
    BoxText = UCase$(SearchTextBox(Index).Text)
    
    If (BoxText <> "N" And BoxText <> "NU" And BoxText <> "NUL" And BoxText <> "NULL") Then
        ColDataType = SearchDataTypes.Item(CStr(Index))
    
        Select Case ColDataType
        Case COL_DATA_TYPE_INTEGER
            Call JobTracking.ForceIntegerText(SearchTextBox(Index))
        
        Case COL_DATA_TYPE_FLOAT
            Call JobTracking.ForceFloatText(SearchTextBox(Index))
        End Select
    End If
    
End Sub

Private Sub SearchTextBox_KeyPress(Index As Integer, KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub ToLatitude_Change()
    Call JobTracking.ForceFloatText(ToLatitude)
End Sub

Private Sub ToLatitude_KeyPress(KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Private Sub ToLongitude_Change()
    Call JobTracking.ForceFloatText(ToLongitude)
End Sub

Private Sub InitialiseDefinition()
    Dim SQLQuery As String
    Dim Results As Object
    Dim PossHasTrack As Boolean
    Dim PossHasJTD As Boolean
    Dim PossHasBulkImport As Boolean
    
    ' Defaults
    DataTypeAlias = DataType
    NameOfDateField = ""
    JobTypeDescription = DataType
    DataHasTime = False
    DateIsMandatory = False
    NewDataHasCruise = False
    DateSearchEnabled = False
    DataHasTrack = False
    PossHasTrack = False
    PossHasJTD = False
    PossHasBulkImport = False
    
    ' has the database been upgraded to deal with tracks and job_type_description?
    SQLQuery = "SELECT count(*) from all_tab_columns where " & _
               "table_name = 'GENERIC_EDIT' and column_name = " & _
               "'JOB_TYPE_DESCRIPTION'"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
     
    If (Results("count(*)") = 1) Then
        PossHasJTD = True
    End If
    
    SQLQuery = "SELECT count(*) from all_tab_columns where " & _
               "table_name = 'GENERIC_EDIT' and column_name = " & _
               "'HAS_TRACK'"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
     
    If (Results("count(*)") = 1) Then
        PossHasTrack = True
    End If
    
    SQLQuery = "SELECT count(*) from all_tab_columns where " & _
               "table_name = 'GENERIC_EDIT' and column_name = " & _
               "'BULK_IMPORT_INDEX'"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
     
    If (Results("count(*)") = 1) Then
        PossHasBulkImport = True
    End If

    SQLQuery = "SELECT "
    If PossHasTrack = True Then
        SQLQuery = SQLQuery & "has_track, "
    End If
    
    If PossHasJTD = True Then
        SQLQuery = SQLQuery & "job_type_description, "
    End If
             
    If PossHasBulkImport = True Then
        SQLQuery = SQLQuery & "bulk_import_index, "
    End If
       
    SQLQuery = SQLQuery & " data_type_alias, date_record_name, allow_time, date_required," & _
               "cruise_required, date_search_required" & _
               " FROM generic_edit WHERE upper(row_type) = 'DEFINITION' and " & _
               " upper(table_name) = '" & UCase$(DataType) & "'"
               
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
              
    If Not IsNull(Results("data_type_alias")) Then
        DataTypeAlias = Results("data_type_alias")
    End If
               
    If PossHasJTD = True Then
        If Not IsNull(Results("job_type_description")) Then
            JobTypeDescription = Results("job_type_description")
        End If
    End If
    
    If PossHasBulkImport = True Then
        If Not IsNull(Results("bulk_import_index")) Then
            BulkImportType = Results("bulk_import_index")
            
            ' is this a import type for the current data type?
            If Not TestForBulkImport(BulkImportType) Then
                BulkImportType = 0
            End If
        Else
            BulkImportType = 0
        End If
    End If

   
    If Not IsNull(Results("date_record_name")) Then
        NameOfDateField = Results("date_record_name")
    End If
    
    If Not IsNull(Results("allow_time")) Then
        If Results("allow_time") = 0 Then
            DataHasTime = False
        Else
            DataHasTime = True
        End If
    End If
    
     If Not IsNull(Results("date_required")) Then
        If Results("date_required") = 0 Then
            DateIsMandatory = False
        Else
            DateIsMandatory = True
        End If
    End If
    
    If Not IsNull(Results("cruise_required")) Then
        If Results("cruise_required") = 0 Then
            NewDataHasCruise = False
        Else
            NewDataHasCruise = True
        End If
    End If
    
    If Not IsNull(Results("date_search_required")) Then
        If Results("date_search_required") = 0 Then
            DateSearchEnabled = False
        Else
            DateSearchEnabled = True
        End If
    End If
    
    If PossHasTrack = True Then
        If Not IsNull(Results("has_track")) Then
            If Results("has_track") = 0 Then
                DataHasTrack = False
            Else
                DataHasTrack = True
            End If
        End If
    End If
    
    If (DataHasTrack = True) Then
    
        ' see if there is a "TRACK" table for this data type
        
        SQLQuery = "select distinct table_name from all_tab_columns " & _
               "where upper(table_name) = upper('" & DataType & "_TRACK')"
               
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
  
        If Results.EOF Then
            DataHasTrack = False
        End If
    End If
    
    AddTrackButton.Visible = DataHasTrack
    
End Sub

Public Function SetDataDetails(ByVal DataTypeToSet As String) As Boolean
    Dim Message As String
    If Initialised Then
        Message = "Already editing " & DataTypeAlias & " data"
        MsgBox Message, vbExclamation
    
        SetDataDetails = False
    Else
        DataType = DataTypeToSet
        Initialised = True
        SetDataDetails = True
    End If
End Function

Private Sub ToLongitude_KeyPress(KeyAscii As Integer)
    ' go to Search button
    If KeyAscii = 13 Then
        SearchButton.SetFocus
    End If
End Sub

Public Sub AlteredData(Changed As Boolean)
    DataAltered = Changed
End Sub

Private Function multiSelectUser() As Boolean
    Dim SQLQuery As String
    Dim Results As Object
    Dim NResults As Long
    
    multiSelectUser = False
    
    ' has 'MULTI_SELECT' column been set in the table 'ACCESS_CONTROL'?
    SQLQuery = "SELECT count(1) FROM ALL_TAB_COLUMNS where " & _
                "table_name = 'ACCESS_CONTROL' and column_name = 'MULTI_SELECT'"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    NResults = Results("count(1)")
    
    If NResults < 1 Then
        multiSelectUser = True
        Exit Function
    End If
    
    ' see if the user has MULTI_SELECT privilege for this data type
    
    SQLQuery = "SELECT count(1) FROM ACCESS_CONTROL " & _
               "WHERE upper(USER_NAME) = '" & UCase$(UID) & _
               "' AND MULTI_SELECT = 1 " & _
               "  AND (upper(TABLE_NAME) = '" & UCase(DataType) & _
               "' OR upper(TABLE_NAME) = '" & UCase(DataTypeAlias) & "')"
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
        
    NResults = Results("count(1)")
    
    multiSelectUser = (NResults > 0)
End Function
