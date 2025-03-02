
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/common/page_transitons/page_trans.dart';
import 'package:spotify/features/login/screen/otp_screen.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var value = '+91' ;
  final _phoneController = TextEditingController() ;
  bool _isValidPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAll(RegExp(r'\D'), '').length == 10 || phoneNumber.replaceAll(RegExp(r'\D'), '').length == 0 ;
  }
  Future<void> saveResendTokenToSharedPreferences(int? resendToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('resendToken', resendToken ?? 0);
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.sizeOf(context).height);
    print(MediaQuery.sizeOf(context).width);

    return  Scaffold(
      // backgroundColor: AppColor.primary,
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/spotify.jpg',height: 350,fit: BoxFit.cover,),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(text:  TextSpan(text: 'Sign Up \n',style: TextStyle(fontSize: 50 ,fontWeight: FontWeight.bold,color: Colors.black),children: [
                    TextSpan(text: 'Enter your mobile number to login',style : TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
                  ])),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  // Country Code Dropdown
                  DropdownButton<String>(

                    elevation: 5,
                    value: value,
                    icon: Icon(Icons.expand_more),
                    alignment: Alignment.center,
                    onChanged: (String? newValue) {
                      setState(() {
                        value = newValue.toString() ;
                      });
                    },
                    items: <String>['+1', '+91', '+44', '+81', '+86']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        alignment: Alignment.center,

                        value: value,
                        child: Container(alignment: Alignment.center,child: Text(value)),
                      );
                    }).toList(),
                  ),
                  // Phone Number Input
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          border: const OutlineInputBorder(),
                          errorText: _isValidPhoneNumber(_phoneController.text)
                              ? null
                              : 'Invalid phone number',
                        ),
                        style: TextStyle(
                          color:
                          _isValidPhoneNumber(_phoneController.text) ? Colors.black : Colors.red,
                        ),
                        onChanged: (value) {
                          // Update the state when the text changes to trigger the UI update
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  // Submit Button

                ],
              ),
            ),
            ElevatedButton(onPressed: ()async{
              String countryCode = value ; // Get the selected country code
              String phoneNumber = _phoneController.text.trim();
              String fullNumber = '$countryCode$phoneNumber';
              print('Full Number: $fullNumber');
              if(_phoneController.text.length == 10){
                await  FirebaseAuth.instance.verifyPhoneNumber(verificationCompleted: (PhoneAuthCredential credential){}, verificationFailed: (FirebaseAuthException exception){},
                    codeSent: (verificationID,  resendToken)async {
                      print(resendToken.toString() + " asdsadsdsddas") ;
                      await saveResendTokenToSharedPreferences(resendToken).then((value) {
                        Navigator.push(context, createRouteRL(OtpScreen(verificationID: verificationID, phoneNumber: fullNumber)));
                      });
                    }, codeAutoRetrievalTimeout: (id){},phoneNumber: fullNumber);
              }
              else{
                print("error") ;
              }


            }, child: const Text("NEXT"),style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                fixedSize: Size(200, 50),
                shape:  RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25)

                )
            ),),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}