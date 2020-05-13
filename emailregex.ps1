$rawmail = cat 'P:\emails.txt'

$rawmail | select-string -Pattern '\w+\@yahoo.com' -AllMatches | out-file 'e:\Users\Administrator\Desktop\ymail.txt'

copy-item 'P:\emails.txt' -Destination 'e:\Users\Administrator\Desktop\emails.txt'

$rawmail | % {$_ -replace '(\w+)@yahoo.com',"`$1@yahoogle.com"} | out-file 'e:\Users\AdministratorDesktop\emails.txt'
get-content 'e:\Users\Administrator\Desktop\emails.txt'
