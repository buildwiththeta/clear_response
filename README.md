# Clear response

A simple response handler for Dart and Flutter.

## Example
Use this package to handle errors and return type in methods.

## Usage
```dart
import 'package:clear_response/clear_response.dart';

Future<ClearResponse<String?, ClearErrorResponse?>> genericMethod() async {
  try {
    final response = await Future.delayed(
      Duration(seconds: 1),
      () => 'Hello world',
    );
    return ClearResponse(
        data: response
        error: null,
    );
  } catch (e) {
    return ClearResponse(
        data: null,
        error: ClearErrorResponse(
            message: e.toString(), 
            code: 500,
        ),
    );
  }
}

Future<void> main() async {
    final response = await genericMethod();
    if (response.error != null) {
        print('Error, code: ${response.error?.code}, message: ${response.error?.message}');
    } else {
        print(response.data);
    }
}
```