import 'package:deli_dove/utils/allimports/allimports.dart';
import 'package:deli_dove/service/api_service.dart';
import 'package:deli_dove/models/customer.dart';
import 'package:deli_dove/utils/widgets/textFormFieldStl.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  var firstName = "";
  var lastName = "";
  var email = "";
  var password = "";
  APIService apiService = APIService();
  CustomerModel  model = CustomerModel();
  final _formKey = GlobalKey<FormState>();

   void createCustomer(){
    print('creating user');
    Navigator.pop(context); // Remove lines when creating
    return; // Remove lines when creating
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      apiService.createCustomer(model).then((ret){
        print(ret);
      });
    }
    print(model.firstName);
    print(model.email);
  }

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
                      fit: BoxFit.cover)),
            ),
            ListView(
              children: [
                SizedBox( height: 5, ),
                Container(
                  height: h,
                  width: w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Row(children: [
                            Text("Welcome!",style: TextStyle(fontSize: 28,),),
                                    
                          ],),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("Please fill all the necessary fields", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                                    
                            ],
                          ),
                          Row(
                            children: [
                              Text("", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                                    
                            ],
                          ),
                          SizedBox(height: 30,),
                          TextFormFieldStyle(
                          hintText: "First Name", 
                          labelText: 'First Name', 
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length <= 1 ||
                                value.trim().length > 50) {
                              return 'Must be between 1 and 50 characters.';
                            }
                            return null;
                          }, 
                          onSaved:  (value) {
                           model.firstName = value;
                           },),
                          SizedBox(height: 12,),
                          TextFormFieldStyle(
                            hintText: "Last Name", 
                            labelText: 'Last Name',
                            validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length <= 1 ||
                                value.trim().length > 50) {
                              return 'Must be between 1 and 50 characters.';
                            }
                            return null;
                          }, 
                          onSaved:  (value) {
                           model.lastName = value;
                           },
                          ),
                          SizedBox(height: 12,),
                          TextFormFieldStyle(
                            hintText: "Email", 
                            labelText: 'Email',
                            validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length <= 1 ||
                                value.trim().length > 50) {
                              return 'Should be a valid email';
                            }
                            return null;
                          }, 
                          onSaved:  (value) {
                           model.email = value;
                           },
                            ),
                          SizedBox(height: 12,),
                          TextFormFieldStyle(
                            hintText: "Password", 
                            labelText: 'Password',
                            obscureText: true,
                            validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length <= 1 ||
                                value.trim().length > 50) {
                              return 'Must be between 1 and 50 characters.';
                            }
                            return null;
                          }, 
                          onSaved:  (value) {
                           model.password = value;
                           },
                          ),
                          SizedBox(height: 12,),
                          PwdTextFormFieldWidget(hintText: "Confirm Password",labelText: "Confirm Password",),
                          SizedBox(height: 12,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Forgot Password?  ", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: appcolors),),
                                    
                            ],
                          ),
                          SizedBox(height: 20,),
                          ElevatedButtonWidget(
                            buttonBackgroundColor: appcolors,
                            buttonHeight: 50,
                            buttonborderRadius: 30,
                            buttonWidth: w-40,
                            onPressed: () {
                             // Get.off(LoginScreen());
                              // print("login screen");
                              // Get.off(()=>LoginScreen());
                              createCustomer();
                              
                            },
                            child:  Text("Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account?", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                              GestureDetector(
                                onTap: (){
                                 Get.to(LoginScreen());
                                 
                                },
                                  child: Text(" Log In", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: appcolors,fontWeight: FontWeight.bold),)),
                                    
                            ],
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 2,
                                width: 40,
                                color: appcolors,),
                              SizedBox(width: 20,),
                              Text("or", textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.grey),),
                              SizedBox(width: 20,),
                              Container(
                                height: 2,
                                width: 40,
                                color: appcolors,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                           // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Sign Up with", textAlign: TextAlign.center,style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 5.0,
                                      ),
                                    
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/googlelogo.png"),
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 5.0,
                                      ),
                                    
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/emaillogo.png"),
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 5.0,
                                      ),
                                    
                                    ],
                                ),
                                child: Icon(Icons.phone,size: 26,color: appcolors,),
                              ),
                            ],)
                        ],
                      ),
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
