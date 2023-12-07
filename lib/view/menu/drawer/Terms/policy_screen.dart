

import '../../../../utils/allimports/allimports.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("OUR PRIVACY POLICY - YOUR ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("PRIVACY RIGHTS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("EFFECTIVE DATE : 12/07/20",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 30,),
          Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.left,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
          SizedBox(height: 20,),
          Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.left,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
          SizedBox(height: 20,),
          Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.left,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
          SizedBox(height: 20,),
          Text("Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet,", textAlign: TextAlign.left,maxLines: 8,style: TextStyle(fontSize: 14,color: Colors.grey),),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
