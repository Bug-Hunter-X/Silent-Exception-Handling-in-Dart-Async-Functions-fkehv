```dart
import 'dart:async';

Future<void> main() async {
  try {
    await Future.delayed(Duration(seconds: 2), () {
      throw Exception('Something went wrong!');
    });
  } on Exception catch (e) {
    // Re-throw the exception to halt execution.
    rethrow; // or use a more suitable error-handling mechanism
  } catch (e) {
    // Catch any other unexpected errors
    print('An unexpected error occurred: $e');
  } finally {
    print('This always executes.');
  }
}
```