Attribute VB_Name = "Module1"

Public c As New ADODB.Connection
Public r As New ADODB.Recordset
Public sql As String


Public Function conn()
    c.Open "Provider=MSDAORA.1;User ID=PRJ2432B/prj2432b;Persist Security Info=False"
    
    
End Function
