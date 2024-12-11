try {
    $ErrorActionPreference = 'Stop'

    $budhud = Resolve-Path $PSScriptRoot
    Set-Location $budhud

    $osPlatform = [System.Environment]::OSVersion.Platform
    if (!($osPlatform -eq [System.PlatformID]::Win32NT)) {
        Write-Host -ForegroundColor 'Red' 'This script can only be run on Windows.'
        Write-Host 'Please use a Windows system to run the HUD compiler.'
        return
    }

    $procnames = 'hl2', 'tf_win64'
    if (Get-Process -Name $procnames -ErrorAction SilentlyContinue) {
        Write-Host -ForegroundColor 'Red' "$($procnames -join ' / ') detected"
        Write-Host 'Close TF2 before running this script again'
        Break
    }

    if (!(Test-Path -Path 'budhud-compiler.exe')) {
        $url = 'https://github.com/rbjaxter/budhud-compiler/releases/latest/download/budhud-compiler.exe'
        $Path = "$PSScriptRoot/budhud-compiler.exe"

        try {
            Invoke-WebRequest -URI $url -OutFile $Path
            Write-Host -ForegroundColor 'Green' 'The compiler has been downloaded.'
        }
        catch {
            Write-Host -ForegroundColor 'Red' 'There was a problem downloading the compiler.'
            return
        }
    }

    $budhudCompiled = 'budhud_compiled'

    if (Test-Path -Path $budhudCompiled) {
        Remove-Item -Path $budhudCompiled -Force -Recurse
    }
    if (Test-Path -path "$budhudCompiled.zip") {
        Remove-Item -Path "$budhudCompiled.zip" -Force -Recurse
    }

    & ./budhud-compiler.exe -s -m -i 'resource', 'scripts' -o "$budhudCompiled/resource", "$budhudCompiled/scripts"

    if ($lastexitcode -ne 0) {
        throw 'Compilation failed.'
    }

    $otherRequiredFiles = @(
        '#users/custom/#customization/_enabled/bh_menu_defaultbackground/chapterbackgrounds.txt',
        '#users/custom/#customization/_enabled/bh_animate_foreground.txt',
        '#users/custom/#customization/_enabled/bh_medic_rainbowcharge.txt',
        '#users/custom/scripts/hudanimations_custom.txt',
        '_budhud/scripts/hudanimations_budhud.txt',
        'cfg/overrides/hud/hud_options.cfg',
        'cfg/valve.rc',
        'info.vdf'
    )
    $otherRequiredFolders = @(
        'materials/'
    )
    foreach ($file in $otherRequiredFiles) {
        New-Item -Path "$budhudCompiled/$file" -ItemType File -Force | Out-Null
        Copy-Item -Path $file -Destination "$budhudCompiled/$file" -Force
    }
    foreach ($folder in $otherRequiredFolders) {
        Copy-Item -Path $folder -Destination "$budhudCompiled/$folder" -Force -Recurse
    }

    $notRequiredLargeFilesAndFolders = @(
        'materials/console/',
        'materials/vgui/replay/thumbnails/#users/',
        'materials/vgui/replay/thumbnails/menu_icons/menugif.*',
        'resource/closecaption_/'
    )
    foreach ($fileOrFolder in $notRequiredLargeFilesAndFolders) {
        Remove-Item -Path "$budhudCompiled/$fileOrFolder" -Force -Recurse
    }

    Compress-Archive -Path $budhudCompiled -DestinationPath "$budhudCompiled.zip"

    Write-Host -ForegroundColor 'Green' 'Compilation Complete.'
}
catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
}
finally {
    Read-Host 'Press Enter to exit'
}