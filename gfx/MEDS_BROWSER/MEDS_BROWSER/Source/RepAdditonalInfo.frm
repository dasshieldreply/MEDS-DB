VERSION 5.00
Begin VB.Form AdditionalInfo 
   Caption         =   "Additional Information"
   ClientHeight    =   6930
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9150
   LinkTopic       =   "Form1"
   ScaleHeight     =   6930
   ScaleWidth      =   9150
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame AdditionalOptions 
      Caption         =   "User (optional) settings"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   8760
      Begin VB.Frame QueryFrame 
         Caption         =   "Query Options"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2775
         Left            =   360
         TabIndex        =   11
         Top             =   480
         Width           =   3255
         Begin VB.CheckBox CruiseTick 
            Caption         =   "User Cruise Details"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   15
            Top             =   1560
            Width           =   2295
         End
         Begin VB.CheckBox UserCheck 
            Caption         =   "User Generated Query"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   14
            Top             =   2160
            Width           =   2295
         End
         Begin VB.CheckBox FlagStatus 
            Caption         =   "User Flags"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   13
            Top             =   960
            Width           =   2055
         End
         Begin VB.CheckBox JobCheck 
            Caption         =   "User Job Details"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   240
            TabIndex        =   12
            Top             =   360
            Width           =   1815
         End
      End
      Begin VB.Frame LayerFrame 
         Caption         =   "Layer Options"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2775
         Left            =   3840
         TabIndex        =   6
         Top             =   480
         Width           =   4575
         Begin VB.ComboBox ColorBox 
            Height          =   315
            Left            =   1560
            TabIndex        =   17
            Text            =   "Colour"
            Top             =   1920
            Width           =   2775
         End
         Begin VB.ComboBox BitmapBox 
            Height          =   315
            ItemData        =   "RepAdditonalInfo.frx":0000
            Left            =   1560
            List            =   "RepAdditonalInfo.frx":0002
            TabIndex        =   16
            Text            =   "BitmapBox"
            Top             =   1200
            Width           =   2775
         End
         Begin VB.TextBox Layerbox 
            Height          =   375
            Left            =   1560
            TabIndex        =   7
            Top             =   480
            Width           =   2775
         End
         Begin VB.Label ColorLabel 
            Caption         =   "Colour"
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
            TabIndex        =   10
            Top             =   2040
            Width           =   975
         End
         Begin VB.Label bitmapFile 
            Caption         =   "Bitmap file"
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
            TabIndex        =   9
            Top             =   1320
            Width           =   975
         End
         Begin VB.Label LayerName 
            Caption         =   "Layer Name"
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
            TabIndex        =   8
            Top             =   600
            Width           =   1095
         End
      End
      Begin VB.CommandButton fetchbutton 
         Caption         =   "Fetch"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5280
         TabIndex        =   5
         Top             =   5520
         Width           =   855
      End
      Begin VB.CommandButton cancelbutton 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3960
         TabIndex        =   4
         Top             =   5520
         Width           =   855
      End
      Begin VB.CommandButton backButton 
         Caption         =   "< Back"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2640
         TabIndex        =   3
         Top             =   5520
         Width           =   855
      End
      Begin VB.TextBox SQLSelect 
         Height          =   1695
         Left            =   360
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   3600
         Width           =   8175
      End
      Begin VB.Label Selection 
         Caption         =   "Selection statement"
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
         TabIndex        =   2
         Top             =   3360
         Width           =   1695
      End
   End
End
Attribute VB_Name = "AdditionalInfo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'This is the second (and last) form in construct layer dialog.
'Additional query information can be added to the where clause of the base statement by this dialog.
'It controls calling 3 additional forms the SQL Job, SQL Cruise, SQL Flag forms.
'The base query is stored in the global variables SQLBase (constructed by previous form in the wizard)
'In addition the user can alter the name of hte layer constructed, the bitmap used to display the data
' and the color of the bitmap.

'Author:
'Date  :         23/01/02
'Version:       1.0
'Ammendments:


Dim SQLJobWhere As String       'Job Where clause constructed in JobForm
Dim SQLFlagWhere As String      'Flag Where clause construted in FlagForm
Dim SQLCruiseWhere As String    'Cruise Where clause constructed in CruiseForm


Private Sub Reset()

'Reset Form to  default values

    Dim SQLResetQuery As String     'Store the default string
    
    'Set all check boxes to blank
    
    UserCheck.value = 0
    JobCheck.value = 0
    FlagStatus.value = 0
    
    'Reset all where clause previously constructed
    SQLJobWhere = ""
    SQLFlagWhere = ""
    SQLCruiseWhere = ""
    
    'Reset Base Where Clause
    SQLBaseWhere = SQLCurrentLayer(SQLHeaderTableIdx) & " > 0"
    
    'Build fdefault query
    SQLResetQuery = "SELECT " & SQLBaseAttributes _
                & " FROM " & SQLBaseTable _
                & " WHERE " & SQLBaseWhere
    
    'Send query to form
    SQLSelect.Text = SQLResetQuery
    
End Sub

Private Sub backButton_Click()
'Return to previous dialog in wizard

    'Reset this form
    Reset
      
    'Hide this form
    Unload Me
    
    'Display parent form
    If SQLDict.Item(Main.txtSelectableLayer.Text & "Generic") = 5 Then
        FetchRepData.Show
    End If
    
End Sub


Private Sub CancelButton_Click()
'Cancel fetch - reset and hide

    Reset
    Unload Me
    
End Sub

Private Sub fetchbutton_Click()

Dim BitmapName As String
Dim Color As String

'Construct the Layer from the Query

    BitmapName = BitmapBox.List(BitmapBox.ListIndex)
    Color = FetchColour
    
    'Call Addlayer function (in Main) Returns true if layer is succesfully created

    If (Main.AddLayer(SQLSelect.Text, Layerbox.Text, BitmapName, Color) = True) Then
        'Store Layer Information
        StoreSQLLayer UCase$(Layerbox.Text), UCase$(SQLSelect.Text), UCase$("Parent Layer")
       'tidy up
        Reset
        'Hide form
        'AdditionalInfo.Hide
        Unload Me
    End If

End Sub
    
Private Function FetchColour()
    Dim ListText As String
    
    ListText = ColorBox.List(ColorBox.ListIndex)
    
    Select Case (ListText)
    
    Case "red": FetchColour = 255
    Case "navy":  FetchColour = 8404992
    Case "green":  FetchColour = 65280
    Case "yellow":  FetchColour = 65535
    Case "black":  FetchColour = 0
    Case "orange":  FetchColour = 33023
    Case "blue":  FetchColour = 16711680
    Case Else:  FetchColour = 128
    
    End Select
 
End Function
Public Sub StoreSQLLayer(ByVal Name As String, ByVal Statement As String, ByVal Parent As String)
'Routine to Store information on the layer created

    Dim ptr As Integer
    Dim NonValidArray(100) As Integer
    Dim i As Integer, j As Integer
    
    ptr = 0
    
    'Store Layer Name in first element of array
    
    SQLLayerInfo(SQLLayerCount, SQLLayerNameIdx) = Name
    
    'Store all information on current layer into SQL Layer list
    
    For i = 0 To SQLConstructCols - 1
        SQLLayerInfo(SQLLayerCount, i + 1) = UCase$(SQLCurrentLayer(i))
    Next

    'Store SQL used to construct the layer
    SQLLayerInfo(SQLLayerCount, SQLStatementIdx) = Statement
    
    'Set the parent layer to none
    SQLLayerInfo(SQLLayerCount, SQLParentLayerIdx) = Parent
    
    'Test to see if any SQL Layers have been deleted
 
    For i = 0 To SQLLayerCount
        If Main.LayerExists(SQLLayerInfo(i, SQLLayerNameIdx)) Then
        ' Layer still exists
       
            'Store Current Layer Info.
            For j = 0 To SQLLAYERCOLS
                SQLLayerInfo(ptr, j) = SQLLayerInfo(i, j)
            Next
            
            'Increment Ptr
            ptr = ptr + 1
        End If
    Next
    
    'A maximum of SQL layers permitted otherwise application will grind to a halt
    
    If ptr > SQLMAXLAYERS Then
        MsgBox "The Maximum SQL Layers reached - " & SQLMAXLAYERS & " please delete some SQL layers"
        ptr = SQLMAXLAYERS
    End If
    
    'Set SQLLayerCount to ptr
    SQLLayerCount = ptr

End Sub


Private Sub Usercheck_click()
'User constructed query

    If UserCheck.value = 1 Then 'Disenable all check fields and unlock selection text window

    
        SQLSelect.Locked = False
        JobCheck.Enabled = False
        FlagStatus.Enabled = False
        CruiseTick.Enabled = False
        
    Else                        'Enable check fields and lock selection text window
    
        SQLSelect.Locked = True
        JobCheck.Enabled = True
        FlagStatus.Enabled = True
        If SQLQueryParent <> "REPRESENTATIVE" Then CruiseTick.Enabled = True
        
    End If
    
End Sub

Private Sub JobCheck_Click()

'If Job select tick box clicked on

    If JobCheck.value = 1 Then  'Show Job form
        JobForm.Show
    Else                        'Reset Query and hide job form
        SQLJobWhere = ""
        UpdateQuery
    End If

End Sub


Public Sub JobWhereClause(TempClause As String)
    'Routine to catch string returned from the Job select form

    'Set Query to job clause query and update selection
        
    SQLJobWhere = TempClause
    UpdateQuery
      
End Sub


Private Sub UpdateQuery()
'Build the current query and display it

    Dim SQLQuery As String
    Dim SQLAttributes As String
    Dim SQLFrom As String
    Dim SQLWhere As String
    'Update and redisplay query only if the user build option is off

    If UserCheck.value = 0 Then
        
        'Build the Base Select part of the Query
        SQLAttributes = "Select " & SQLBaseAttributes
        
        'Build From Base From Portion of the Query
        SQLFrom = " FROM " & SQLBaseTable
        
        'Buid the Base Where Portion of the Query
        SQLWhere = " WHERE " & SQLBaseWhere

        'If Job Information set then Add appropriate Job details to Query
        If Not (SQLJobWhere = "") Then
            SQLFrom = SQLFrom & ", " & SQLJobTable & " " & SQLJobAlias
            SQLWhere = SQLWhere & " AND " & SQLJobWhere
        End If
        
        'If Flag Information set then Add appropriate Flag details to Query
        If Not (SQLFlagWhere = "") Then
            SQLFrom = SQLFrom & ", " & SQLFlagTable & " " & SQLFlagAlias
            SQLWhere = SQLWhere & " AND " & SQLFlagWhere
        End If
            
        'If crusie Information set then Add appropriate Cruise details to Query
        If Not (SQLCruiseWhere = "") Then
            SQLFrom = SQLFrom & ", " & SQLCruiseTable & " " & SQLCruiseAlias
            SQLWhere = SQLWhere & " AND " & SQLCruiseWhere
        End If
        
        'Construct and display Query
        SQLQuery = SQLAttributes & SQLFrom & SQLWhere
   
        SQLSelect.Text = SQLQuery
    End If
    
End Sub

