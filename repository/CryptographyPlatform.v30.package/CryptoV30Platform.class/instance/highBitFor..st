bit manipulation
highBitFor: anInteger
  "Bug 42163 highBit is not ANSI compliant"

  "pre-3.2 highBit returns 0-based index, not 1-based index"

  ^ anInteger highBit + 1