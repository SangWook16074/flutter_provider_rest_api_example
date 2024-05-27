class BaseResponse<T> {
  final String status;
  final T data;
  final String resultMsg;

  BaseResponse({
    required this.status,
    required this.data,
    required this.resultMsg,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
        status: json["status"],
        data: json["data"],
        resultMsg: json["resultMsg"]);
  }
}
