helpers
preOpenOptions

	| allOptions |

	allOptions := self preOpenOptionsType.
	^self options select: [ :each | allOptions includes: each optionType ].
