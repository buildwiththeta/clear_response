class ClearResponse<DATA, ERROR> {
  ClearResponse({
    required this.data,
    required this.error,
  });

  final DATA data;
  final ERROR error;

  static ClearResponse<DATA, ERROR?> success<DATA, ERROR>(DATA data) {
    return ClearResponse<DATA, ERROR?>(data: data, error: null);
  }

  static ClearResponse<DATA?, ERROR> failed<DATA, ERROR>(ERROR data) {
    return ClearResponse<DATA?, ERROR>(data: null, error: data);
  }
}

class ClearErrorResponse {
  ClearErrorResponse({
    this.message,
    this.code,
  });

  final String? message;
  final int? code;
}
