#Install module
	$install = Install-Module -Name ImportExcel

#Import module
$import = Import-Module ImportExcel


# Input File Path
$FilePath = "C:\Reports\EmpData.xlsx"
 
# Read the Excel file and store its data into the variable
$ExcelData = Import-Excel -Path $FilePath


