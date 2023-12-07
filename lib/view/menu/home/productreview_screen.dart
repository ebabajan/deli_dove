
import 'package:deli_dove/view/menu/cart/cart_screen.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../../utils/allimports/allimports.dart';

class ProductReviewScreen extends StatefulWidget {
  final String? img;
  final String? name;
  const ProductReviewScreen({super.key, this.img, this.name});

  @override
  State<ProductReviewScreen> createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {

  int? isselected  = null ;
  var rating = 4.0;

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
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Get.back();
                            },
                            child: Icon(Icons.arrow_back,color: appcolors,)),
                        GestureDetector(
                            onTap: (){
                              Get.to(CartScreen());
                            },
                            child: Icon(Icons.shopping_cart_outlined,color: appcolors,)),
                      ],
                    ),
                  ),
                  Center(child: Image.network(widget.img ?? "assets/images/flowercamp.png",height: 200,width: 200,fit: BoxFit.cover,),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.name ??'White Flower Vase',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Text('£ 1   ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: appcolors),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text('Lorem ipsum dolor sit amet.',style: TextStyle(fontSize: 14,),),
                  SizedBox(height: 20,),
                  Text('Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet.',maxLines: 4,style: TextStyle(fontSize: 14,),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 50,
                        buttonborderRadius: 30,
                        buttonWidth: w * 0.7,
                        onPressed: () {
                        },
                        child:  Text("Add to cart",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(child: Icon(Icons.favorite_border_outlined,color: appcolors,)),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('More like this  ',style: TextStyle(color: Colors.grey),),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,ind){
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                              onTap:(){
                                                setState(() {
                                                  isselected = ind;
                                                });
                                              },
                                              child: Icon(Icons.add_circle,color: isselected == ind ? appcolors : Colors.grey.shade300,size: 20,)),
                                        ],
                                      ),
                                    ),
                                    Image.asset("assets/images/apple.png",height: 50,width: 50,fit: BoxFit.cover,),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 35,
                                      width: w,
                                      decoration: BoxDecoration(
                                        color: appcolors,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Red Apple",style: TextStyle(color: Colors.white,fontSize: 10),),
                                            Container(
                                              height: 18,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("£ 1",style: TextStyle(color: appcolors,fontSize: 12),),),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                          );
                        }),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Customers also bought  ',style: TextStyle(color: Colors.grey),),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,ind){
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                              onTap:(){
                                                setState(() {
                                                  isselected = ind;
                                                });
                                              },
                                              child: Icon(Icons.add_circle,color: isselected == ind ? appcolors : Colors.grey.shade300,size: 20,)),
                                        ],
                                      ),
                                    ),
                                    Image.asset("assets/images/flowercamp.png",height: 50,width: 50,fit: BoxFit.cover,),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 35,
                                      width: w,
                                      decoration: BoxDecoration(
                                        color: appcolors,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Red Apple",style: TextStyle(color: Colors.white,fontSize: 10),),
                                            Container(
                                              height: 18,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(child: Text("£ 1",style: TextStyle(color: appcolors,fontSize: 12),),),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                          );
                        }),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Product Ratings  ',style: TextStyle(color: Colors.grey),),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                height: 250,
                width: w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black26,blurRadius: 5.0),
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("16/08/23",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      Row(
                        children: [
                          Container(height: 80,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/flowercamp.png"),
                                )
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text("White Flower Vase",maxLines: 2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                          SizedBox(width: 10,),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Divider(color: Colors.grey.shade300,),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SmoothStarRating(
                            color: Colors.amber,
                            borderColor: Colors.amber,
                            rating: rating,
                            size: 20,
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
                      SizedBox(height: 5,),
                      Expanded(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.asset("assets/images/p20.png"),
                                ),
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,",maxLines: 5,style: TextStyle(color: Colors.grey,fontSize: 12),)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
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
                          BoxShadow(color: Colors.black26,blurRadius: 5.0),
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("16/08/23",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(height: 80,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/flowercamp.png"),
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text("White Flower Vase",maxLines: 2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                              SizedBox(width: 10,),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Divider(color: Colors.grey.shade300,),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SmoothStarRating(
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                rating: rating,
                                size: 20,
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
                          SizedBox(height: 5,),
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset("assets/images/p20.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,",maxLines: 5,style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
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
                          BoxShadow(color: Colors.black26,blurRadius: 5.0),
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("16/08/23",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(height: 80,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/flowercamp.png"),
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text("White Flower Vase",maxLines: 2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                              SizedBox(width: 10,),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Divider(color: Colors.grey.shade300,),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SmoothStarRating(
                                color: Colors.amber,
                                borderColor: Colors.amber,
                                rating: rating,
                                size: 20,
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
                          SizedBox(height: 5,),
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset("assets/images/p20.png"),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,",maxLines: 5,style: TextStyle(color: Colors.grey,fontSize: 12),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
