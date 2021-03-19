import 'package:api_sdk/api_constants.dart';
import 'package:api_sdk/rest/rest_api_handler_data.dart';

class ApiSdk {
  static getRedditPosts() async {
    final response = await RestApiHandlerData.getData(
        '${apiConstants["reddit"]}/r/programming/new.json?limit=20');
    return response;
  }
}
