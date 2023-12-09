
import 'package:deli_dove/utils/widgets/widget_home_categories.dart';
import 'package:deli_dove/view/menu/cart/cart_screen.dart';
import 'package:deli_dove/view/menu/home/productreview_screen.dart';
import 'package:deli_dove/view/menu/home/subcategory_screen.dart';
import 'package:deli_dove/view/menu/home/subproduct_screen.dart';

import '../../../utils/allimports/allimports.dart';
import '../drawer/Terms/termsconditions_screen.dart';
import '../drawer/contactus/contactus_screen.dart';
import '../drawer/notification/notification_screen.dart';
import '../drawer/reordering/reordering_screen.dart';
import '../drawer/setting/setting_screen.dart';
import '../drawer/trackorder/trackorder_screen.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:deli_dove/config.dart';
import 'dart:io';

class _MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

  void _bypassSslVerificationForHttpClient() {
    HttpOverrides.global = _MyHttpOverrides();
  }

  void getCategories() async {
    final url = Config.url + Config.productCat;
    final credential = Config.token;

    _bypassSslVerificationForHttpClient();

    var header = {'Authorization': 'Basic $credential'};

    var dio = Dio();
    var response = await dio.request(
      url,
      options: Options(
        method: 'GET',
        headers: header,
      ),
    );
    print(response);
    
  }
  
 
  
  List icon = [Icons.shopping_cart_outlined,Icons.fire_truck_outlined,Icons.fastfood_outlined,Icons.medical_services_outlined];
  List title = ["Order Grocery","Order Flowers","Order Recipe","Order Medicine"];
  List subtitle = ["Get Order grocery delivered to you at your doorstep","Get Order Flowers delivered to you at your doorstep","Get ingredients of your favorite recipes delivered to your doorstep","Get medicine delivered to your doorstep "];
  List img = ["https://media.istockphoto.com/id/1278002458/photo/wicker-basket-with-assorted-raw-organic-vegetables-in-the-garden.jpg?s=612x612&w=0&k=20&c=IhqLeNkWCyWADlTVl05K5wWYcBY46rkGKKs0UlY_gms=","https://media.istockphoto.com/id/1130985158/photo/beautiful-fresh-cut-bouquet-of-mixed-flowers-in-vase-on-wooden-table-the-work-of-the-florist.jpg?s=612x612&w=0&k=20&c=z6NlSMIaBVQt6fGvEj4TgrkXJ6fBCENlYDWmMN-EI_A=","https://media.istockphoto.com/id/639714700/photo/blank-recipe-book-with-herbs-and-spices.jpg?s=612x612&w=0&k=20&c=_Wttu9c6pr6R0Ulgl4Z2eVCZb-asVb9Bf-Q0QU14MHQ=","https://media.istockphoto.com/id/1471839731/photo/a-young-woman-pharmacist-arranges-medicines-on-the-shelves-of-the-pharmacy.jpg?s=612x612&w=0&k=20&c=UPc3UdlCCcJ3mcruTJzlkjgDyKusnrY2G6QXeXSbuTk="];
  String selected = "Order Grocery";
  int? isselected  = null ;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  List categoriesimg = ["https://media.istockphoto.com/id/1370671202/photo/different-fresh-vegetables-as-background-closeup-view.jpg?s=612x612&w=0&k=20&c=M_-Xwn-9p2EgdFaTphsfXvbti5MXG8FEV3nTUYGnxPQ=","https://media.istockphoto.com/id/173255460/photo/assortment-of-fruits.jpg?s=612x612&w=0&k=20&c=9FCZJRCXbLH7KGVixrpQxl3GVGXepb2pXqkz-MkzDQM=","https://media.istockphoto.com/id/1322693212/photo/cropped-shot-of-shelves-stocked-with-various-medicinal-products-in-a-pharmacy.jpg?s=612x612&w=0&k=20&c=TzDUSyEbWG8RwVjW0WruyVvsMlH9W9n4l5LuMN8olTg=","https://media.istockphoto.com/id/1372870302/photo/beverage-choices-in-a-local-bodega.jpg?s=612x612&w=0&k=20&c=G0uDkhlUElqricD9XF_DgBZADteJyrPKZDIWnWCZoAk=","https://media.istockphoto.com/id/1299861527/photo/chips-on-supermarket-shelves.jpg?s=612x612&w=0&k=20&c=cIG_Gt79-hlS9PfEwvWk0sR756u1M3tQvjcjmHUt_FY="];
  List categories = ["Vegetables","Fruits","Pharmacy","Drinks","Snacks"];

  List fruits = ["https://m.media-amazon.com/images/I/51rjLBNol-L._AC_UF1000,1000_QL80_.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNg6JMLxS8a_kU4IljoJ5hQkwzVj3_By2aXA&usqp=CAU","https://media.istockphoto.com/id/173242750/photo/banana-bunch.jpg?s=612x612&w=0&k=20&c=MAc8AXVz5KxwWeEmh75WwH6j_HouRczBFAhulLAtRUU=","https://t4.ftcdn.net/jpg/02/71/66/91/360_F_271669174_2dHs4FO3SV83lQ4MjswEBa4LQTGjMO4E.jpg","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAdxCg_KfZ75fEIW8KZLT9TZSj4qkQyhiRS_WiwvJSU_hsuhOq6TT9yiYDGsUX7dOTfRk&usqp=CAU","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvGxepSIYA8qjtxLkiyIYX2yvVeWT4QoSk36CcIiFYLrQTyLrb7yBdU5tMNEvyDPoOGwk&usqp=CAU","https://5.imimg.com/data5/SELLER/Default/2022/9/NK/YK/WC/90370493/strawberry-fruit-500x500.jpg","https://vin-farm.com/wp-content/uploads/2022/05/Lychee.png","https://5.imimg.com/data5/YW/JL/MY-41533060/pear-fruit-500x500.jpg"];
  List fruitsname = ["Avocado","Orange","Banana","Mango","kiwi","Papaya","Ziziphus","Strawberry","Lychee","Pear"];

  List vegetablesnames = ["Tomato","Cauliflower","Broccoli","Carrot","Pimento Peppers","Okra","Iceberg Lettuce","Potato","Brinjal","Zucchini"];
  List vegetables = [
    "https://t3.ftcdn.net/jpg/00/34/61/76/360_F_34617669_p9r4GrR83TBEXCZrRny6AaigqPUEPFp5.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs9hRBViunXpHdHUESII8ecWerzAqARreFirkNogFfpdVAUgoBUaRSR3HT9BxobCdRSIY&usqp=CAU",
    "https://cdn.pixabay.com/photo/2016/06/11/15/33/broccoli-1450274_1280.png",
    "https://img.freepik.com/premium-photo/carrot-isolated-white_253984-4516.jpg?w=2000",
    "https://www.millerchemical.com/wp-content/uploads/2021/03/iStock-1279143583.png",
    "https://images.indianexpress.com/2021/08/bhindi_1200_getty.jpg",
    "https://i5.walmartimages.com/asr/5da8c3ac-6c24-449d-8b15-9984dbac94a1_1.5848bcf880f19d670a31ee8cd533f108.jpeg",
    "https://m.media-amazon.com/images/I/61yXL70-RaL._AC_UF1000,1000_QL80_.jpg",
    "https://5.imimg.com/data5/GQ/AL/MY-5752523/fresh-brinjal-vegetable-500x500.jpg",
    "https://a-z-animals.com/media/2022/08/fresh-whole-and-sliced-zucchini-isolated-on-white-background-from-top-picture-id1149201983.jpg"
  ];

  List medicine = [
    "https://5.imimg.com/data5/SELLER/Default/2021/4/OQ/HD/GF/1890507/herbal-medicine-for-low-blood-pressure-500x500.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1MkKbR_S53AS0zZUoRVB2W4sCy_9mnUrVwYzusE_A1dTXhJD79XIBY2n7i4mJElXrldA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx7TDXpLCdk5_Lxwi5PtfyQiml4A2ZlAcqJUtABJXfMZSqnHKILAKCzEkJrT0aikBTRzg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoq3jy5Ck5lgnJpqkZds2olcMIh3OL4x3b_cCiyX_O-JdHoYV9mxcL9BNgByNzfVmSESQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwY0kwE4tNSlDPEwu16IGa4v8kE4ZR_jU-A93dOSWBc_z3fjx_UOtK0B03w4evKoLlDVE&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8n7vxNGHvOr4Y2uDKNn-IpoZLuACFuH8bymWe7LlRw5iatIw3le61yFqjF1v0Tb66rB4&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoD1ngdINXqxY8dTPOr4nsf_fRDIflNFWYgg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLU5Ktf0-O8Wk1YmUnb0_TuzMJTOMMiZEsPg&usqp=CAU"];
  List medicinename = ["Step Lift","Step Low","Stepno","Cabna Plus","Step Lysys","Lopress","Hypocare","NL-12","Low BP Care"];

  List drinks = [
    "https://bravofoods.com.pk/wp-content/uploads/2022/10/pepsi-500ml.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBBUauUwu8RatcjCOyPR-mrCebBpWhv-DqfSS-V2gXA-pVESggGg9xMT_eD0d-BED-8gA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-03ulvcskLt8-sVsOE0rcqFsXfOrsdr4bgg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbqdH37rGyCg9576r9TBNT4ObLxLnOVqadNw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAYZPlTYxkTVsff_XFY_gdLk-vo9P8u901gg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYrXy70Ei3M4wawFYaWHbPTZJu-XTpOyE58w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPM7UF4YTmIWTGU7WftwnpDuwXyHcfbCsQ3g&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREIj1kfmiHAPp-ImAKjgTFIt4Mnilhj-kiEQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBTBBXixFR37zAtM_syAsR0cjCKYaNGzJcvw&usqp=CAU"];
  List drinksname = ["Pepsi","Pepsi","Pepsi","Sprite","Dew","Mrinda","Coca-cola","Dew","Coca-cola"];

  List snacks = [
    "https://media.istockphoto.com/id/1401641202/vector/crispy-ripple-potato-chips-flying-into-pack.jpg?s=612x612&w=0&k=20&c=5xvSIdgF1v3Ga6IcRPMgPzrrduPSnTGXF-aD__aVbsc=",
    "https://media.istockphoto.com/id/1480953812/vector/convenient-package-containing-delicious-chips-isolated-on-white-background-product-for-on.jpg?s=612x612&w=0&k=20&c=LTiXjYdKaTlkE1zCSwlRAy9ZWrT5XQsldebtjzStq4Q=",
    "https://media.istockphoto.com/id/885573930/vector/set-of-two-packaging-with-chips.jpg?s=612x612&w=0&k=20&c=3zmOxdBZWW1CTzefQuUTf9yck3ui1hfOHXTsUpNcY1s=",
    "https://media.istockphoto.com/id/1201263474/vector/candy-packaging-design-realistic.jpg?s=612x612&w=0&k=20&c=p576EFtutwpf29jmXO883SFLZwRdVelpZ7qU52EPxik=",
    "https://media.istockphoto.com/id/1400610703/vector/potato-chips-package-design.jpg?s=612x612&w=0&k=20&c=2QF_zEdY8bvdfj3MPHi3hRM8mKnBShxR1sanxbdIiNk=",
    "https://media.istockphoto.com/id/1338645395/vector/candies-packaging-design-realistic-sweets-wrappers-mockups-candy-truffle-and-chocolate-bars.jpg?s=612x612&w=0&k=20&c=BKQe6vsI9LVfODVSQjKNvhXUtJ_VAPCFqU0HUZJI3_o=",
    "https://media.istockphoto.com/id/1306889416/vector/package-and-plate-of-chips-in-trendy-cartoon-style.jpg?s=612x612&w=0&k=20&c=2n5i3hqW23uJXxIF8q-QX5QxhR7pJnM7RgZCXq_JAn8=",
    "https://media.istockphoto.com/id/1165125774/photo/transparent-plastic-pasta-bag-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=askYrIUlxrhrf0nEVAFkCBErLCmyMe0UjpyNnPPY4-U=",
    "https://media.istockphoto.com/id/1431461077/photo/eclairs-in-the-package.jpg?s=612x612&w=0&k=20&c=Q5ft3UYdq0HB0Bqmr-1iqunJUh7ulwNOxUC7MEIjLWs=",
    "https://media.istockphoto.com/id/1452920908/photo/pink-donuts-packed-in-box-isolated-on-white-background-natural-light.jpg?s=612x612&w=0&k=20&c=nIX8alJtnx7eLoOQP9J3eiYLwJIcaPBT8jWyb6f77JM=",
  ];
  List snacksname = [
    "Chips",
    "Chips",
    "Chips",
    "Chocolate",
    "Chips",
    "Chocolate",
    "Chips",
    "Chips",
    "Chocolate",
    "Chocolate",
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    getCategories();
    return  Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: appcolors,
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/p20.png"),
                        backgroundColor: Colors.grey.shade200,
                        radius: 40,
                      ),
                      GestureDetector(
                          onTap: (){
                            Get.to(SettingScreen());
                          },
                          child: Image.asset("assets/images/pencil.png",color: Colors.white,height: 25,width: 25,)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Joye Charlie",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications,color: appcolors,),
              title: Text("Notifications"),
              onTap: () {
                Get.to(NotificationsScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.location_pin,color: appcolors,),
              title: Text("Track Order"),
              onTap: () {
                Get.to(TrackOrderScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.repeat,color: appcolors,),
              title: Text("Orders & Reordering"),
              onTap: () {
               Get.to(OrderReorderingScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail,color: appcolors,),
              title: Text("Contact Us"),
              onTap: () {
                 Get.to(ContactUsScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.receipt_long,color: appcolors,),
              title: Text("Terms & Conditions/Policy"),
              onTap: () {
                Get.to(TermsConditionsScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,color: appcolors,),
              title: Text("Settings"),
              onTap: () {
               Get.to(SettingScreen());
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,color: appcolors,),
              title: Text("Logout"),
              onTap: () {
              Get.offAll(LoginScreen());
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 160,
                ),
                Container(
                  height:  240,
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              selected = title[index];
                              Get.to(SubProductScreen());
                            });

                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 165,
                              decoration: BoxDecoration(
                                  color: selected==title[index] ? appcolors :Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0
                                    ),
                                  ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 10,top: 10,right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(icon[index],color: selected==title[index] ? Colors.white : appcolors,),
                                        Text(title[index],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: selected==title[index] ? Colors.white :appcolors),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(subtitle[index], textAlign: TextAlign.left,maxLines: 2 ,style: TextStyle(fontSize: 10,color:selected==title[index] ? Colors.white : Colors.grey,fontWeight: FontWeight.w400),),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: Container(
                                      height: 135,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(img[index]),
                                            fit:BoxFit.cover
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('  Categories  ',style: TextStyle(color: Colors.grey),),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                WidgetCategories(),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text('  Fruits    ',style: TextStyle(color: Colors.grey),),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 180,
                  child: ListView.builder(
                      itemCount: fruits.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,ind){
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:GestureDetector(
                              onTap: (){
                                Get.to(ProductReviewScreen(
                                  img: fruits[ind],
                                  name: fruitsname[ind],
                                ));
                              },
                              child: Container(
                                width: 150,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                              onTap:(){
                                                setState(() {
                                                  isselected = ind;
                                                });
                                              },
                                              child: Icon(Icons.add_circle,color: isselected == ind ? appcolors : Colors.grey.shade300,)),
                                        ],
                                      ),
                                    ),
                                    Center(child: Image.network(fruits[ind],height: 70,width: 70,fit: BoxFit.cover,)),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(fruitsname[ind],style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w700),),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("£ 1",style: TextStyle(color: appcolors,fontSize: 14,fontWeight: FontWeight.w700),),
                                  ],
                                ),
                              ),
                            )
                        );
                      }),
                ),
                SizedBox(height: 20,),

              ],
            ),
            Container(
              height: 150,
              width: w,
              decoration: BoxDecoration(
                color: appcolors,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                                onTap:(){
                                  scaffoldKey.currentState!.openDrawer();
                                },
                                child: Icon(Icons.menu,color: Colors.white,size: 28,)),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Text("Edgware Road",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                                Text("London",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),

                              ],
                            )
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite_border_outlined,color: Colors.white,size: 28,),
                              SizedBox(width: 10,),
                              GestureDetector(
                                  onTap: (){
                                    Get.to(CartScreen());
                                  },
                                  child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 28,)),
                              SizedBox(width: 10,),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchBarTextField(borderRadius: 30,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
