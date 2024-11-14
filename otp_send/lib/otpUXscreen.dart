import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'homescreen.dart';

class OtpVerification extends StatefulWidget {
  final String verificationid;
  const OtpVerification({super.key, required this.verificationid});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: const Color(0xfff9f9f9),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Centered Column content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/register.png"),
                ),
              ],
            ),

            const Column(
              children: [
                Text(
                  "Registration",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Enter the 6-digit code sent to \n your Mobile Phone number",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Pinput(
                        length: 6,
                        autofocus: true,
                        onChanged: (value) {
                          setState(() {
                            code = value;
                          });
                          print('$value changed');
                        },
                        onCompleted: (value) {
                          setState(() {
                            code = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (code.length == 6) { // Verify that code has 6 digits
                          try {
                            // Create the phone auth credential using the verification ID and the code entered
                            PhoneAuthCredential credential =
                                PhoneAuthProvider.credential(
                                    verificationId: widget.verificationid,
                                    smsCode: code);

                            // Sign in with the credential
                            await FirebaseAuth.instance.signInWithCredential(credential);

                            // Handle navigation after successful sign-in
                            Navigator.push(
                              // ignore: use_build_context_synchronously
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Homescreen(), // Navigate to a success screen
                              ),
                            );
                          } catch (e) {
                            // Handle errors, such as invalid code
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid code, please try again.')),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Please enter the full 6-digit code.')),
                          );
                        }
                      },
                      style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xff7f50fe)), // Background color
                            ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
