import 'package:flutter/widgets.dart';
import 'package:image_client/common/model/error/error_model.dart';
import 'package:image_client/common/model/error/generic_error_model.dart';

extension TranslateExtensions on ErrorModel {
  String translate(BuildContext context) {
    if (this is GenericErrorModel) {
      return "Generic Error : ${(this as GenericErrorModel).error}";
    }
    return toString();
  }
}
