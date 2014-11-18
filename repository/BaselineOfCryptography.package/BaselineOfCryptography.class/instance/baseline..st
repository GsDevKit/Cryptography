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
                repository: 'github://glassdb/glass:master/repository' ];
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
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'CI' with: #('Cryptography');
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
        yourself.
      spec
        group: 'CI' with: #('Cryptography' 'PasswordHashingFFI');
        yourself ]