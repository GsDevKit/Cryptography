initialize-release
unpredictableStringsDo: aBlock
  "Enumerate sources of information from my environment that should be generally hard to guess."

  | time |
  time := Time
    millisecondsToRun: [ 
      | gemVersionReport |
      aBlock
        value: Time millisecondClockValue asByteArray;
        value: Date today asString;
        value: Time now asString.
      100 timesRepeat: [ aBlock value: UUID new ].
      gemVersionReport := System gemVersionReport.
      aBlock
        value: (gemVersionReport at: 'gsBuildDate');
        value: (gemVersionReport at: 'gsBuildSerialNum');
        value: (gemVersionReport at: 'osVersion');
        value: (gemVersionReport at: 'processId') asString ].
  aBlock
    value: time asByteArray;
    value: Time millisecondClockValue asByteArray