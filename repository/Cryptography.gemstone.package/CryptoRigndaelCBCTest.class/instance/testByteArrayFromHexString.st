tests
testByteArrayFromHexString
  "this test requres that the cryptography core method fromHexString be loaded the main purpose of the method fromHexString is to
	ensure leading zeros are not chopped off and that small case letters in hex strings are allowed"

  | x |
  self
    assert:
      (x := ByteArray
        fromHexString:
          '16r000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f')
        =
          #(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
            asByteArray.
  self
    assert:
      (x := ByteArray
        fromHexString:
          '000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f')
        =
          #(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
            asByteArray