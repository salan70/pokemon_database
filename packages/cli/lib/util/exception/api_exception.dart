import 'package:collection/collection.dart';

import 'base_exception.dart';
import 'exception_code.dart';

class ApiException extends BaseException {
  const ApiException(
    ApiExceptionCode super.exceptionCode, {
    super.info,
  });

  // factoryで [code] から生成する
  factory ApiException.fromCode(String code) {
    final errorInfo = ApiExceptionCode.fromCode(code);
    // 取得に失敗した場合、一律で [DatabaseErrorCode.unknown] とする
    if (errorInfo == null) {
      throw const ApiException(ApiExceptionCode.unknown);
    }
    return ApiException(errorInfo);
  }
}

/// データベース関連のエラーコード
enum ApiExceptionCode implements ExceptionCode {
  // データが見つからない
  notFound(
    'not found',
    'エラーが発生しました。もう一度お試しください。',
  ),
  // 不明
  unknown(
    'unknown',
    'エラーが発生しました。もう一度お試しください。',
  );

  const ApiExceptionCode(
    this._code,
    this._message,
  );

  final String _code;
  final String? _message;

  @override
  String get code => _code;

  @override
  String get message => _message ?? 'エラーが発生しました。もう一度お試しください。';

  static ApiExceptionCode? fromCode(String code) =>
      values.firstWhereOrNull((element) => element.code == code);
}
