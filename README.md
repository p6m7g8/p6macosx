# p6macosx

## Table of Contents


### p6macosx
- [p6macosx](#p6macosx)
  - [Badges](#badges)
  - [Distributions](#distributions)
  - [Summary](#summary)
  - [Contributing](#contributing)
  - [Code of Conduct](#code-of-conduct)
  - [Changes](#changes)
    - [Usage](#usage)
  - [Author](#author)

### Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/p6m7g8/p6macosx)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges/p6m7g8/p6macosx/&style=flat)](https://mergify.io)
[![codecov](https://codecov.io/gh/p6m7g8/p6macosx/branch/master/graph/badge.svg?token=14Yj1fZbew)](https://codecov.io/gh/p6m7g8/p6macosx)
[![Known Vulnerabilities](https://snyk.io/test/github/p6m7g8/p6macosx/badge.svg?targetFile=package.json)](https://snyk.io/test/github/p6m7g8/p6macosx?targetFile=package.json)

## Summary

## Contributing

- [How to Contribute](CONTRIBUTING.md)

## Code of Conduct

- [Code of Conduct](CODE_OF_CONDUCT.md)

## Changes

- [Change Log](CHANGELOG.md)

### Usage

#### init.zsh:

- p6df::modules::p6macosx::deps()
- p6df::modules::p6macosx::external::brew()
- p6df::modules::p6macosx::init()

#### osa.sh:

- p6_macosx_osa_bg_for_host(host)
- p6_macosx_osa_fg_for_host(host)
- p6_macosx_osa_iterm_color(host, fg, bg, alpha)
- p6_macosx_osa_iterm_color_default()

#### ssh.sh:

- p6_macosx_ssh_do(host, [type=ssh], [aws_profile=$AWS_DEFAULT_PROFILE])


## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
