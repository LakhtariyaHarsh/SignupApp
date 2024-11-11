import 'package:flutter/material.dart';
import 'view_more.dart';

// ignore: must_be_immutable
class ResultAndLatestJobsSection extends StatelessWidget {
  ResultAndLatestJobsSection({super.key});

  var resultData = [
    "Supreme Court Junior Court Attendant Final Result 2024",
    "UPSC NDA I 2024 Final Result",
    "SSC CPO SI Paper I Marks 2024",
    "National Insurance NICL AO Final Result 2024",
    "UPSC CDS I 2024 Final Result"
  ];

  var latestJobsData = [
    "National Insurance NICL Assistant Online Form 2024",
    "ITBP SI, HC, Constable Online Form 2024",
    "MPPGCL Assistant Engineer AE Online Form 2024",
    "PGCIL Diploma Trainee JOT, AT Online Form 2024",
    "CTET December 2024 Correction / Edit Form",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Result Column
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffaa183d),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: const Center(
                        child: Text(
                          "Latest Jobs",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(right: 5, left: 2),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: resultData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  EdgeInsets.zero, // Removes default padding
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 9,
                                    color: Color(0xffaa183d),
                                  ),
                                  const SizedBox(
                                      width:
                                          5), // Adjust this width to control the gap
                                  Expanded(
                                    child: Text(
                                      latestJobsData[index],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: Color(0xffaa183d),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewMore();
                          }));
                        },
                        child: const Text(
                          "View More",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Latest Jobs Column
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 2, right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3c6626),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: const Center(
                        child: Text(
                          "Result",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(left: 2, right: 5),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: resultData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  EdgeInsets.zero, // Removes default padding
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 9,
                                    color: Color(0xff3c6626),
                                  ),
                                  const SizedBox(
                                      width:
                                          5), // Adjust this width to control the gap
                                  Expanded(
                                    child: Text(
                                      resultData[index],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: Color(0xffaa183d),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewMore();
                          }));
                        },
                        child: const Text(
                          "View More",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 20,
        ),
        // second dynamic data
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Admit Card Column
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff3c6626),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: const Center(
                        child: Text(
                          "Admit Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(left: 2, right: 5),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: resultData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  EdgeInsets.zero, // Removes default padding
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 9,
                                    color: Color(0xff3c6626),
                                  ),
                                  const SizedBox(
                                      width:
                                          5), // Adjust this width to control the gap
                                  Expanded(
                                    child: Text(
                                      resultData[index],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: Color(0xffaa183d),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewMore();
                          }));
                        },
                        child: const Text(
                          "View More",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Admission Column
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 2 , right: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffaa183d),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      child: const Center(
                        child: Text(
                          "Admission",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: const EdgeInsets.only(left :2,right: 5),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: resultData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  EdgeInsets.zero, // Removes default padding
                              title: Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 9,
                                    color: Color(0xffaa183d),
                                  ),
                                  const SizedBox(
                                      width:
                                          5), // Adjust this width to control the gap
                                  Expanded(
                                    child: Text(
                                      latestJobsData[index],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: Color(0xffaa183d),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewMore();
                          }));
                        },
                        child: const Text(
                          "View More",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
