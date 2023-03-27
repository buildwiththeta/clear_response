import 'package:clear_response/clear_response.dart';

Future<ClearResponse<String?, ClearErrorResponse?>> genericMethod() async {
  try {
    final response = await Future.delayed(
      const Duration(seconds: 1),
      () => 'Hello world',
    );
    return ClearResponse.success<String?, ClearErrorResponse?>(response);
  } catch (e) {
    return ClearResponse.fail<String?, ClearErrorResponse?>(
      ClearErrorResponse(
        message: e.toString(),
        code: 500,
      ),
    );
  }
}

Future<void> main() async {
  final response = await genericMethod();
  if (response.error != null) {
    print(
        'Error, code: ${response.error?.code}, message: ${response.error?.message}');
  } else {
    print(response.data);
  }
}
