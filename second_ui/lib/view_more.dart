import 'package:flutter/material.dart';
import 'jobinformation.dart';
// import 'package:url_launcher/url_launcher.dart';

class ViewMore extends StatefulWidget {
  const ViewMore({super.key});

  @override
  State<ViewMore> createState() => _ViewMoreState();
}

class _ViewMoreState extends State<ViewMore> {
  // Future<void> _lunchUrl(String url) async {
  //   final Uri uri = Uri.parse(url);
  //   if (!await launchUrl(
  //     uri,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw "can not launch url";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Change Drawer icon color
        ),
        backgroundColor: const Color(0xffaa183d),
        title: Text(
          "Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Color(0xfff3f3f3),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "Bihar BPSC Head Teacher Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "UPPSC Staff Nurse Ayurved Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "New India Assurance NIACL AO Phase | Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "Allahabad High Court Reaserch Associates Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "UPSC Civil Services IAS 2023 Reserve List",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "SBI Clerk 2023 Waiting List",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "Supreme Court of India Juniar Court Attendant Final Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "UPSC NDA | 2024 Final Result",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobinformation())),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "SSC CPO SI Paper | Marks 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                // onTap: () {
                //   _lunchUrl(
                //       "https://www.sarkariresult.com/2024/pm-internship-scheme/");
                // },
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.circle, size: 15),
                    title: Text(
                      "National Insurance NICL AO Final Result 2024",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'jobinformation.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ViewMore extends StatefulWidget {
//   const ViewMore({super.key});

//   @override
//   State<ViewMore> createState() => _ViewMoreState();
// }

// class _ViewMoreState extends State<ViewMore> {

//   Future<void> _lunchUrl(String url) async {
//     final Uri uri = Uri.parse(url);
//     if(!await launchUrl(
//       uri,
//       mode: LaunchMode.externalApplication,
//     )){
//       throw "can not launch url";
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         iconTheme: const IconThemeData(
//           color: Colors.white, // Change Drawer icon color
//         ),
//         backgroundColor: const Color(0xffaa183d),
//         title: Text("Result" ,style: TextStyle(color: Colors.white),),
//       ),
//       body: Container(
//         color: Color(0xfff3f3f3),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 15,),
//               InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                 child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("Bihar BPSC Head Teacher Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                 ),
//               ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("UPPSC Staff Nurse Ayurved Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("New India Assurance NIACL AO Phase | Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("Allahabad High Court Reaserch Associates Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("UPSC Civil Services IAS 2023 Reserve List" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("SBI Clerk 2023 Waiting List" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("Supreme Court of India Juniar Court Attendant Final Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("UPSC NDA | 2024 Final Result" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                InkWell(
//                 onTap: () => Navigator.push(context,MaterialPageRoute(builder:  (context) => Jobinformation())),
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("SSC CPO SI Paper | Marks 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//                GestureDetector(
//                 onTap: () {
//                   _lunchUrl("https://www.sarkariresult.com/2024/pm-internship-scheme/");
//                 },
//                  child: Card(
//                   child: ListTile(leading: Icon(Icons.circle ,size: 15), title: Text("National Insurance NICL AO Final Result 2024" ,style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                                ),
//                ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }