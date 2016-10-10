## A Decap userland build scripts repository

This repository is what [Decap](https://github.com/ae6rt/decap)
would mount to make userland build scripts available to the Decap build container.

## Directory structure

Each project to be hosted here has a _projectkey/library_ key.  For
github projects, _projectkey_ is the Github user's username.  The
_library_ part is the repository shortname in Github.

### The build script

In the _projectkey/library_ directory, there should be a build script
named build.sh that contains the userland build logic.  This script is
free form and can contain anything the underlying build container
supports at runtime.

### The project descriptor

Also in the _project/key_ directory there is an optional project.json file
that has the following sample structure:

modelled by this type 

```
type ProjectDescriptor struct {
	// Image is the container image the associated project should be built in.
	Image string `json:"buildImage"`
    
	// RepoManager is the source code management system the project source is contained in.
	RepoManager string `json:"repoManager"`
    
	// RepoURL is largely informational for the human managing this project.  It is currently unused by Decap.
	RepoURL string `json:"repoUrl"`
    
	// RepoDescription is a human readable description of this project.
	RepoDescription string `json:"repoDescription"`
    
	// ManagedRegexStr is a regular expression that defines which refs (branches and tags) is willing to build as a result of
	// a post-commit hook.  Manual builds are not subject to this regex.
	ManagedRefRegexStr string `json:"managedRefRegex"`
    
	// The formal regex derived from ManagedRefRegexStr above.
	Regex *regexp.Regexp
}
```

