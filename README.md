## A Decap userland build scripts repository

This repository is what [Decap](https://github.com/ae6rt/decap)
would mount to make userland build scripts available to the Decap build container.

## Directory structure

Each project to be hosted here has a _projectkey/library_ key.  For
github projects, _projectkey_ is the Github user's username.  The
_library_ part is the repository shortname in Github.

### The build script

In the _projectkey/library_ directory, there should be a build
script named build.sh that contains the userland build logic.  This
script is free form and can contain anything the underlying Docker
build container supports.

### The project descriptor

Also in the _project/key_ directory there is an optional project.json file
that has the following sample structure:

```
{
     "repo-manager": "github",
     "repo-url": "https://github.com/ae6rt/dynamodb-lab.git",
     "repo-description": "AWS DynamoDb lab"
}
```

The _repo-manager_ field is a hint to _Decap_ for which API to use
when calling for repository branch detail.  The _repo-url_ is a
pointer to the repository that build.sh referneces, and _repo-description_
is a free form textual description for human consumption.

