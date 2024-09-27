 $objExcel = new-object -comobject excel.application
$objExcel.Visible = $false          #run-time should be =$false
$objExcel.DisplayAlerts = $false 
$objExcel.ScreenUpdating = $false 
$objExcel.UserControl = $false 
$objExcel.Interactive = $false

$objWorkbook = $objExcel.Workbooks.Open("c:\test.xlxs")
 
 
 
 $rng = $objWorksheet.Cells.Item($i, 1)
    If ($rng.Value() -ne "TRUE" ) 
      {
         $objRange = $rng.EntireRow.Delete()
         $i -= 1 
      }
      $i += 1

       If ($rng.Value() -ne "TRUE" ) 
      {
         $objRange = $rng.EntireColumn.Delete()
         $i -= 1 
      }
      $i += 1



