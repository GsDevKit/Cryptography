accessing
nextBits: anInteger
  | firstBits bits8 z |
  firstBits := (z := self nextBytes: anInteger // 8)
    uint: (bits8 := anInteger truncateTo: 8)
    at: 1.
  ^ bits8 = anInteger
    ifTrue: [ firstBits ]
    ifFalse: [ 
      | last8 mask bitsNeeded x y |
      last8 := self nextBytes: 1.
      bitsNeeded := anInteger - bits8.
      mask := ((1 to: bitsNeeded) inject: 0 into: [ :total :n | 1 bitShift: n ])
        - 1.
      x := firstBits bitShift: bitsNeeded.
      y := last8 first bitAnd: mask.
      x + y ]