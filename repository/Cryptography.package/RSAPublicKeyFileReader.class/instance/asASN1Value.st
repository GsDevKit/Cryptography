converting
asASN1Value

	| asn1 |
	asn1 := ASN1Stream decodeBytes: self bytes.
	^ ASN1Stream decodeBytes: (asn1 at: 2) bytes