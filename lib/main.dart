// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sendmoney/app/constant.dart';
import 'package:sendmoney/app/localization/strings.dart';
import 'package:sendmoney/data/provider/app_shared_preference.dart';
import 'package:sendmoney/data/services/user_repository.dart';
import 'package:sendmoney/modules/splash/splash_barral.dart';
import 'package:sendmoney/navigation/routes.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.deleteBoxFromDisk(Constant.TRANSACTION_STORE_NAME);
  await Hive.openBox<List>(Constant.TRANSACTION_STORE_NAME);
  
   sharedPrefs.init().then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final UserRepository userRepository = UserRepository();



    return GetMaterialApp(
        title: Strings.lblAppName,
        initialRoute: AllRoute.splashScreenRoute,
        initialBinding: SplashBinding(repository: userRepository),
        getPages: AllRoute.getPages(userRepository),
        // darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        // theme: getAppThemeData(),
        home: const HomeWidget());
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();

   
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // setDeviceMetrics(
    //     MediaQuery.of(context).size.width,
    //     MediaQuery.of(context).size.height,
    //     MediaQuery.of(context).devicePixelRatio);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
