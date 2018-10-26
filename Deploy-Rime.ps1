# Deploy Weasel.

param (
    [string]$WeaselPath = "C:\Program Files (x86)\Rime\weasel-0.11.1"
)

$dataFolder = "$PSCommandPath/..";
Get-ChildItem $("$dataFolder/rime-double-pinyin") -Filter "*.yaml" | foreach {
    Copy-Item $_ ./;
}

& "$WeaselPath/WeaselDeployer.exe" /deploy