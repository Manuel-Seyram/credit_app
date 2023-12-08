abstract class Endpoints {
  static const int receiveTimeout = 150000;
  static const String baseURL = "http://sandbox.yourexactscore.com/api";
  static const int connectionTimeout = 150000;

  // Authentication
  static const String registerUser = "/register";
  static const String loginUser = "/login";
  static const String getuser = "/user";
}
