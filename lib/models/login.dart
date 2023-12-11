
class LoginResponseModel
{
  bool success;
  int statusCode;
  String code;
  String message;
  Data data;
  LoginResponseModel({
    required this.success, 
    required this.statusCode, 
    required this.code, 
    required this.message, 
    required this.data
    });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json){
    print(json.runtimeType);
    return LoginResponseModel(
      success: json['success'] ,
      statusCode: json['statusCode'],
      code: json['code'],
      message: json['message'] ,
      data: Data.fromJson(json['data'])
    );
  }

}

class Data
{
  String token;
  int id;
  String email;
  String nicename;
  String firstName; 
  String lastName;
  String displayName;

  Data({
    required this.id, 
    required this.email, 
    required this.nicename, 
    required this.firstName, 
    required this.lastName, 
    required this.displayName, 
    required this.token
    });
  
factory Data.fromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'], 
    email: json['email'], 
    nicename: json['nicename'], 
    firstName: json['firstName'], 
    lastName: json['lastName'], 
    displayName: json['displayName'],
    token: json['token'],
  );
}

}