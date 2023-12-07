import 'package:deli_dove/utils/allimports/allimports.dart';






class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  ChangeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAll(GetStartedScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ChangeScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/p1.png",height: 300,width: 300,),
            )
          ],
        ),
      ),
    );
  }
}
