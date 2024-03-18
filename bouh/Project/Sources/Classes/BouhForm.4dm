Class extends _Form

Class constructor
	
	Super:C1705()
	
	$window:=Open form window:C675("Bouh")
	DIALOG:C40("Bouh"; This:C1470; *)
	
Function onLoad()
	
	Form:C1466.Bouh:=cs:C1710.Bouh.new(cs:C1710._BouhUI_Controller)
	
	Form:C1466.stdIn:="Hello"
	
	Form:C1466.enable("stdIn").disable("stdOut").start()
	
Function start() : cs:C1710.BouhForm
	
	Form:C1466.Bouh.start()
	
	return This:C1470
	
Function enable($objectName : Text)
	
	OBJECT SET ENTERABLE:C238(*; $objectName; True:C214)
	OBJECT SET RGB COLORS:C628(*; $objectName; Foreground color:K23:1; Background color:K23:2)
	
	return This:C1470
	
Function disable($objectName : Text)
	
	OBJECT SET ENTERABLE:C238(*; $objectName; False:C215)
	OBJECT SET RGB COLORS:C628(*; $objectName; Foreground color:K23:1; Background color none:K23:10)
	
	return This:C1470
	
Function onUnload()
	
	Form:C1466.Bouh.terminate()
	
Function send($value : Text) : cs:C1710.BouhForm
	
	Form:C1466.Bouh.send($value)
	
	return This:C1470