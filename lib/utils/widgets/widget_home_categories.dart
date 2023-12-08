
import 'package:deli_dove/service/api_service.dart';
import 'package:deli_dove/utils/allimports/allimports.dart';
import 'package:deli_dove/models/category.dart';

class WidgetCategories extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() =>  _widgetCategoriesState();
  
}

class _widgetCategoriesState extends State<WidgetCategories>
{

  APIService? apiService;

  @override
  void initState(){
    super.initState();
    apiService = new APIService();
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4),
                child: Text(
                  'All Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, top: 4, right: 10),
                child: Text(
                  'View All',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  // Widget _categoriesList(){
  //   return FutureBuilder(
  //     future: apiService!.fetchProductCategories(), 
  //     builder: (BuildContext context,){

  //       }
  //     );
  // }

  Widget buildCategoryLIst(List <ProductCategory> categories){
    return Container(
      height: 150,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index){
          var data = categories[index];
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                width: 80,
                height: 80,
                alignment: Alignment.center,
                child: Image.network(data.image!.src, height: 80,),
                decoration: BoxDecoration(shape: BoxShape.circle),
              ),
              Row(
                children: [
                  Text(data.name.toString()),
                  Icon(Icons.keyboard_arrow_right, size:14)
                ],
              ),
            ],
          );
        }
      ),
    );
  }

}