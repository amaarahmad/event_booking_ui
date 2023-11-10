import 'dart:ffi';

import 'package:event_booking_app/component/event_tab_component.dart';
import 'package:event_booking_app/controller/events_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class EmptyEventScreen extends StatefulWidget {
  const EmptyEventScreen({super.key});

  @override
  State<EmptyEventScreen> createState() => _EmptyEventScreenState();
}

class _EmptyEventScreenState extends State<EmptyEventScreen> {
  final EventsController eventsController=Get.put(EventsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Column(
        children: [

          Obx(() => Center(
            child: Container(
             height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(eventsController.tabLabels.length,
                        (index) => EventTabComponent(eventsController.tabLabels[index], () =>eventsController.onChangeIndex(index),
                    isSelected: index==eventsController.selectedTabIndex.value)),
              ),
            ),
          )),
          Obx(() => eventsController.tabContent[eventsController.selectedTabIndex.value])
        ],
      ),
    );
  }
}
