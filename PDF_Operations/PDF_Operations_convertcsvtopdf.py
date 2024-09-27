import pandas as pd 
import pdfkit 

# SAVE CSV TO HTML USING PANDAS 
csv = 'MyCSV.csv'
html_file = csv_file[:-3]+'html'

df = pd.read_csv(csv_file, sep=',') 
df.to_html(html_file) 

# INSTALL wkhtmltopdf AND SET PATH IN CONFIGURATION 
# These two Steps could be eliminated By Installing wkhtmltopdf - 
# - and setting it's path to Environment Variables 
path_wkhtmltopdf = r'D:\Softwares\wkhtmltopdf\bin\wkhtmltopdf.exe'
config = pdfkit.configuration(wkhtmltopdf=path_wkhtmltopdf) 

# CONVERT HTML FILE TO PDF WITH PDFKIT 
pdfkit.from_url("MyCSV.html", "FinalOutput.pdf", configuration=config) 