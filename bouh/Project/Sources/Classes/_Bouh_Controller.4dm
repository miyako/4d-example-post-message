Class extends _CLI_Controller

Class constructor($CLI : cs:C1710._CLI)
	
	Super:C1705($CLI)
	
Function onDataError($worker : 4D:C1709.SystemWorker; $params : Object)
	
Function onData($worker : 4D:C1709.SystemWorker; $params : Object)
	
	If (This:C1470.instance.lines#Null:C1517) && (This:C1470.instance.lines.length#0)
		This:C1470.instance.send(This:C1470.instance.lines.shift())
	End if 
	
Function onResponse($worker : 4D:C1709.SystemWorker; $params : Object)
	
Function onError($worker : 4D:C1709.SystemWorker; $params : Object)
	
Function onTerminate($worker : 4D:C1709.SystemWorker; $params : Object)
	