instance creation
mskErrorTelegram: aString 
	"Erzeugt ein Telegram mit den log Informationen. Bitte bedenken, dass das Feld mit dem appCounter Wert aufgefrischt werden muss"


	^self msklogTelegram: aString level: 'ERROR'