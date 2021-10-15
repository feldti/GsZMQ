private
listenLoop

	^[ :server  |
			| localAbortFlag aZMQFrame |

			localAbortFlag := server closeFlag.

			[ localAbortFlag ] whileFalse: [
				[
					"we receive a frame ..."
					aZMQFrame :=  
					[ server socket receiveFrame ]
					when: ExETerm
					do: [ :sigExETerm |
						server debugFlag ifTrue:[ sigExETerm pass ].
						localAbortFlag := true.
						sigExETerm exitWith: nil.
					].

					"and send this frame to the delegate ... if he answers a telegram, we send it back"
					aZMQFrame ifNotNil:[ 
						| aZMQTelegram |

						(aZMQTelegram := server delegate handleFrame: aZMQFrame)
							ifNotNil:[ server socket sendTelegram: aZMQTelegram ]
					].
					localAbortFlag := localAbortFlag  or:  [ server closeFlag ]

				]
				when: Error
				do: [ :sig |
					server debugFlag ifTrue:[ sig pass ].
					server socket sendTelegram: server delegate generalServerErrorTelegram
				].
			].
	].
