$login = "mike.bakinovski@gmail.com"
$password = "ns10mstudio"
$url = "https://rabota.by"
#clear
$IE = New-Object -ComObject InternetExplorer.Application
$IE.Navigate($url) 
While ($IE.Busy)
{ Start-Sleep -Milliseconds 100 }
$IE.Document.forms | Select-Object name

$form = $IE.Document.forms.namedItem("LoginForm")

$form.item("X_Username").value = $login
$form.item("X_Password").value = $password
($form | Where-Object {$_.value -eq "Вхід"}).click()

While ($IE.Busy)
{ Start-Sleep -Milliseconds 100 }
