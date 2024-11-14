import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final formKey = GlobalKey<FormState>();
  File? pickedImage;
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset("assets/signup.png"),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const Text(
                  "Enter Your details",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7f50fe)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [ pickedImage != null ?
                          CircleAvatar(
                          radius: 80.0,
                          backgroundImage: FileImage(pickedImage!)
                        )
                        :
                        const CircleAvatar(
                          radius: 80.0,
                          child: Icon(Icons.person, size: 80),
                        ),
                        Positioned(
                            bottom: 10.0,
                            right: 10.0,
                            child: InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: ((builder) => bottomSheet()));
                                },
                                child: const Icon(
                                  Icons.camera_alt,
                                  size: 28,
                                )))
                      ],
                    ),
                  ),
                )
              ],
            ),
            Form(
              // key: formKey,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Apply rounded corners to the Card
                      ),
                      child: TextFormField(
                        // controller: email,
                        decoration: const InputDecoration(
                          border:
                              InputBorder.none, // Removes the default border
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black38, // Adjust opacity here
                          ),
                          suffixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Apply rounded corners to the Card
                      ),
                      child: TextFormField(
                        // controller: name,
                        decoration: const InputDecoration(
                          border:
                              InputBorder.none, // Removes the default border
                          labelText: "Name",
                          labelStyle: TextStyle(
                            color: Colors.black38, // Adjust opacity here
                          ),
                          suffixIcon: Icon(Icons.account_box),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15), // Apply rounded corners to the Card
                      ),
                      child: TextFormField(
                        // controller: dateofbirth,
                        decoration: const InputDecoration(
                          border:
                              InputBorder.none, // Removes the default border
                          labelText: "Select Date of Birth",
                          labelStyle: TextStyle(
                            color: Colors.black38, // Adjust opacity here
                          ),
                          suffixIcon: Icon(Icons.calendar_month),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {},
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xff7f50fe)),
                        ),
                        child: const Text(
                          "Sign Up",
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

  Widget bottomSheet() {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Text(
              "Choose Profile Photo",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  onTap: () {
                    tackPhoto(ImageSource.camera);
                    Navigator.pop(context);
                  },
                  leading: const Icon(Icons.camera),
                  title: const Text('Camera'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ListTile(
                  onTap: () {
                    tackPhoto(ImageSource.gallery);
                    Navigator.pop(context);
                  },
                  leading: const Icon(Icons.image),
                  title: const Text('Gallery'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  tackPhoto(ImageSource source) async {
    try {
      final photo = await ImagePicker().pickImage(
        source: source,
      );
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    } catch (ex) {
      log(ex.toString() as num);
    }
  }
}
