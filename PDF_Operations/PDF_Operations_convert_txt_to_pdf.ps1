
#Convert input (file) into a PDF document (requires Word installed).
Function ConvertTo-PDFFile
{
    Param
    (
        [string]$Source,
        [string]$Destionation
    )
 
    #Get the content of the file.
    $Source = Get-Content $Source -Encoding UTF8;
 
    #Required Word Variables.
    $ExportFormat = 17;
    $SaveOption = 0
 
    #Create a hidden Word window.
    $WordObject = New-Object -ComObject word.application;
    $WordObject.Visible = $false;
 
    #Add a Word document.
    $DcoumentObject = $WordObject.Documents.Add();
 
    #Put the text into the Word document.
    $WordSelection = $WordObject.Selection;
    $WordSelection.TypeText($Source);
 
    #Set the page orientation to landscape.
    $DcoumentObject.PageSetup.Orientation = 1;
 
    #Export the PDF file and close without saving a Word document.
    $DcoumentObject.ExportAsFixedFormat($Destionation,$ExportFormat);
    $DcoumentObject.close([ref]$SaveOption);
    $WordObject.Quit();
}
ConvertTo-PDFFile -Source "C:\Path\To\My\File.txt" -Destionation "C:\Path\To\Exported\PDF\file.pdf";