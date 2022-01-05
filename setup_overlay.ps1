if (($Host.Version.Major -eq 5) -or $IsWindows) {
    $dir = Split-Path -parent $PSCommandPath
    if (-not [System.Environment]::GetEnvironmentVariable('VCPKG_OVERLAY_PORTS')) {
        [System.Environment]::SetEnvironmentVariable('VCPKG_OVERLAY_PORTS', "$dir\ports", 1)
    }
    if (-not [System.Environment]::GetEnvironmentVariable('VCPKG_OVERLAY_TRIPLETS')) {
        [System.Environment]::SetEnvironmentVariable('VCPKG_OVERLAY_TRIPLETS', "$dir\triplets", 1)
    }
}
else {
    "this script only support windows"
}

