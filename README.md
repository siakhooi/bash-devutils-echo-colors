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
```

## Sample

![sample](sample.gif "Sample")

## Quick Start

```bash
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.list | sudo tee /etc/apt/sources.list.d/siakhooi-apt.list > /dev/null
$ sudo curl -L https://siakhooi.github.io/apt/siakhooi-apt.gpg  | sudo tee /usr/share/keyrings/siakhooi-apt.gpg > /dev/null
$ sudo apt update

$ sudo apt install siakhooi-devutils-echo-colors
```

## Deployments

- <https://siakhooi.github.io/apt/>
- <https://siakhooi.jfrog.io/ui/packages>
