import 'package:cupertino_range_slider_improved/cupertino_range_slider.dart';
import 'package:event_booking_app/component/button_component.dart';
import 'package:event_booking_app/component/day_component.dart';
import 'package:event_booking_app/component/text_widget.dart';
import 'package:event_booking_app/controller/day_controller.dart';
import 'package:event_booking_app/controller/range_controller.dart';
import 'package:event_booking_app/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showBottom(context);
      },
    );
  }

}

String datePick = 'Choose from calender';
DayController dayController = Get.put(DayController());
RangeController rangeController=Get.put(RangeController());
CalenderController calenderController=Get.put(CalenderController());
void showBottom(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
    builder: (BuildContext context) {
      // You can adjust the height by wrapping your content
      // in a Container with a fixed height.
      return Container(
        height: 500,

        margin: const EdgeInsets.only(left: 10, top: 20,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 30,
                child: Divider(
                  thickness: 5,
                  color: bColor.withOpacity(0.5),
                ),
              ),
            ),
            const Text(
              "Filter",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Time & Date",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                      dayController.dayNames.length,
                      (index) => DayComponent(dayController.dayNames[index],
                          index == dayController.selectedIndex.value,
                          onpressed: () =>
                              dayController.changeIndex(index))),
                )),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                selectDatePicker(context);
                // selectTimePicker(context);
              },
              child: Container(
                height: 42,
                width: 220,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: bColor.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.calendar_month,
                        color: primaryColor,
                      ),
                      Text(
                        calenderController.title.value,
                        style: TextStyle(color: bColor.withOpacity(0.5)),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Location",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 60,
                width: 334,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: bColor.withOpacity(0.2),
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.location_on_outlined,color: primaryColor,),
                      myText(text: 'New Yourk,USA',size: 20),
                      const Icon(Icons.arrow_forward_ios_sharp,color: primaryColor,)
                    ],
                  ),
                ),

              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select price range",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$20-\$120",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: primaryColor),
                ),

              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Obx(() => CupertinoRangeSlider(
                minValue: rangeController.minValue.value,
                maxValue: rangeController.maxValue.value,
                min: rangeController.min.value,
                max: rangeController.max.value,
                onMinChanged: (value){
                  rangeController.onChangemin(value);
                },
                onMaxChanged: (value){
                  rangeController.onChangemax(value);
                },

              ),)
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 58,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: bColor.withOpacity(0.5)
                    ),

                  ),
                  child: Center(
                    child: myText(text: 'RESET'),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 58,
                  width: 130,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),


                  ),
                  child: Center(
                    child: myText(text: 'APPLY',color: wColor),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    },
  );
}

void selectDatePicker(BuildContext context) {
  showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025)).then((value){

  });
}

void selectTimePicker(BuildContext context) {
  showTimePicker(context: context, initialTime: TimeOfDay.now());
}
