instance creation
default
	SGSettings default useV3 ifFalse: [ ^SGV2MailApi default ]. "Backward compatibility"
	^self new