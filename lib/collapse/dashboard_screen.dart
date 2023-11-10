import 'package:flutter/material.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Column(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu_outlined))
        ],
      ),
    );
  }
}
