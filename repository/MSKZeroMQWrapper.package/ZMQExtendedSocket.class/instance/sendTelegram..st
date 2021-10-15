service
sendTelegram: aZMQTelegram

	aZMQTelegram frames do: [ :aZMQGeneralFrame |	self sendZMQGeneralFrame: aZMQGeneralFrame ]
