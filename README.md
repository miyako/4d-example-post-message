# 4d-example-post-message
How to post multiple messages to SystemWorker

Related discussion: https://discuss.4d.com/t/systemworker-full-duplex-process-process-communication/22037/3

# TL; DR

* You need to postMessage() with a `Line Feed`
* You should not use `.closeInput()` as it will close the communication with the console application
* You should use a callback method (`.onData()`) to listen
