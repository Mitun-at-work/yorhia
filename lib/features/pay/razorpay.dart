import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PaymentGateWay extends StatefulWidget {
  const PaymentGateWay({super.key});

  @override
  State<PaymentGateWay> createState() => _PaymentGateWayState();
}

class _PaymentGateWayState extends State<PaymentGateWay> {
  
  Razorpay? _razorpay;

  void _handlerPaymentSuccess(PaymentSuccessResponse response){
    Fluttertoast.showToast(msg: "Success Payment: ${response.paymentId}", timeInSecForIosWeb: 4);
  }

  void _handlerPaymentError(PaymentFailureResponse response){
    Fluttertoast.showToast(msg: "Error Here: ${response.code} - ${response.message}", timeInSecForIosWeb: 4);
  }

  void _handlerExternalWallet(ExternalWalletResponse response){
    Fluttertoast.showToast(msg: "External Wallet is: ${response.walletName}");
  }

  @override
  void initState(){
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlerPaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlerPaymentError);
    _razorpay?.on(Razorpay.EVENT_EXTERNAL_WALLET, _handlerExternalWallet);
  }
  
  void makePayment() async {
    var options = {
      'key': '<YOUR_KEY_HERE>',
      'amount': 100,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
  'prefill': {
    'contact': '8778807571',
    'email': 'mguruprasanth2004@gmail.com'
  },
  };
  

    try{
      _razorpay?.open(options);
    } catch(e) {
      debugPrint(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              makePayment();
            }, child: Text("Pay"))
          ],
        ),
      ),
    );
  }
}
