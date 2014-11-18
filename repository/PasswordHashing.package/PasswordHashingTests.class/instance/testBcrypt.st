as yet unclassified
testBcrypt
	self assert:(( BCrypt  bcrypt: 'U*U' with:'$2a$05$CCCCCCCCCCCCCCCCCCCCC') = '$2a$05$CCCCCCCCCCCCCCCCCCCCC.E5YPO9kmyuRGyh0XouQYb4YMJKvyOeW')