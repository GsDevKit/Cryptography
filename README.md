Cryptography [![Build Status](https://github.com/GsDevKit/Cryptography/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/GsDevKit/Cryptography/actions/workflows/ci.yml)
============

GemStone port of the SqueakSource Cryptography project.

## GemStone Installation

```Smalltalk
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.

GsDeployer deploy: [
  "Load Cryptography package"
  Metacello new
    baseline: 'Cryptography';
    repository: 'github://GsDevKit/Cryptography:master/repository';
    load: #('Cryptography')
].
```
