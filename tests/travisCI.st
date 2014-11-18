"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.

GsDeployer deploy: [
  "Load Cryptography... "
  Metacello new
    baseline: 'Cryptography';
    repository: 'filetree://', gitPath, '/Cryptography/repository';
    onLock: [:ex | ex honor ];
    load: #('Cryptography')
].

"Run the  NeoJSON tests"
TravisCIHarness
  value: #( 'BaselineOfCryptography' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
