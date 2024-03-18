Class extends _Bouh_Controller

Class constructor($CLI : cs:C1710._CLI)
	
	Super:C1705($CLI)
	
Function onDataError($worker : 4D:C1709.SystemWorker; $params : Object)
	
	Super:C1706.onDataError($worker; $params)
	
	If (Form:C1466#Null:C1517)
		
	End if 
	
Function onData($worker : 4D:C1709.SystemWorker; $params : Object)
	
	Super:C1706.onData($worker; $params)
	
	If (Form:C1466#Null:C1517)
		Form:C1466.stdIn:="World"
		Form:C1466.stdOut:=$params.data
	End if 
	
Function onResponse($worker : 4D:C1709.SystemWorker; $params : Object)
	
	Super:C1706.onResponse($worker; $params)
	
	If (Form:C1466#Null:C1517)
		Form:C1466.stdIn:="Hello"
	End if 
	
Function onTerminate($worker : 4D:C1709.SystemWorker; $params : Object)
	
	If (Form:C1466#Null:C1517)
		
	End if 