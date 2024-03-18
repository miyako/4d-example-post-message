# 4d-example-post-message
How to post multiple messages to SystemWorker

Related discussion: https://discuss.4d.com/t/systemworker-full-duplex-process-process-communication/22037/3

# TL; DR

* You need to postMessage() with a `Line Feed`
* You should not use `.closeInput()` as it will close the communication with the console application
* You should use a callback method (`.onData()`) to listen

As the communication is asynchronous, you need to 

* Run in a worker process or a form dialog
* Implement callback functions

In case of a form dialog, you may update the UI during the `.onData()` callback so that the user can post the next message.

In case of a worker process with no UI, you may automatically post the next message.
