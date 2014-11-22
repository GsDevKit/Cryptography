as yet unclassified
new
  self isPluginAvailable
    ifTrue: [ ^ (Smalltalk at: #'SHA256WithPrimitive') basicNew ]
    ifFalse: [ ^ SHA256NonPrimitive basicNew ]