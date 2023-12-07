import 'package:deli_dove/utils/allimports/allimports.dart';





class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/grocery.jpeg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListView(
              children: [
                SizedBox(height: 280,),
                Container(
                  height: 450,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Image.asset("assets/images/flyingbird.png",height: 100,width: 100,),
                      SizedBox(height: 30,),
                      Text("Get Started",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Text("Order Your Favorite Food And", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),
                      Text("Get it Delivered To Your Doorstep", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),
                      SizedBox(height: 80,),
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 45,
                        buttonborderRadius: 30,
                        buttonWidth: w-40,
                        onPressed: () {
                         Get.offAll(LoginScreen());
                        },
                        child:  Text("START",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                              value:ischecked,
                              activeColor: appcolors,
                              onChanged: (value){
                                  setState(() {
                                    ischecked = value;
                                  });
                              }),
                          GestureDetector(
                              onTap: (){
                                Get.to(TermsScreen());
                              },
                              child: Text("Terms & Conditions", textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.grey),)),
                        ],
                      ),


                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
