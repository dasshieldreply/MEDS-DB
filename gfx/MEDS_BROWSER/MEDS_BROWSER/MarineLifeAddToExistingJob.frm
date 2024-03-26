VERSION 5.00
Begin VB.Form MarineLifeAddToExistingJob 
   Caption         =   "Add To An Existing Job"
   ClientHeight    =   3255
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5445
   LinkTopic       =   "Form1"
   ScaleHeight     =   3255
   ScaleWidth      =   5445
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   3255
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5415
      Begin VB.ComboBox DataType 
         Height          =   315
         Left            =   2520
         TabIndex        =   5
         Top             =   360
         Width           =   2175
      End
      Begin VB.CommandButton AbortButton 
         Caption         =   "Exit"
         Height          =   375
         Left            =   3360
         TabIndex        =   4
         Top             =   2640
         Width           =   1815
      End
      Begin VB.CommandButton AddButton 
         Caption         =   "Add"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   2640
         Width           =   1815
      End
      Begin VB.ComboBox MEIC_number 
         Height          =   315
         Left            =   2520
         TabIndex        =   1
         Top             =   840
         Width           =   2175
      End
      Begin VB.Label Label2 
         Caption         =   "Select Data Type "
         Height          =   375
         Left            =   120
         TabIndex        =   6
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label Label1 
         Caption         =   "Select MEIC Number of Job"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   960
         Width           =   2895
      End
   End
End
Attribute VB_Name = "MarineLifeAddToExistingJob"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub AbortButton_Click()
    Unload Me
End Sub

Private Sub AddButton_Click()
    Dim SQLQuery As String
    Dim Results  As Object
    Dim LongJobNo As Long
    Dim LongObsNo As Long
       
    LongObsNo = -1  ' this tells the edit form that this is a new entry
    
    If MEIC_number.Text <> "" And DataType.Text <> "" Then
    
        SQLQuery = "SELECT job_number from meds_processing_job where meic_number = " & MEIC_number.Text
        Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
    
        If Not Results.EOF Then
            LongJobNo = Results("job_number")
        End If
        
        Call MarineLifeEdit.SetEditDetails(EDIT_MODE_NEW, MEIC_number.Text, LongJobNo, LongObsNo, DataType.Text)

        MarineLifeEdit.Show
    Else
        MsgBox "Select a job number and data type to add data for"
    End If

    Unload Me
End Sub

Private Sub Form_Load()
    Dim SQLQuery As String
    Dim Results As Object
    SQLQuery = "SELECT MEIC_Number FROM Job_Tracking " & _
               "WHERE status not in ( 'COMPLETED', 'CANCELLED' ) " & _
               "ORDER BY MEIC_Number DESC "
    Set Results = OraDatabase.CreateDynaset(SQLQuery, 0&)
           
    While Not Results.EOF
        MEIC_number.AddItem Results("meic_number")
        
        Results.MoveNext
    Wend
    
    Call MarineLifeSearch.InitialiseDataType(DataType)
    
End Sub

