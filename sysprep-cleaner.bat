# Remove from ALL users (including system accounts)
Get-AppxPackage -AllUsers | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue

# Remove provisioned packages (for new users)
Get-AppxProvisionedPackage -Online | 
ForEach-Object {
    $displayName = $_.DisplayName
    if ($displayName -notmatch "Store|Calculator|Photos|Edge") {
        Remove-AppxProvisionedPackage -Online -PackageName $_.PackageName
    }
}

# Manual cleanup of stubborn packages
$packagesToRemove = @(
    "Microsoft.XboxGameCallableUI",
    "Microsoft.XboxGamingOverlay", 
    "Microsoft.XboxIdentityProvider",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.WindowsMaps",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.BingWeather",
    "Microsoft.BingNews",
    "Microsoft.BingSports",
    "Microsoft.BingFinance",
    "Microsoft.People",
    "Microsoft.GetHelp",
    "Microsoft.Getstarted",
    "Microsoft.Messaging",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MixedReality.Portal",
    "Microsoft.Office.OneNote",
    "Microsoft.OneConnect",
    "Microsoft.Print3D",
    "Microsoft.SkypeApp",
    "Microsoft.Wallet",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.WindowsAlarms",
    "Microsoft.WindowsCamera",
    "Microsoft.WindowsCommunicationsApps",
    "Microsoft.WindowsSoundRecorder"
)

foreach ($package in $packagesToRemove) {
    Get-AppxPackage -Name "*$package*" -AllUsers | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue
    Get-AppxProvisionedPackage -Online | Where-Object {$_.DisplayName -like "*$package*"} | 
    Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
}
