import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'otpUXscreen.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();
  bool isLoading = false; // Loading state variable

  @override
  void initState() {
    mobile.text = "+91 ";
    super.initState();
  }

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
                  "Enter your Phone number to verify \n your account",
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),

            Form(
              key: formKey,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 200,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              maxLength: 14,
                              controller: mobile,
                              validator: (val) {
                                if (mobile.text.length != 14) {
                                  return "Please Enter Valid Mobile number";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                counterText: "",
                                border: InputBorder.none,
                                hintText: "Phone",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true; // Start the loader
                            });

                            await FirebaseAuth.instance.verifyPhoneNumber(
                              phoneNumber: mobile.text.toString(),
                              verificationCompleted: (PhoneAuthCredential credential) {
                                setState(() {
                                  isLoading = false; // Stop the loader
                                });
                              },
                              verificationFailed: (ex) {
                                setState(() {
                                  isLoading = false; // Stop the loader on failure
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Verification failed: ${ex.message}")),
                                );
                              },
                              codeSent: (verificationid, resendtoken) {
                                setState(() {
                                  isLoading = false; // Stop the loader when code is sent
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => OtpVerification(verificationid: verificationid)),
                                  ),
                                );
                              },
                              codeAutoRetrievalTimeout: (String verificationid) {
                                setState(() {
                                  isLoading = false; // Stop the loader on timeout
                                });
                              },
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(const Color(0xff7f50fe)),
                        ),
                        child: isLoading
                          ? const CircularProgressIndicator(color: Colors.white) // Show loader if loading
                          : const Text(
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
            ),
          ],
        ),
      ),
    );
  }
}
