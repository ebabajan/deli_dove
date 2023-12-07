import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:deli_dove/view/menu/delivered/preparingorder_screen.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:pinput/pinput.dart';

import '../../../utils/allimports/allimports.dart';

class ChoosePaymentScreen extends StatefulWidget {
  const ChoosePaymentScreen({super.key});

  @override
  State<ChoosePaymentScreen> createState() => _ChoosePaymentScreenState();
}

class _ChoosePaymentScreenState extends State<ChoosePaymentScreen> {
  bool? ischecked = false;
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _showModalBottomSheet(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        )),
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.6,
          maxChildSize: 1.0,
          minChildSize: 0.32,
          expand: false,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    height: 550,
                    width: w,
                    child: Column(
                      children: [
                        CreditCardWidget(
                          cardBgColor: appcolors,
                          cardNumber: cardNumber,
                          expiryDate: expiryDate,
                          cardHolderName: cardHolderName,
                          cvvCode: cvvCode,
                          showBackView: isCvvFocused,
                          obscureCardNumber: true,
                          obscureCardCvv: true,
                          onCreditCardWidgetChange:
                              (CreditCardBrand creditCardBrand) {},
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CreditCardForm(
                                  cardNumber: cardNumber,
                                  expiryDate: expiryDate,
                                  cardHolderName: cardHolderName,
                                  cvvCode: cvvCode,
                                  onCreditCardModelChange:
                                      onCreditCardModelChange,
                                  themeColor: appcolors,
                                  formKey: formKey,
                                  cardNumberDecoration: InputDecoration(
                                    labelText: 'Number',
                                    hintText: 'XXXX XXXX XXXX XXXX',
                                    hintStyle: TextStyle(color: Colors.grey.shade400),
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: appcolors,width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: Colors.black12,width: 2.0),
                                    ),
                                  ),
                                  expiryDateDecoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey.shade400),
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: appcolors,width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: Colors.black12,width: 2.0),
                                    ),
                                    labelText: 'Expired Date',
                                    hintText: 'XX/XX',
                                  ),
                                  cvvCodeDecoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.grey.shade400),
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: appcolors,width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: Colors.black12,width: 2.0),
                                    ),
                                    labelText: 'CVV',
                                    hintText: 'XXX',
                                  ),
                                  cardHolderDecoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.grey.shade400),
                                    labelStyle: TextStyle(color: Colors.black),
                                    focusedBorder:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: appcolors,width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: BorderSide(color: Colors.black12,width: 2.0),
                                    ),
                                    labelText: 'Name / Card',
                                    hintText: "Ali Khan"
                                  ),
                                ),
                                ElevatedButtonWidget(
                                  buttonBackgroundColor: appcolors,
                                  buttonHeight: 50,
                                  buttonborderRadius: 10,
                                  buttonWidth: 350,
                                  onPressed: () {
                                      AwesomeNotifications().createNotification(
                                          content: NotificationContent(
                                              id: 10,
                                              channelKey: 'delidove_channel',
                                            title: 'Payment Done',
                                            body: 'Payment method is completed Successfully'
                                          )
                                      );
                                    Get.to(PreparingOrderScreen());
                                  },
                                  child: Text(
                                    "Add Card",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
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
              },
            ));
  }

  void _showModalBottom(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            )),
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.55,
          maxChildSize: 1.0,
          minChildSize: 0.32,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                height: 550,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(),
                        Text("Edit",style: TextStyle(color: appcolors,fontSize: 18,fontWeight: FontWeight.bold),),
                        Icon(Icons.close)
                    ],),
                      SizedBox(height: 50,),
                      TextFormFieldWgt(hintText: "Enter Full Name", labelText: 'Full Name',),
                      SizedBox(height: 12,),
                      TextFormFieldWgt(hintText: "Enter Phone Number", labelText: 'Phone Number',),
                      SizedBox(height: 12,),
                      TextFormFieldWgt(hintText: "Enter Email Address", labelText: 'Email Address',),
                      SizedBox(height: 30,),
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 50,
                        buttonborderRadius: 10,
                        buttonWidth: 350,
                        onPressed: () {

                        },
                        child:  Text("Save",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  void _showModal(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            )),
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.4,
          maxChildSize: 1.0,
          minChildSize: 0.3,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Container(
                height: 550,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Text("OTP",style: TextStyle(color: appcolors,fontSize: 18,fontWeight: FontWeight.bold),),
                          Icon(Icons.close)
                        ],),
                      SizedBox(height: 50,),
                      Text("A verification code was sent to your number",style: TextStyle(fontSize: 16,color: Colors.grey),),
                      SizedBox(height: 20,),
                      Pinput(
                        length: 4,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {

                        },
                        defaultPinTheme: PinTheme(
                          height: 50.0,
                          width: 50.0,
                          textStyle: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black.withOpacity(0.5),
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 50,
                        buttonborderRadius: 10,
                        buttonWidth: 350,
                        onPressed: () {

                        },
                        child:  Text("Verify",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((value) {
      if(!value){
        AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
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
            ListView(
              children: [
                SizedBox(
                  height: 140,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 110,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: appcolors,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "User Details",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                          onTap:(){
                                            _showModalBottom(context);
                                          },
                                          child: Image.asset("assets/images/pencil.png",height: 20,width: 20,))
                                    ],
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "First Name  Second Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: appcolors,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "202 0000 0000",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "customer12@gmail.com",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 190,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: appcolors,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Delivery Address",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset("assets/images/pencil.png",height: 20,width: 20,)
                                    ],
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset("assets/images/gglmap.png"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Edgware Road, NW9 6NB",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: appcolors,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "London",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 300,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/payment.png",height: 28,width: 28,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Payment Method",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                          onTap: (){
                                            _showModal(context);
                                          },
                                          child: Image.asset("assets/images/pencil.png",height: 20,width: 20,))
                                    ],
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/cash.png",height: 25,width: 25,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Cash on delivery",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Expanded(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              shape: CircleBorder(),
                                              value: ischecked,
                                              activeColor: appcolors,
                                              onChanged: (value) {
                                                setState(() {
                                                  ischecked = value;
                                                });
                                              }),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/paypal-icon.png",height: 25,width: 25,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Paypal",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Expanded(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              shape: CircleBorder(),
                                              value: ischecked,
                                              activeColor: appcolors,
                                              onChanged: (value) {
                                                setState(() {
                                                  ischecked = value;
                                                });
                                              }),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/mastercar-icon.png",height: 25,width: 25,),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "MasterCard",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Expanded(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              shape: CircleBorder(),
                                              value: ischecked,
                                              activeColor: appcolors,
                                              onChanged: (value) {
                                                setState(() {
                                                  ischecked = value;
                                                });
                                              }),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                width: w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 5.0,
                                      )
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/visa.jpg",
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Visa",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Expanded(
                                          child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                              shape: CircleBorder(),
                                              value: ischecked,
                                              activeColor: appcolors,
                                              onChanged: (value) {
                                                setState(() {
                                                  ischecked = value;
                                                });
                                              }),
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 250,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5.0,
                              )
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/images/bill.png",height: 25,width: 25,),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Order Summary",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Expanded(
                                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Order no #033344",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3x White Flower Vase",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "£ 3.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3x White Flower Vase",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "£ 3.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3x White Flower Vase",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    "£ 3.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "£ 15.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "£ 3.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tax",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    "£ 3.00",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButtonWidget(
                        buttonBackgroundColor: appcolors,
                        buttonHeight: 50,
                        buttonborderRadius: 10,
                        buttonWidth: 350,
                        onPressed: () {
                          _showModalBottomSheet(context);
                          // Get.to(PreparingOrderScreen());
                        },
                        child: Text(
                          "Place Order",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
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
                          "Cart",
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
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Cart",style: TextStyle(color: appcolors,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: appcolors,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Checkout",style: TextStyle(color: appcolors,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: appcolors,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Delivery",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(height: 5,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
