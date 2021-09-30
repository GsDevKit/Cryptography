encoding
encodeValue: anObject withDERStream: derStream

	| yy mo dd hh mm ss utcDateTime roundedTime |
	"GemStone 3.6. introduced SmallDateAndTime with microsecond resolution. ASN1 wants integer seconds, so round."
	roundedTime := anObject rounded.
	yy :=  roundedTime year asString copyFrom: 3 to: 4.
	mo :=  roundedTime month asString padded: #left to: 2 with: $0.
	dd :=  roundedTime dayOfMonth asString padded: #left to: 2 with: $0.
	hh :=  roundedTime hour asString padded: #left to: 2 with: $0.
	mm :=  roundedTime minute asString padded: #left to: 2 with: $0.
	"SmallDateAndTime answers ScaledDecimal s6 for seconds to get an integer."
	ss :=  roundedTime seconds truncate asString padded: #left to: 2 with: $0.
	utcDateTime := (yy, mo, dd, hh, mm, ss, 'Z') asByteArray.
	derStream nextPutAll: utcDateTime.

