import 'package:flutter/cupertino.dart';
import 'package:image_client/common/model/error/error_model.dart';

import 'model/error/generic_error_model.dart';

typedef Callback<E> = Future<E> Function();

class ErrorMapper {
  Future<E> wrapExecute<E>(Callback<E> callback) async {
    try {
      return await callback();
    } catch (e, s) {
      logError(
        errorObj: e,
        stackTrace: s,
      );

      if (e is Error) {
        rethrow;
      }

      throw _mapToBusinessModel(e);
    }
  }

  void logError({
    required Object? errorObj,
    required StackTrace? stackTrace,
  }) {
    debugPrint(errorObj?.toString());
    debugPrint(stackTrace?.toString());
  }

  ErrorModel _mapToBusinessModel(Object e) {
    return GenericErrorModel(e);
  }
}

extension ErrorModelMapper on Object {
  toErrorModel() {
    if (this is ErrorModel) {
      return this;
    }
    return GenericErrorModel(this);
  }
}
