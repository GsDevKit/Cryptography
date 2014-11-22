as yet unclassified
new
  self isPluginAvailable
    ifTrue: [ ^ (Smalltalk at: #'MD5WithPrimitive') basicNew ]
    ifFalse: [ ^ MD5NonPrimitive basicNew ]