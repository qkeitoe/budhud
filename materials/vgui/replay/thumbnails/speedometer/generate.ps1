# ImageMagick must be installed in the same folder
# The font must also be in the same folder (from my experience)
# overengineered shell script by Whisker because chatgpt makes my life 1000x easier lmao
#
# I don't know who specifically made the original 14 line version of this file that generated with one color
# but I think it was either QuickKennedy or afbiklwnef njw;kfn jn.kj.h

# Define parameters
$maxNumber = 3500
$backgroundColor = "Transparent"
$font = "font-latosemibold-original.ttf"
$fontSize = 64
$VTFSize = "256x64"
$imagesFolder = "$PSScriptRoot\numbers"  # Assuming the images are stored in a folder named "numbers" in the script's directory

# Function to display progress bar
function Show-ProgressBar {
    param (
        [int]$PercentComplete
    )

    # Calculate number of characters to display
    $ProgressBarWidth = 50
    $ProgressChars = [math]::Ceiling($PercentComplete / (100 / $ProgressBarWidth))

    # Create progress bar string
    $ProgressBar = "[" + "-" * $ProgressChars + (" " * ($ProgressBarWidth - $ProgressChars)) + "] $PercentComplete%"

    # Display progress bar
    Write-Progress -Activity "Generating numbers" -Status $ProgressBar -PercentComplete $PercentComplete
}

Write-Host "Starting script..."

for ($num = 0; $num -le $maxNumber; $num++) {
    # Calculate text color based on the number
    $textColor = "rgb(255,255,255)"
    # Display progress
    Write-Host -NoNewline "`rGenerating number $num with text color: $textColor"
    # Generate image
    ./convert.exe -auto-orient -background $backgroundColor -fill "$textColor" -font $font -size $VTFSize -gravity center -pointsize $fontSize -antialias label:$num "$imagesFolder\$num.png"
    # Update progress bar
    $progress = ($num / $maxNumber) * 100
    Show-ProgressBar -PercentComplete $progress
}

Write-Host "Script completed."

# Copy over specific images to prevent max run speed bouncing between values
$numbersToCopy = @(
    @{ Number = 400; Description = "scout forward" },
    @{ Number = 360; Description = "scout backward" },
    @{ Number = 320; Description = "spy/medic forward" },
    @{ Number = 288; Description = "spy/medic backward" },
    @{ Number = 300; Description = "sniper/engineer forward" },
    @{ Number = 270; Description = "sniper/engineer backward" },
    @{ Number = 280; Description = "demo forward" },
    @{ Number = 252; Description = "demo backward" },
    @{ Number = 240; Description = "soldier forward" },
    @{ Number = 216; Description = "soldier backward" },
    @{ Number = 230; Description = "heavy forward" },
    @{ Number = 207; Description = "heavy backward" }
)

# Iterate over each number and copy over the image with the number one below it
foreach ($entry in $numbersToCopy) {
    $number = $entry.Number
    $description = $entry.Description

    $sourceFile = Join-Path -Path $PSScriptRoot -ChildPath "numbers\$number.png"
    $destinationFile = Join-Path -Path $PSScriptRoot -ChildPath "numbers\$($number - 1).png"

    if (Test-Path $sourceFile) {
        Copy-Item -Path $sourceFile -Destination $destinationFile -Force
        Write-Host "Copied $sourceFile to $destinationFile ($description)"
    }
    else {
        Write-Host "Source file $sourceFile does not exist."
    }
}


Write-Host "Copy tasks completed."