import 'package:deli_dove/utils/allimports/allimports.dart';


class TermsScreen extends StatefulWidget {
  const TermsScreen({super.key});

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool? ischecked = false;
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
                      fit: BoxFit.cover
                  )
              ),
            ),
            Column(
              children: [
                SizedBox(height: 250,),
                Container(
                  height: h-300,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                          value:ischecked,
                                          activeColor: appcolors,
                                          onChanged: (value){
                                            setState(() {
                                              ischecked = value;
                                            });
                                          }),
                                      Text("Accept", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),

                                    ],
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                            onTap:(){
                                    Get.back();
                                  },
                                            child: Icon(Icons.close,size: 28,color: appcolors,))
                                      ],
                                    ),
                                  )
                                 ],
                              ),
                        SizedBox(height: 20,),
                        Expanded(
                          child: ListView(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("TERMS OF USE",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 30,),
                              Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.justify,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.justify,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.justify,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
                              SizedBox(height: 20,),
                              Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.justify,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
                              SizedBox(height: 20,),
                            ],
                          ),
                        )
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
