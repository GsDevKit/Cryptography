*cryptography-core
unsigned56At: startIndex
  "Return a unsigned integer quantity starting from the given byte index"

  ^ self at: startIndex signed: false width: 7