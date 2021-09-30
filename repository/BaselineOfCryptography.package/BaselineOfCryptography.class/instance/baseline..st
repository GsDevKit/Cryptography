baseline
baseline: spec
  <baseline>
  spec
    for: #'gemstone'
    do: [ 
      spec
        baseline: 'GLASS1'
          with: [ 
              spec
                loads: #('GsSqueakCommon');
                repository: 'github://glassdb/glass:master/repository' ];
        configuration: 'GsPharo'
          with: [ 
              spec
                version: '0.9.3';
                repository: 'http://seaside.gemtalksystems.com/ss/PharoCompat' ];
        yourself.
      spec
        package: 'Cryptography'
          with: [ 
              spec
                file: 'Cryptography.gemstone';
                requires: #('GLASS1' 'GsPharo');
                yourself ];
        package: 'Cryptography' with: [ spec includes: 'CryptographyPlatform' ];
        package: 'CryptographyPlatform' with: [ spec requires: 'Cryptography' ];
        yourself.
      spec
        group: 'CI' with: #('Cryptography');
        yourself ].
  spec
    for: #'gs2.x'
    do: [ 
      spec
        package: 'CryptographyPlatform'
          with: [ spec file: 'CryptographyPlatform.v20' ];
        yourself ].
  spec
    for: #'gs3.x'
    do: [ 
      spec
        package: 'CryptographyPlatform'
          with: [ spec file: 'CryptographyPlatform.v32' ];
        yourself.
      spec
        group: 'CI' with: #('Cryptography');
        yourself ].
  spec
    for: #(#'gs3.0.x' #'gs3.1.x')
    do: [ 
      spec
        package: 'CryptographyPlatform'
          with: [ spec file: 'CryptographyPlatform.v30' ];
        yourself ]
