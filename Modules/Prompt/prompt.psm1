function Prompt{
	$pwd = $executionContext.SessionState.Path.CurrentLocation
	$pwd = $pwd -replace [Regex]::Escape($home), "~"
	$pwd = $pwd -replace [Regex]::Escape("~\go\src\github.com\docker\"), "~\...\"
	Write-Host $pwd -NoNewline -ForegroundColor Yellow

	$branch = git rev-parse --abbrev-ref HEAD
	if ( ! $branch -eq "" )
	{
		Write-Host " ($branch)" -NoNewline -ForegroundColor Green
	}

	Write-Host
	return "> "
}