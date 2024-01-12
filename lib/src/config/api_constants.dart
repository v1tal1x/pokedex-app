abstract class ApiConstants {
  static const String _baseScheme = 'http://';
  static const String _baseUrlDomain = 'pokeapi.co/api/v2';
  static const String _baseSearchPath = '/pokemon';

  static const String searchUrl = '$_baseScheme$_baseUrlDomain$_baseSearchPath'; 
}
