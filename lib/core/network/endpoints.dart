// ignore_for_file: constant_identifier_names

class Endpoints {
  static const String url = 'https://api.themoviedb.org/3/trending';
  static const String media_type = '/movie';
  static const String time_window_week = '/week';
  static const String time_window_day = '/day';
  static const String api_key = '53dafdb9165a3a28d71b73bf25455033';
  static const String api_token =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1M2RhZmRiOTE2NWEzYTI4ZDcxYjczYmYyNTQ1NTAzMyIsInN1YiI6IjYyYzk2NjEzOTBiODdlMDc1ODYzYTZiOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YETZWSZSzrMxzedOHeNFjwE4B6cs4Yk5plU-mzBMZDM';
  static const Duration connectTimeout = Duration(milliseconds: 5000);
  static const Duration receiveTimeout = Duration(milliseconds: 3000);
}
