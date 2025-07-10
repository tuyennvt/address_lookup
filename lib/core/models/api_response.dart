import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class ApiResponse<T> {
  const ApiResponse({required this.success, this.data, this.error});

  factory ApiResponse.fromJson({
    required Map<String, dynamic> json,
    required T Function(dynamic) fromJsonT,
  }) => _$ApiResponseFromJson(json, fromJsonT);

  final bool success;

  final T? data;

  final String? error;
}

@JsonSerializable(genericArgumentFactories: true, createToJson: false)
class ApiListResponse<T> {
  const ApiListResponse({required this.success, this.data, this.error});

  factory ApiListResponse.fromJson({
    required Map<String, dynamic> json,
    required T Function(dynamic) fromJsonT,
  }) => _$ApiListResponseFromJson(json, fromJsonT);

  final bool success;

  final List<T>? data;

  final String? error;
}
