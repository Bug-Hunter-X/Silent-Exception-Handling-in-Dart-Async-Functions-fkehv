# Silent Exception Handling in Dart Async Functions

This repository demonstrates a potential issue in Dart's asynchronous programming model.  When an exception is caught within an `async` function's `try...catch` block and not re-thrown, the program might continue execution silently, even though an error occurred. This can make debugging challenging.

The `bug.dart` file shows an example where an exception is caught and handled, but the program continues without any indication of the error's impact.

The `bugSolution.dart` demonstrates a more robust approach, re-throwing or signaling the error to ensure the program terminates appropriately.  Best practices for exception handling in async functions are crucial for writing robust Dart applications.