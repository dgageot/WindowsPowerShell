function gogo {
	$project = $args[0]
	set-location "${env:USERPROFILE}/go/src/github.com/docker/$project"
}