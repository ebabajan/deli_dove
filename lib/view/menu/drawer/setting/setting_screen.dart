

import '../../../../utils/allimports/allimports.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool? ischecked = false;
  bool? ischeck = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: w,
              height: 80,
              decoration: BoxDecoration(
                color: appcolors,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Account Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(HomeScreen());
                            },
                            child: Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 26,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: h-190,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('  Profile  ',style: TextStyle(color: Colors.grey),),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: AssetImage("assets/images/p20.png"),
                          radius: 50,
                        ),
                        SizedBox(height: 20,),
                        TextFormFieldWgt(hintText: "Enter Full Name", labelText: 'Full Name',),
                        SizedBox(height: 12,),
                        TextFormFieldWgt(hintText: "Enter Phone Number", labelText: 'Phone Number',),
                        SizedBox(height: 12,),
                        TextFormFieldWgt(hintText: "Enter Email Address", labelText: 'Email Address',),
                        SizedBox(height: 12,),
                        TextFormFieldWgt(hintText: "Enter Password", labelText: 'Change Password',),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text('  Settings  ',style: TextStyle(color: Colors.grey),),
                            Expanded(
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 80,
                          width: w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5.0,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [

                                    Text(
                                      "Language",
                                      style:
                                      TextStyle(fontSize: 12, color: Colors.grey),
                                    ),

                                    Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Image.asset("assets/images/pencil.png",height: 25,width: 25,)
                                          ],
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "English",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5.0,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value:ischecked,
                                    activeColor: appcolors,
                                    onChanged: (value){
                                      setState(() {
                                        ischecked = value;
                                      });
                                    }),
                                Text("Receive push notifications", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          width: w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 5.0,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value:ischeck,
                                    activeColor: appcolors,
                                    onChanged: (value){
                                      setState(() {
                                        ischeck = value;
                                      });
                                    }),
                                Text("Receive offers by email", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(height: 70,
            child: Column(
              children: [
                ElevatedButtonWidget(
                  buttonBackgroundColor: appcolors,
                  buttonHeight: 50,
                  buttonborderRadius: 10,
                  buttonWidth: 350,
                  onPressed: () {
                  },
                  child:  Text("Save",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}
