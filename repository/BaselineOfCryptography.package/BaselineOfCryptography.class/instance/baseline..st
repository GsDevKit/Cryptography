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
                loads: #('Base' 'Announcements');
                repository: 'github://glassdb/glass:dev/repository' ];
        configuration: 'GsPharo'
          with: [ 
              spec
                version: '0.9.2';
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
        package: 'PasswordHashingFFI'
          with: [ 
              spec
                file: 'PasswordHashingFFI.gs3x';
                requires: #('GLASS1');
                yourself ];
        package: 'CryptographyPlatform'
          with: [ spec file: 'CryptographyPlatform.v322' ];
        yourself.
      spec
        group: 'CI' with: #('Cryptography' 'PasswordHashingFFI');
        yourself ].
  spec
    for: #(#'gs3.0.x' #'gs3.1.x' #'gs3.2.x' #'gs3.2.1.x')
    do: [ 
      spec
        package: 'CryptographyPlatform'
          with: [ spec file: 'CryptographyPlatform.v30' ];
        yourself ]