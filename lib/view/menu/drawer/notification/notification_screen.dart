

import 'package:deli_dove/view/menu/delivered/preparingorder_screen.dart';

import '../../../../utils/allimports/allimports.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {

  List time = [
    "08:00 AM",
    "04:11 PM",
    "04:00 PM",
    "03:52 PM",
    "08:00 AM",
    "04:11 PM",
    "04:00 PM",
    "03:52 PM",
    "08:00 AM",
    "04:11 PM",
    "04:00 PM",
    "03:52 PM",
    "08:00 AM",
    "04:11 PM",
    "04:00 PM",
    "03:52 PM",
  ];

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
                  height: 100,
                ),
                Container(
                  height: h - 150,
                  child: ListView.builder(
                      itemCount: time.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(PreparingOrderScreen());
                            },
                            child: Container(
                              height: 70,
                              width: w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 5.0)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/p4.png",
                                      height: 40,
                                      width: 40,
                                      color: appcolors,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Your Order is Here!",maxLines: 2,overflow: TextOverflow.ellipsis,
                                          style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          time[index],
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
            Container(
              width: w,
              height: 80,
              decoration: BoxDecoration(
                color: appcolors,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
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
                      "Notifications",
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
                            onTap: () {
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
          ],
        ),
      ),
    );
  }
}
