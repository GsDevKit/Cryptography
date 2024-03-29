processes
randomChangeLoop
  "This loop changes the random and reencrypts the data every 100ms"

  | pKey randomGenerator |
  self
    randomChangeProcess:
      ([ 
      randomGenerator := SecureRandom picker.
      [ 
      [ 
      pKey := self key.
      self random: (randomGenerator nextBytesNonZero: 32).
      self encryptKey: pKey.
      pKey destroy.
      (Delay forMilliseconds: 100) wait.
      true ]
        on: Error
        do: [ :ex | ex return: false ] ]
        whileTrue ]
        forkAt: Processor highIOPriority).
  "Prior to GemStone v3.7, the fork above will not pre-empt and start running, so yield to it."
  Processor yield.
