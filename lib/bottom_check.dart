// import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
// import 'package:event_booking_app/view_screen/events_detail_screen.dart';
// import 'package:event_booking_app/view_screen/home_screen.dart';
//
// import 'package:flutter/material.dart';
// import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
//
// const List<TabItem> items = [
//   TabItem(
//     icon: Icons.home,
//     // title: 'Home',
//   ),
//   TabItem(
//     icon: Icons.search_sharp,
//     title: 'Shop',
//   ),
//   TabItem(
//     icon: Icons.favorite_border,
//     title: 'Wishlist',
//   ),
//   TabItem(
//     icon: Icons.shopping_cart_outlined,
//     title: 'Cart',
//   ),
//   TabItem(
//     icon: Icons.account_box,
//     title: 'profile',
//   ),
// ];
//
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int visit = 0;
//   double height = 30;
//   Color colorSelect =const Color(0XFF0686F8);
//   Color color = const Color(0XFF7AC0FF);
//   Color color2 = const Color(0XFF96B1FD);
//   Color bgColor = const  Color(0XFF1752FE);
//
//   List<Widget>screens=[
//     HomeScreen(),
//     EventsDetailScreen(),
//     HomeScreen(),
//     HomeScreen(),
//     HomeScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: screens.elementAt(visit),
//       bottomNavigationBar:BottomBarInspiredOutside(
//         items: items,
//         backgroundColor: bgColor,
//         color: color2,
//         colorSelected: Colors.white,
//         indexSelected: visit,
//         onTap: (int index) => setState(() {
//           visit = index;
//         }),
//         top: -28,
//         animated: false,
//         itemStyle: ItemStyle.circle,
//         chipStyle:const ChipStyle(notchSmoothness: NotchSmoothness.smoothEdge),
//       ),
//     );
//   }
// }