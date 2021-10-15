instance creation
classNamed: aString
	| association |

	(association := GsSession currentSession resolveSymbol: aString asSymbol ) isNil ifTrue:[ ^nil ].
	^association value
