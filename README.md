# bump2version
This is a Docker image with [bump2version](https://github.com/c4urself/bump2version) installed on Alpine Linux and ready to run.

Version-bump your software with a Docker command. No need to install anything else, Python and Bump2version are installed in the image.

# Usage
You can find all the usage documentation in the source repo: https://github.com/c4urself/bump2version.

> Just replace `bump2version` with `docker run --rm -v $PWD:/code tribal2/bump2version` to execute bump2version from a ephemeral Docker container.

## Example:

Instead of:
```
$ bump2version --current-version 1.1.9 major setup.py
```

Run:
```
$ docker run --rm -v $PWD:/code tribal2/bump2version --current-version 1.1.9 major setup.py
```

## --help
```
$ docker run --rm tribal2/bump2version --help

usage: docker run --rm -v $PWD:/code tribal2/bumpversion \
                   [-h] [--config-file FILE] [--verbose] [--list]
                   [--allow-dirty] [--parse REGEX] [--serialize FORMAT]
                   [--search SEARCH] [--replace REPLACE]
                   [--current-version VERSION] [--no-configured-files]
                   [--dry-run] --new-version VERSION [--commit | --no-commit]
                   [--tag | --no-tag] [--sign-tags | --no-sign-tags]
                   [--tag-name TAG_NAME] [--tag-message TAG_MESSAGE]
                   [--message COMMIT_MSG] [--commit-args COMMIT_ARGS]
                   part [file ...]

bumpversion: v1.0.1 (using Python v3.10.0)

positional arguments:
  part                  Part of the version to be bumped.
  file                  Files to change (default: [])

options:
  -h, --help            show this help message and exit
  --config-file FILE    Config file to read most of the variables from
                        (default: .bumpversion.cfg)
  --verbose             Print verbose logging to stderr (default: 0)
  --list                List machine readable information (default: False)
  --allow-dirty         Don't abort if working directory is dirty (default:
                        False)
  --parse REGEX         Regex parsing the version string (default:
                        (?P<major>\d+)\.(?P<minor>\d+)\.(?P<patch>\d+))
  --serialize FORMAT    How to format what is parsed back to a version
                        (default: ['{major}.{minor}.{patch}'])
  --search SEARCH       Template for complete string to search (default:
                        {current_version})
  --replace REPLACE     Template for complete string to replace (default:
                        {new_version})
  --current-version VERSION
                        Version that needs to be updated (default: None)
  --no-configured-files
                        Only replace the version in files specified on the
                        command line, ignoring the files from the
                        configuration file. (default: False)
  --dry-run, -n         Don't write any files, just pretend. (default: False)
  --new-version VERSION
                        New version that should be in the files (default:
                        None)
  --commit              Commit to version control (default: False)
  --no-commit           Do not commit to version control
  --tag                 Create a tag in version control (default: False)
  --no-tag              Do not create a tag in version control
  --sign-tags           Sign tags if created (default: False)
  --no-sign-tags        Do not sign tags if created
  --tag-name TAG_NAME   Tag name (only works with --tag) (default:
                        v{new_version})
  --tag-message TAG_MESSAGE
                        Tag message (default: Bump version: {current_version}
                        → {new_version})
  --message COMMIT_MSG, -m COMMIT_MSG
                        Commit message (default: Bump version:
                        {current_version} → {new_version})
  --commit-args COMMIT_ARGS
                        Extra arguments to commit command (default: )
```
