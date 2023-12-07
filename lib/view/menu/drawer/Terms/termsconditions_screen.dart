


import 'package:deli_dove/view/menu/drawer/Terms/policy_screen.dart';

import '../../../../utils/allimports/allimports.dart';
import 'conditions_screen.dart';

class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  State<TermsConditionsScreen> createState() => _TermsConditionsScreenState();
}

class _TermsConditionsScreenState extends State<TermsConditionsScreen> {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              //Searchbar container
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
                        "Terms & Conditions",
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
              //orders and history tabs
              TabBar(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  labelColor: appcolors,
                  indicatorColor: appcolors,
                  tabs: [
                    Tab(
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ]),
              //orders and history pages called
              Expanded(
                child: TabBarView(children: [
                  ConditionsScreen(),
                  PolicyScreen()
                  //2nd tab body
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
