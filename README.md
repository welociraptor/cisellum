# cisellum

Chisel comes from the Old French cisel, modern ciseau, Late Latin cisellum, a cutting tool, from caedere, to cut.

This document contains instructions for setting up a new (Apple Silicon) MacBook as a developer workstation from scratch.

# Tooling on host

1. [Raycast](https://www.raycast.com/)
2. [JetBrains Gateway](https://www.jetbrains.com/remote-development/gateway/)
3. [Homebrew](https://brew.sh) 

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

4. [Tart](https://tart.run)

```shell
brew install cirruslabs/cli/tart
```

5. Create a development virtual machine

```shell
tart clone ghcr.io/cirruslabs/debian:latest debian
tart set debian --disk-size 50
tart run debian
```
