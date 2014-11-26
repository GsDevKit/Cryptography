*cryptography-core
unsigned48At: startIndex
  "Return a unsigned integer quantity starting from the given byte index"

  ^ self at: startIndex signed: false width: 6