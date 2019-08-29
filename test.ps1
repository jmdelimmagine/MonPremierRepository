$Guid="\14\cd\a9\f1\91\25\61\41\9b\88\7c\f3\01\8f\0d\a2"
$Domain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$Root = $Domain.GetDirectoryEntry()
$Search = [System.DirectoryServices.DirectorySearcher]$Root
$Search.Filter = "(objectGUID=$Guid)"
$Result = $Search.FindAll()
ForEach ($User In $Result) {
  Write-Host $User.properties.Item("distinguishedName")
}