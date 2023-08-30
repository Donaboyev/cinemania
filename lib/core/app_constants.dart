import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConstants{
  static String apiKey = dotenv.env['API_KEY'] ?? 'Api key is not found';
}