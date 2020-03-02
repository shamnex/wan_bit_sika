import 'package:wan_bi_sika/flavor/flavor.dart';

class BaseURL {
  BaseURL._();
  static const String _PRODUCTION = '';
  static const String _DEVELOPMENT = '';
  static const String _MOCK = '';

  static String getURL(Flavor flavor) {
    switch (flavor) {
      case Flavor.production:
        return _PRODUCTION;
      case Flavor.development:
        return _DEVELOPMENT;
      case Flavor.mock:
        return _MOCK;
      default:
        return _MOCK;
    }
  }
}
