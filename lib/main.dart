import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hive/hive.dart';
import 'package:umah/model/wishlist.dart';
import 'package:umah/screen/MainScreen/discover_screen.dart';
import 'package:umah/screen/MainScreen/list_screen.dart';
import 'package:umah/screen/MainScreen/main_page.dart';
import 'package:umah/screen/MainScreen/wishlist_screen.dart';
import 'package:umah/screen/OnboardingScreens/Onboarding_Page.dart';
import 'package:umah/screen/login_screen.dart';
import 'package:umah/screen/splash/main_splash_screen.dart';
import 'package:path_provider/path_provider.dart';

void main() async {  WidgetsFlutterBinding.ensureInitialized();


final appDocumentDir = await getApplicationDocumentsDirectory();
Hive.init(appDocumentDir.path);
Hive.registerAdapter(WishListAdapter());
Hive.openBox('wishlist');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/mainSplash",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/mainSplash", page: () => const MainSplashScreen()),
        GetPage(name: "/login", page: () => const LoginScreen()),
        GetPage(name: "/mainPage", page: () => const MainPage()),
        GetPage(name: "/discover", page: () =>  DiscoverScreen()),
        GetPage(name: "/list", page: () =>   ListScreen()),
        GetPage(name: "/onboardingPage", page: () => const Onboarding()),
        GetPage(name: "/wishList", page: () =>  WishListScreen()),

      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
