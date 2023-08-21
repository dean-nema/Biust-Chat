import 'package:stuff_neh/pages/Login_page.dart';
import 'package:stuff_neh/pages/edit_profile_page.dart';
import 'package:stuff_neh/pages/home_page.dart';
import 'package:stuff_neh/pages/main_page.dart';

class AppRoutes {
  static final pages = {//lol this is a map
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editPofile = '/edit_profile';

}
