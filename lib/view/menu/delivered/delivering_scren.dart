


import '../../../../utils/allimports/allimports.dart';
import 'delivered_screen.dart';

class DeliveringScreen extends StatefulWidget {
  const DeliveringScreen({super.key});

  @override
  State<DeliveringScreen> createState() => _DeliveringScreenState();
}

class _DeliveringScreenState extends State<DeliveringScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Delivering",style: TextStyle(color: appcolors,fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
                SizedBox(height: 20,),
                Image.asset("assets/images/delivering.png"),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Step 1",style: TextStyle(color: appcolors,fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                            color: appcolors,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Step 2",style: TextStyle(color: appcolors,fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                            color: appcolors,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Step 3",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                        SizedBox(height: 10,),
                        Container(
                          height: 5,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,color: appcolors,size: 18,),
                                  SizedBox(width: 10,),
                                  Text("Track Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),

                                ],
                              ),
                              SizedBox(height: 10,),
                              Image.asset("assets/images/gglmap.png"),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 250,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/bill.png",height: 25,width: 25,),
                                  SizedBox(width: 10,),
                                  Text("Order Summary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                                  Expanded(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Order no #033344",style: TextStyle(fontSize: 14,color: Colors.grey),),
                                    ],))
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("3x White Flower Vase",style: TextStyle(fontSize: 12),),
                                  Text("£ 3.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("3x White Flower Vase",style: TextStyle(fontSize: 12),),
                                  Text("£ 3.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("3x White Flower Vase",style: TextStyle(fontSize: 12),),
                                  Text("£ 3.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Divider(color: Colors.grey.shade400,),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Subtotal",style: TextStyle(fontSize: 14),),
                                  Text("£ 15.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Delivery",style: TextStyle(fontSize: 14),),
                                  Text("£ 3.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tax",style: TextStyle(fontSize: 14),),
                                  Text("£ 3.00",style: TextStyle(fontSize: 14),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),

                    ],
                  ),
                )

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          "Cart",
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
                ElevatedButtonWidget(
                  buttonBackgroundColor: appcolors,
                  buttonHeight: 50,
                  buttonborderRadius: 10,
                  buttonWidth: 350,
                  onPressed: () {
                    Get.to(DeliveredScreen());
                  },
                  child:  Text("Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
