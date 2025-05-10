function Write-Done {
    Write-Host 'Done.' -ForegroundColor Green
}
function Write-Failed {
    Write-Host 'Failed.' -ForegroundColor Red
}
function Write-Skipped {
    Write-Host 'Skipped.' -ForegroundColor Yellow
}
function Write-Task {
    param (
        [string]$Task
    )
    Write-Host $Task' ... ' -NoNewline
}

try {
    $ErrorActionPreference = 'Stop'

    $budhud = Resolve-Path $PSScriptRoot
    Set-Location $budhud

    $osPlatform = [System.Environment]::OSVersion.Platform
    if (!($osPlatform -eq [System.PlatformID]::Win32NT)) {
        Write-Host 'This script can only be run on Windows.' -ForegroundColor Red
        Write-Host 'Please use a Windows system to run the HUD compiler.'
        Exit
    }

    $procnames = 'hl2', 'tf_win64'
    if (Get-Process -Name $procnames -ErrorAction SilentlyContinue) {
        Write-Host "$($procnames -join ' / ') detected" -ForegroundColor Red
        Write-Host 'Close TF2 before running this script again'
        Exit
    }

    Write-Task 'Downloading the compiler'

    if (!(Test-Path -Path 'budhud-compiler.exe')) {
        Invoke-WebRequest `
            -URI 'https://github.com/rbjaxter/budhud-compiler/releases/latest/download/budhud-compiler.exe' `
            -OutFile "$PSScriptRoot/budhud-compiler.exe"
        Write-Done
    }
    else {
        Write-Skipped
    }

    $budhudCompiled = 'budhud_compiled'

    if (Test-Path -Path $budhudCompiled) {
        Remove-Item -Path $budhudCompiled -Recurse
    }
    if (Test-Path -path "$budhudCompiled.zip") {
        Remove-Item -Path "$budhudCompiled.zip" -Recurse
    }

    Write-Task 'Auto-compiling supported files'

    & ./budhud-compiler.exe -s -m -i 'resource', 'scripts' -o "$budhudCompiled/resource", "$budhudCompiled/scripts"

    if ($lastexitcode -ne 0) {
        Write-Failed
        Exit
    }
    Write-Done

    Write-Task 'Manually compiling "chapterbackgrounds.txt"'

    Copy-Item `
        -Path '#users/custom/#customization/_enabled/bh_menu_defaultbackground/chapterbackgrounds.txt' `
        -Destination "$budhudCompiled/scripts/chapterbackgrounds.txt" `

    Write-Done

    Write-Task 'Copying other files'

    $otherRequiredFiles = @(
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
        Copy-Item -Path $file -Destination "$budhudCompiled/$file"
    }
    foreach ($folder in $otherRequiredFolders) {
        Copy-Item -Path $folder -Destination "$budhudCompiled/$folder" -Recurse
    }

    Write-Done

    Write-Task 'Removing unused files'

    $notRequiredFilesAndFolders = @(
        'materials/console/',
        'materials/vgui/replay/thumbnails/#users/',
        'materials/vgui/replay/thumbnails/menu_icons/menugif.*',
        'materials/vgui/replay/thumbnails/overlays/',
        'materials/vgui/replay/thumbnails/speedometer/',
        'resource/closecaption_/'
    )
    foreach ($fileOrFolder in $notRequiredFilesAndFolders) {
        Remove-Item -Path "$budhudCompiled/$fileOrFolder" -Recurse
    }

    Get-ChildItem -Path "$budhudCompiled/resource/chat_*.txt" | Where-Object Name -NotMatch "chat_english.txt" | Remove-Item

    Write-Done

    do {
        $response = Read-Host "Create an archive with the compiled HUD? (Y/N)"

        switch ($response.ToUpper()) {
            'Y' {
                Write-Task "Creating archive..." -ForegroundColor Green

                Compress-Archive -Path $budhudCompiled -DestinationPath "$budhudCompiled.zip"

                Write-Done

                break
            }
            'N' {
                Write-Host "Archive creation canceled." -ForegroundColor Yellow

                break
            }
            default {
                Write-Host "Invalid input. Please enter Y or N." -ForegroundColor Red
            }
        }
    } while ($response -notmatch '^[YNyn]$')
}
catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
}
finally {
    Read-Host 'Press Enter to exit'
}