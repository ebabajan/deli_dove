import 'package:deli_dove/utils/allimports/allimports.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                      fit: BoxFit.cover)),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 600,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Row(children: [
                          Text("Welcome Back!",style: TextStyle(fontSize: 28,),),

                        ],),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Lorem ipsum dolor sit amet, consectetur", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),

                          ],
                        ),
                        Row(
                          children: [
                            Text("adipiscing elit, sed do.", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),

                          ],
                        ),
                        SizedBox(height: 30,),
                        TextFormFieldWgt(hintText: "Enter Email Address", labelText: 'Email Address',),
                        SizedBox(height: 12,),
                        PwdTextFormFieldWidget(hintText: "Enter Password",labelText: "Password",),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forgot Password?  ", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: appcolors),),

                          ],
                        ),
                        SizedBox(height: 20,),
                        ElevatedButtonWidget(
                          buttonBackgroundColor: appcolors,
                          buttonHeight: 50,
                          buttonborderRadius: 30,
                          buttonWidth: w-40,
                          onPressed: () {
                           Get.offAll(HomeScreen());
                          },
                          child:  Text("LOGIN",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                            GestureDetector(
                              onTap: (){
                               Get.to(SignupScreen());

                              },
                                child: Text(" Sign Up", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: appcolors,fontWeight: FontWeight.bold),)),

                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Container(
                               height: 2,
                             width: 40,
                             color: appcolors,),
                             SizedBox(width: 20,),
                             Text("or", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),
                             SizedBox(width: 20,),
                             Container(
                               height: 2,
                               width: 40,
                               color: appcolors,),
                           ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sign Up with", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5.0,
                                ),

                              ],
                              image: DecorationImage(
                                image: AssetImage("assets/images/googlelogo.png"),
                              )
                            ),
                          ),
                            SizedBox(width: 20,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 5.0,
                                    ),

                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/emaillogo.png"),
                                  )
                              ),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 5.0,
                                    ),

                                  ],
                              ),
                              child: Icon(Icons.phone,size: 26,color: appcolors,),
                            ),
                        ],)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
