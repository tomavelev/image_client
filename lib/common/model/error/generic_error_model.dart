import 'package:image_client/common/model/error/error_model.dart';

class GenericErrorModel extends ErrorModel {
  final Object error;

  GenericErrorModel(this.error);
}
