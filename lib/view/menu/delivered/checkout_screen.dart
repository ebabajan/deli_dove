
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../utils/allimports/allimports.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Thank You !",style: TextStyle(color: appcolors,fontWeight: FontWeight.bold,fontSize: 24),),
                ],
              ),
              SizedBox(height: 20,),
              Icon(Icons.check_circle,color: appcolors,size: 120,),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Rate Your Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothStarRating(
                    color: Colors.amber,
                    borderColor: Colors.amber,
                    rating: rating,
                    size: 30,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: false,
                    spacing: 2.0,
                    onRatingChanged: (value) {
                      setState(() {
                        rating = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Share Your Feedback",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                maxLines: 3,
                cursorColor: appcolors,
                style: TextStyle(fontFamily: "PTSerif"),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    hintText: 'Tell us what you liked' ,
                    hintStyle: TextStyle(
                        fontFamily: "PTSerif",
                        color: Colors.black.withOpacity(0.4)),
                    fillColor: Colors.white24,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  height: 250,
                  width:  w - 15,
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
              ),
              SizedBox(height: 20,),
              ElevatedButtonWidget(
                buttonBackgroundColor: appcolors,
                buttonHeight: 50,
                buttonborderRadius: 10,
                buttonWidth: 350,
                onPressed: () {
                  Get.offAll(HomeScreen());
                },
                child:  Text("Done",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

