Cryptography [![master branch:](https://travis-ci.org/GsDevKit/Cryptography.png?branch=master)](https://travis-ci.org/GsDevKit/Cryptography)
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

## PasswordHashingFFI 
Requires libxcrypt.so.
