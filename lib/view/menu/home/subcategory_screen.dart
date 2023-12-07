import 'package:deli_dove/view/menu/home/productreview_screen.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/allimports/allimports.dart';
import '../cart/cart_screen.dart';

class SubCategoryScreen extends StatefulWidget {
  final List? img ;
  final List? name ;
  const SubCategoryScreen({super.key,
     this.img,
     this.name});

  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  int? isselected = null;
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
                SizedBox(
                  height: 110,
                ),
                Container(
                  height: h - 150,
                  child: GridView.builder(
                      itemCount: widget.img!.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 3.59 / 5,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 15),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(ProductReviewScreen(
                                  name: widget.name![index] ,
                                  img:  widget.img![index],
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
                                    ]),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isselected = index;
                                                });
                                              },
                                              child: Icon(
                                                Icons.add_circle,
                                                color: isselected == index
                                                    ? appcolors
                                                    : Colors.grey.shade300,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Image.network(
                                      widget.img![index]  ?? "assets/images/flowercamp.png",
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      widget.name![index]  ?? "White Flower Vase",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                      fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "£ 1",
                                      style: TextStyle(
                                          color: appcolors,
                                          fontSize: 14,fontWeight: FontWeight.w700),
                                    ),

                                  ],
                                ),
                              ),
                            ));
                      }),
                ),
              ],
            ),
            Container(
              height: 100,
              width: w,
              decoration: BoxDecoration(
                color: appcolors,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.back();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        SearchBarTextField(
                          width: w * 0.75,
                          borderRadius: 30,
                        ),
                        GestureDetector(
                            onTap: () {
                              Get.to(CartScreen());
                            },
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 28,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
