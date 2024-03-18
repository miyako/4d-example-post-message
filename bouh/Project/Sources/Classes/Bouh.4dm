Class extends _CLI

Class constructor($controller : 4D:C1709.Class)
	
	Super:C1705("Bouh"; $controller)
	
Function terminate()
	
	This:C1470.controller.terminate()
	
Function start() : cs:C1710.Bouh
	
	If (Form:C1466.Bouh.controller.worker=Null:C1517)
		$command:=This:C1470.escape(This:C1470.executablePath)
		This:C1470.controller.execute([$command])
	End if 
	
	return This:C1470
	
Function send($value : Text) : cs:C1710.Bouh
	
	If (This:C1470.controller.worker=Null:C1517)
		Form:C1466.start()
	End if 
	
	This:C1470.controller.worker.postMessage($value+"\n")
	
	return This:C1470
	
Function sendLines($values : Collection) : cs:C1710.Bouh
	
	This:C1470.lines:=$values
	
	If (This:C1470.lines.length#0)
		This:C1470.send($values.shift())
	End if 