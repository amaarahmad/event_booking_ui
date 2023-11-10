import 'package:event_booking_app/collapse/dashboard_screen.dart';
import 'package:event_booking_app/collapse/menu_white_screen.dart';
import 'package:flutter/material.dart';
class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> with SingleTickerProviderStateMixin{
  bool isCollapsed=true;
  double? screenWidth,screenHeight;
  final Duration duration=const Duration(milliseconds: 300);

  late AnimationController _controller;
  late Animation<double>_scaleAnimation;

  @override
  void initState() {
    // TODO: implement initState
    _controller=AnimationController(vsync: this,duration: duration);
    _scaleAnimation=Tween<double>(begin: 1,end: 0.6).animate(_controller);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    screenHeight=size.height;
    screenWidth=size.width;
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Stack(
          children: [

            menu(context),
            dashBoard(context)

          ],
        ),
      ),
    );
  }

  Widget menu(context){
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text('list one',style: TextStyle(fontSize: 20),),
           Text('list one',style: TextStyle(fontSize: 20),),
           Text('list one',style: TextStyle(fontSize: 20),),
           Text('list one',style: TextStyle(fontSize: 20),),
           Text('list one',style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
  Widget dashBoard(context){

    return AnimatedPositioned(
      top:0,
      bottom:0,
      left: isCollapsed?0:0.1*screenWidth!,
      right:isCollapsed?0: -0.6*screenWidth!,
      duration: duration,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          elevation: 8,
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      if(isCollapsed)
                        _controller.forward();
                      else
                        _controller.reverse();
                      isCollapsed=!isCollapsed;
                    });
                  }, icon: Icon(Icons.menu)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
