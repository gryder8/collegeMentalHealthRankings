import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetInfoCall {
  static Future<ApiCallResponse> call({
    int id = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get info',
      apiUrl: 'https://h4h-health.herokuapp.com/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'id': id,
      },
      returnBody: true,
    );
  }
}
