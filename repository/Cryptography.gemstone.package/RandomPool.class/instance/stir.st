as yet unclassified
stir
	| cipher block |
	cipher := (TripleDES key: key) cbc.
	cipher initialVector: (pool copyFrom: pool size - TripleDES blockSize + 1 to: pool size).
	1 to: pool size - TripleDES blockSize + 1 by: TripleDES blockSize do: [ :startIndex |
		block := pool copyFrom: startIndex to: startIndex + TripleDES blockSize - 1.
		cipher encryptBlock: block.
		pool replaceFrom: startIndex to: startIndex + TripleDES blockSize - 1 with: block]