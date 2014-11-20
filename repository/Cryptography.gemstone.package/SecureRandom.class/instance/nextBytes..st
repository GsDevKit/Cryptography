accessing
nextBytes: byteLength
  | ba |
  ba := (self nextBits: byteLength * 8) asByteArray.
  ba size = byteLength
    ifTrue: [ ^ ba ].
  ^ (ByteArray new: byteLength - ba size) , ba