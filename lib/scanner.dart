import 'package:event_booking_app/utils/utils.dart';
import 'package:flutter/material.dart';

class ScanningScreen extends StatefulWidget {
  const ScanningScreen({super.key});

  @override
  State<ScanningScreen> createState() => _ScanningScreenState();
}

class _ScanningScreenState extends State<ScanningScreen> {
  bool isChecked = false;
  List<Map<String, dynamic>> foundAssets = [
    {
      "title": "236397",
      "description": "WINDOW SHADES",
    },
    {
      "title": "236691",
      "description": "MANAGEMENT TASK CHAIR WITH ARM",
    },
    {
      "title": "218340",
      "description": "SIDE CHAIRS W/ARMS, TYPICAL OFF",
    },
    // Add more items as needed
  ];
  List<Map<String, dynamic>> missingAssets = [
    {
      "title": "236398",
      "description": "WINDOW SHADES",
    },
    {
      "title": "006231",
      "description": "METAL MOBILE PED. PENCIL/BOX/B",
    },
    {
      "title": "212824",
      "description": "INSTRUCTORS DESK 1600X800MM WI",
    },
    {
      "title": "240359",
      "description": "SIDE CHAIRS W/ARMS, TYPICAL OFF",
    },
    {
      "title": "028689",
      "description": "MOBILE CADDY(K CADDY - MEDIUM)",
    },
    {
      "title": "255380",
      "description": "HP ELITEDESK 800 G1 TOWER, BUSI",
    },
    // Add more items as needed
  ];
  List<bool> missingAssetsCheckboxes =[];
  List<bool> foundAssetsCheckboxes = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    missingAssetsCheckboxes= List.generate(missingAssets.length, (index) => false);
    foundAssetsCheckboxes= List.generate(foundAssets.length, (index) => false);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height:30 ,
                ),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Asset Number',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 80,
                        color: Colors.blueAccent,
                        child: Center(
                          child: myText(text: 'Scan', color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height:10 ,
                ),
               Center(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     myText(text: 'Assets Missing'),
                     SizedBox(
                       height:10 ,
                     ),
                     Container(
                       height: 400,
                       width: 300,
                       decoration:
                       BoxDecoration(color: Color(0xffFE8081)),
                       child: ListView.builder(
                           itemCount: missingAssets.length,
                           itemBuilder: (context, index) {
                             final items=missingAssets[index];
                             return Column(
                               children: [
                                 Row(
                                   children: [
                                     Checkbox(
                                         value: missingAssetsCheckboxes[index],
                                         onChanged: (val) {
                                           missingAssetsCheckboxes[index] = val!;
                                           setState(() {

                                           });
                                         }),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(text: items['title']),
                                         myText(text: items['description']),
                                       ],
                                     ),
                                   ],
                                 ),
                                 Divider(
                                   color: Colors.black,
                                 )
                               ],
                             );
                           }),
                     ),
                   ],
                 ),
               ),

                SizedBox(
                  height:10 ,
                ),
               Center(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     myText(text: 'Assets Found'),
                     SizedBox(
                       height:10 ,
                     ),
                     Container(
                       height: 190,
                       width: 300,
                       decoration: BoxDecoration
                         (color: Color(0xff8CF2CB)),
                       child: ListView.builder(
                           itemCount: foundAssets.length,
                           itemBuilder: (context, index) {
                             final items=foundAssets[index];
                             return Column(
                               children: [
                                 Row(
                                   children: [
                                     Checkbox(
                                         value: foundAssetsCheckboxes[index],
                                         onChanged: (val) {
                                           setState(() {
                                             foundAssetsCheckboxes[index] = val!;
                                           });
                                         }),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(text: items['title']),
                                         myText(text: items['description']),
                                       ],
                                     ),
                                   ],
                                 ),
                                 Divider(
                                   color: Colors.black,
                                 )
                               ],
                             );
                           }),
                     ),
                   ],
                 ),
               )
              ],
            )),
      ),
    );
  }
}
