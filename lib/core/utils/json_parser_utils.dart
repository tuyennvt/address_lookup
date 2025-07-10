import '../exceptions/format_data_exception.dart';
import '../models/result.dart';
import 'crashlytics_wrapper.dart';

mixin class JsonParserUtils {
  Result<FormatDataException, T> parseJson<T>({
    required dynamic json,
    required T Function(dynamic) parseJsonT,
  }) {
    try {
      final result = parseJsonT(json);
      return Result.success(result);
    } on FormatException catch (formatException, stack) {
      CrashlyticsWrapper.log(formatException, stack: stack);
      return Result.error(const FormatDataException());
    } catch (error, stack) {
      CrashlyticsWrapper.log(error, stack: stack);
      return Result.error(const FormatDataException());
    }
  }
}
