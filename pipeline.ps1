#this script imports an excel spreadsheet and piping the spreadsheet data which contains computer names and seeing if there's a connection. It sorts the ping succeeded and converts it to an HTML file

Import-Excel -Path E:\Users\Administrator\Desktop\workstations.xlsx | Export-Csv -Path E:\Users\Administrator\Desktop\workstationscsv.csv -NoTypeInformation
$workstations = Import-Csv -Path E:\Users\Administrator\Desktop\workstationscsv.csv | Select -ExpandProperty name
$workstations | Test-NetConnection | Sort-Object -Property PingSucceeded | ConvertTo-Html -Title "scripting is funz" -Head "<marquee><h1>Hi Bob</h1></marquee>" | Out-File -FilePath E:\users\Administrator\Desktop\nettest.htm
