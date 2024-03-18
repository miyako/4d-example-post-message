//%attributes = {}
#DECLARE($params : Object)

If (Count parameters:C259=0)
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	$bouh:=cs:C1710.Bouh.new(cs:C1710._Bouh_Controller)
	$bouh.start().sendLines(["Hello"; "World"])
	
End if 