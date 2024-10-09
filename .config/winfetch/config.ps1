# ===== WINFETCH CONFIGURATION =====

# $image = "~/winfetch.png"
# $noimage = $true

# Display image using ASCII characters
# $ascii = $true

# Set the version of Windows to derive the logo from.
# $logo = "Windows 10"

# Specify width for image/logo
 $imgwidth = 18

# Specify minimum alpha value for image pixels to be visible
# $alphathreshold = 50

# Custom ASCII Art
# This should be an array of strings, with positive
# height and width equal to $imgwidth defined above.
 $CustomAscii = @(
     "                     "
     "                     "
     "         /\\         " 
     "        /  \\        "
     "       /\\  \\       "
     "      /      \\      "
     "     /   ,,   \\     "
     "    /   |  |  -\\    "
     "   /_-''    ''-_\\   "
     "                     "
     "                     "
 )

# Make the logo blink
# $blink = $true

# Display all built-in info segments.
# $all = $true

# Add a custom info line
# function info_custom_time {
#     return @{
#         title = "Time"
#         content = (Get-Date)
#     }
# }

# Configure which disks are shown
# $ShowDisks = @("C:", "D:")
# Show all available disks
# $ShowDisks = @("*")

# Configure which package managers are shown
# disabling unused ones will improve speed
# $ShowPkgs = @("winget", "scoop", "choco")

# Use the following option to specify custom package managers.
# Create a function with that name as suffix, and which returns
# the number of packages. Two examples are shown here:
# $CustomPkgs = @("cargo", "just-install")
# function info_pkg_cargo {
#     return (cargo install --list | Where-Object {$_ -like "*:" }).Length
# }
# function info_pkg_just-install {
#     return (just-install list).Length
# }

# Configure how to show info for levels
# Default is for text only.
# 'bar' is for bar only.
# 'textbar' is for text + bar.
# 'bartext' is for bar + text.
# $cpustyle = 'bar'
# $memorystyle = 'textbar'
# $diskstyle = 'bartext'
# $batterystyle = 'bartext'


# Remove the '#' from any of the lines in
# the following to **enable** their output.
function info_custom_name {
    return @{
        title = "Host"
        content = (Write-Output Welpyes)
    }
}

function info_custom_package {
    return @{
        title = "Packages"
        content = (Write-Output "672 (pacman)")
    }
}

function info_custom_os {
    return @{
        title = "OS"
        content = (Write-Output Arch Linux)
    }
}

function info_custom_term {
    return @{
        title = "Terminal"
        content = (Write-Output Wezterm)
    }
}

#function info_custom_color {
#    return @{
#        title = "Terminal"
#        content = ('{0}[0;40m{1}') -f $e, '   '
#    }
#}
#[0;41m{1}{0}[0;42m{1}{0}[0;43m{1}{0}[0;44m{1}{0}[0;45m{1}{0}[0;46m{1}{0}[0;47m{1}{0}[0m
@(
    "custom_name"
    "dashes"
    "custom_os"
    #"computer"
    "kernel"
    #"motherboard"
    # "custom_time"  # use custom info line
    "uptime"
    # "ps_pkgs"  # takes some time
    "custom_package"
    "pwsh"
   # "resolution"
    "custom_term"
    # "theme"
    "cpu"
    "gpu"
    # "cpu_usage"
    #"memory"
    #"disk"
    # "battery"
    # "locale"
    # "weather"
    # "local_ip"
    # "public_ip"
    "blank"
    "colorbar"
    #"custom_color"
)
