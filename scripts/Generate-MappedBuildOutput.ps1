$ErrorActionPreference = 'Stop'

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$inputPath = Join-Path $repositoryRoot 'test-fixtures\mapped-build-input.txt'
$outputPath = Join-Path $repositoryRoot 'code-apps\ALM4DataverseTestApp\dist\alm4dv-mapped-build.txt'
$outputDirectory = Split-Path -Parent $outputPath
$content = [System.IO.File]::ReadAllText($inputPath).Replace("`r`n", "`n").Replace("`r", "`n")

[System.IO.Directory]::CreateDirectory($outputDirectory) | Out-Null
[System.IO.File]::WriteAllText($outputPath, $content, [System.Text.UTF8Encoding]::new($false))
