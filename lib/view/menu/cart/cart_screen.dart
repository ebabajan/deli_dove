import '../../../utils/allimports/allimports.dart';
import 'choosepayment_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List products = [
    "https://m.media-amazon.com/images/I/51rjLBNol-L._AC_UF1000,1000_QL80_.jpg",
    "https://t3.ftcdn.net/jpg/00/34/61/76/360_F_34617669_p9r4GrR83TBEXCZrRny6AaigqPUEPFp5.jpg",
    "https://5.imimg.com/data5/SELLER/Default/2021/4/OQ/HD/GF/1890507/herbal-medicine-for-low-blood-pressure-500x500.png",
    "https://bravofoods.com.pk/wp-content/uploads/2022/10/pepsi-500ml.png",
    "https://media.istockphoto.com/id/1401641202/vector/crispy-ripple-potato-chips-flying-into-pack.jpg?s=612x612&w=0&k=20&c=5xvSIdgF1v3Ga6IcRPMgPzrrduPSnTGXF-aD__aVbsc=",
  ];
  List productsnames = ["Avocado","Tomato","Step Lift","Pepsi","Chips",];
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

                SizedBox(height: 150,),

                Row(
                  children: [
                    Text('  Your Order  ',style: TextStyle(color: Colors.grey),),
                     Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                 height: 350,
                 color: Colors.grey.shade200,
                 child: ListView.builder(
                   itemCount: products.length,
                     itemBuilder: (context,index){
                       return  Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                         child: Container(
                           height: 100,
                           width: w  ,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(10),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12,
                                 blurRadius: 5.0,
                               ),
                             ],
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(10.0),
                             child: Row(
                               children: [
                                 Column(
                                   children: [
                                     Container(
                                       height: 80,
                                       width: 40,
                                       decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(30),
                                           boxShadow: [
                                             BoxShadow(
                                               color: Colors.black26,blurRadius: 5.0,
                                             )
                                           ]
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                                         children: [
                                           Icon(Icons.add,color: appcolors,size: 18,),
                                           Text("3",style: TextStyle(color: Colors.grey),),
                                           Icon(Icons.remove,color: appcolors,size: 18,),
                                         ],
                                       ),
                                     ),
                                   ],
                                 ),
                                 SizedBox(width: 10,),
                                 Container(height: 80,
                                   width: 70,
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(10),
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.black12,blurRadius: 5.0,
                                         )
                                       ],
                                       image: DecorationImage(
                                         image: NetworkImage(products[index]),
                                         fit: BoxFit.contain
                                       )
                                   ),
                                 ),
                                 SizedBox(width: 10,),
                                 Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(productsnames[index],maxLines: 2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                                     SizedBox(height: 5,),
                                     Text("£ 1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: appcolors),),
                                     SizedBox(height: 10,),
                                   ],
                                 ),
                                 SizedBox(width: 10,),
                                 Expanded(
                                   child: Column(
                                     children: [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.end,
                                         children: [
                                           Icon(Icons.close,color: Colors.black,size: 16,),
                                         ],
                                       )
                                     ],
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       );
                     }),
               ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Add more items",style: TextStyle(color: appcolors,fontSize:12,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: TextFormFieldWgt(hintText: "Enter Promo Code", labelText: 'Promo Code',),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cart Total",style: TextStyle(color: appcolors,fontWeight: FontWeight.w700,fontSize: 14),),
                          Text("£ 9.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax",style: TextStyle(color: appcolors,fontWeight: FontWeight.w700,fontSize: 14),),
                          Text("£ 3.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery",style: TextStyle(color: appcolors,fontWeight: FontWeight.w700,fontSize: 14),),
                          Text("£ 3.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Promo Discount",style: TextStyle(color: appcolors,fontWeight: FontWeight.w700,fontSize: 14),),
                          Text("£ 0.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Divider(color: Colors.grey,),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",style: TextStyle(color: appcolors,fontWeight: FontWeight.w700,fontSize: 14),),
                          Text("£ 15.00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 50,
                        buttonborderRadius: 10,
                        buttonWidth: 350,
                        onPressed: () {
                          Get.to(ChoosePaymentScreen());
                        },
                        child:  Text("Proceed to Checkout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                )
              ],
            ),
            Column(
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
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Cart",style: TextStyle(color: appcolors,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
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
                          SizedBox(height: 20,),
                          Text("Checkout",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
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
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Delivery",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
