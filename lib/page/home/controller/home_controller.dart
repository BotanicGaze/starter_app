import 'package:starter_app/global/global.dart';

class HomeController {

  HomeController(this.ref) {
    _init();
  }
  final Ref ref;

  void _init() {
    debugPrint('🚀 HomeController Initialize');
  }
}
