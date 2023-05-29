# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-7.2
# api details: https://opencovid.ca/api/



#$cases= Invoke-RestMethod -uri "https://api.opencovid.ca/timeseries?stat=all&geo=pt&pt_names=canonical&after=2022-09-01"
#https://api.opencovid.ca/summary?after=01-09-2020
#$cases.cases | export-csv -path C:\Users\Student\Desktop\Code\DataIn\Covid\cases.csv

# dd-mm-yyyy

param ([string]$DT)
Write-Host($DT)

Write-Host("https://api.opencovid.ca/timeseries?stat=all&geo=pt&pt_names=canonical&after=$DT")
$data= Invoke-RestMethod -uri "https://api.opencovid.ca/timeseries?stat=all&geo=pt&pt_names=canonical&after=$DT"   


##09-01-2022"
#$data.active | export-csv -path C:\Users\Student\Desktop\Code\DataIn\Covid\activecases.csv –NoTypeInformation 
$data.data.cases | export-csv -path C:\Users\Student\Desktop\BDM\cases.csv –NoTypeInformation
$data.data.vaccine_administration_dose_3 | export-csv -path C:\Users\Student\Desktop\BDM\fullyvaccined.csv –NoTypeInformation
$data.data.deaths | export-csv -path C:\Users\Student\Desktop\BDM\mortality.csv –NoTypeInformation
#$data.recovered | export-csv -path C:\Users\Student\Desktop\Code\DataIn\Covid\recovered.csv –NoTypeInformation
#$data.testing | export-csv -path C:\Users\Student\Desktop\Code\DataIn\Covid\testing.csv –NoTypeInformation
