```dart
import 'dart:async';

Future<void> main() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2), () {
      throw Exception('Something went wrong!');
    });
  } on Exception catch (e) {
    // Handle the exception. Don't rethrow!
    print('Caught exception: $e');
  } finally {
    print('This always executes.');
  }
  // The application continues normally after encountering the exception. This is an example of a subtle issue where the developer might expect an unhandled exception to terminate the program.
}
```