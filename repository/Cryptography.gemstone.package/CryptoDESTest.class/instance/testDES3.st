as yet unclassified
testDES3
  | plain plainCopy key d x |
  plain := 'squeaker' asByteArray.
  key := 'hacking!' asByteArray.
  plainCopy := plain copy.
  d := DES key: key.
  d encryptBlock: plainCopy.
  self assert: plainCopy = #(64 222 70 13 59 145 76 186) asByteArray