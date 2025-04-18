# bash-devutils-echo-colors

Package `siakhooi-devutils-echo-colors` to provide echo commands with colors.
the objective is to provide few common colors printing, and not aim for comprehensive colors.

## Commands

```bash
echo.blue <echo arguments>
echo.cyan <echo arguments>
echo.green <echo arguments>
echo.magenta <echo arguments>
echo.red <echo arguments>
echo.yellow <echo arguments>
echo.grey <echo arguments>
echo.error <echo arguments>
echo.info <echo arguments>
echo.debug <echo arguments>
echo.warn <echo arguments>
cat.blue
cat.cyan
cat.green
cat.magenta
cat.red
cat.yellow
cat.grey
highlight.blue text
highlight.cyan text
highlight.green text
highlight.magenta text
highlight.red text
highlight.yellow text
highlight.grey text
print-progress [-h] [-w width] [-d done_char] [-l left_char] [-p prefix] [-o open_bracket] [-c close_bracket] currentState totalState [task_description]
print-progress-color [-h] [-w width] [-d done_char] [-l left_char] [-p prefix] [-o open_bracket] [-c close_bracket] currentState totalState [task_description]
```

## Sample

![sample](sample.gif "Sample")

## Quick Start

### Ubuntu/Debian

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update

$ sudo apt install siakhooi-devutils-echo-colors
```

### Fedora/Red Hat

```bash
$ sudo curl -L https://siakhooi.github.io/rpms/siakhooi-rpms.repo | sudo tee /etc/yum.repos.d/siakhooi-rpms.repo > /dev/null

$ sudo dnf install siakhooi-devutils-echo-colors
# or
$ sudo yum install siakhooi-devutils-echo-colors

```

## Deployments

- <https://siakhooi.github.io/apt/>

## Badges

![GitHub](https://img.shields.io/github/license/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub last commit](https://img.shields.io/github/last-commit/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub issues](https://img.shields.io/github/issues/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub closed issues](https://img.shields.io/github/issues-closed/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub top language](https://img.shields.io/github/languages/top/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub language count](https://img.shields.io/github/languages/count/siakhooi/bash-devutils-echo-colors?logo=github)
![Lines of code](https://img.shields.io/tokei/lines/github/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub repo size](https://img.shields.io/github/repo-size/siakhooi/bash-devutils-echo-colors?logo=github)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/siakhooi/bash-devutils-echo-colors?logo=github)
![Workflow](https://img.shields.io/badge/Workflow-github-purple)
![workflow](https://github.com/siakhooi/bash-devutils-echo-colors/actions/workflows/workflow-build-with-quality-checks.yml/badge.svg)
![workflow](https://github.com/siakhooi/bash-devutils-echo-colors/actions/workflows/workflow-deployments.yml/badge.svg)
![Release](https://img.shields.io/badge/Release-github-purple)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/siakhooi/bash-devutils-echo-colors?label=GPR%20release&logo=github)
![GitHub all releases](https://img.shields.io/github/downloads/siakhooi/bash-devutils-echo-colors/total?color=33cb56&logo=github)
![GitHub Release Date](https://img.shields.io/github/release-date/siakhooi/bash-devutils-echo-colors?logo=github)

[![Generic badge](https://img.shields.io/badge/Funding-BuyMeACoffee-33cb56.svg)](https://www.buymeacoffee.com/siakhooi)
[![Generic badge](https://img.shields.io/badge/Funding-Ko%20Fi-33cb56.svg)](https://ko-fi.com/siakhooi)
![visitors](https://hit-tztugwlsja-uc.a.run.app/?outputtype=badge&counter=ghmd-bash-echo-colors)

## Reference
- `clear-colors`
    - <https://unix.stackexchange.com/questions/111899/how-to-strip-color-codes-out-of-stdout-and-pipe-to-file-and-stdout>
    - <https://stackoverflow.com/questions/17998978/removing-colors-from-output>
