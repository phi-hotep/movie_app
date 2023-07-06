// ignore_for_file: constant_identifier_names

class Endpoints {
  static const String url = 'https://api.themoviedb.org/3/trending';
  static const String media_type = '/movie';
  static const String time_window_week = '/week';
  static const String time_window_day = '/day';
  static const String api_key = '';
  static const String api_token = '';
  static const Duration connectTimeout = Duration(milliseconds: 5000);
  static const Duration receiveTimeout = Duration(milliseconds: 3000);
}
