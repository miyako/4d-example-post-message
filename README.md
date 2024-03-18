# 4d-example-post-message
How to post multiple messages to SystemWorker

Related discussion: https://discuss.4d.com/t/systemworker-full-duplex-process-process-communication/22037/3

# TL; DR

* You need to postMessage() with a `Line Feed` to send each message
* You need to use the `.onData()`callback method to process each message
* You can't use `.closeInput()` as it will close the communication with the console application
* You can't use `.onResponse()` as it is only sent once, when the CLI is about to exit


# Basics

As the communication is asynchronous, you need to 

1. Run in a worker process or a form dialog
1. Implement callback functions

In case of a form dialog, you may update the UI during the `.onData()` callback so that the user can post the next message.

In case of a worker process with no UI, you may automatically post the next message.

# Example

## With UI

Run the form in a worker process:

```4d
#DECLARE($params : Object)

If (Count parameters=0)
	
	CALL WORKER(1; Current method name; {})
	
Else 
	
	$form:=cs.BouhForm.new()
	
End if
```

Click "send" button. Notice the UI toggles each time data is received.

## Without UI

Add a break point in `_Bouh_Controller.onData()`. Instantiate the class in a worker process:

```4d
#DECLARE($params : Object)

If (Count parameters=0)
	
	CALL WORKER(1; Current method name; {})
	
Else 
	
	$bouh:=cs.Bouh.new(cs._Bouh_Controller)
	$bouh.start().sendLines(["Hello"; "World"])
	
End if 
```

Notice the callback function is invoked twice.
