import 'package:deli_dove/service/api_service.dart';
import 'package:deli_dove/utils/allimports/allimports.dart';
import 'package:deli_dove/models/category.dart';

class WidgetCategories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _widgetCategoriesState();
}

class _widgetCategoriesState extends State<WidgetCategories> {
  APIService? apiService;

  @override
  void initState() {
    super.initState();
    apiService = new APIService();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _categoriesList(),
    );
  }

  Widget _categoriesList() {
    //apiService!.fetchProducts();
    apiService!.Login();
    return FutureBuilder<List<ProductCategory>>(
      future: apiService!.fetchProductCategories(),
      builder: (BuildContext context,
          AsyncSnapshot<List<ProductCategory>> snapshot) {
        if (snapshot.hasData) {
          
          return buildCategoryList(snapshot.data!);
        }

        return Center(
          child: Text('Waiting...'),
        );
      },
    );
  }

  Widget buildCategoryList(List<ProductCategory> categories) {
    return Container(
      height: 130,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage(categories[index].image!.src),
                      backgroundColor: Colors.grey.shade200,
                      radius: 38,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Text(categories[index].name),
                  ],
                ),
              ),
            );
          }),
    );
  }

//
  Widget buildCategoryLIst1(List<ProductCategory> categories) {
    return Container(
      alignment: Alignment.centerLeft,
      child: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            var data = categories[index];
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: Image.network(
                    data.image!.src,
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(data.name.toString()),
                    Icon(Icons.keyboard_arrow_right, size: 14)
                  ],
                ),
              ],
            );
          }),
    );
  }
}
