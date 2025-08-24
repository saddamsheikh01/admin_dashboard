
import '../configs/environment_config.dart';
import '../utils/session_util.dart';

class ApiServices {
  ApiServices();

  static final Environment _configs = Environment.dev();
  static final SessionUtil _sessionUtil = SessionUtil();

  // Base URL Api Gateway
  String base = _configs.variables["base"];

  // End point API
  String statusEndPoint = "status";
  String modulEndPoint = "moduls";
  String categoryEndPoint = "category";
  String articleEndPoint = "article";
  String articleTagEndPoint = "article-tag";
  String publicComplaintEndPoint = "public-complaint";
  String dumpLocationEndPoint = "dump-location";
  String userEndPoint = "user";
  String sectionEndPoint = "missions/section";
  String unitEndPoint = "missions/unit";
  String missionEndPoint = "missions";

  Future<String?> getToken() async {
    String? token = await _sessionUtil.readSession(_sessionUtil.authKey);
    return token;
  }
}
