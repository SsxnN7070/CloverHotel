import 'package:clover_hotel_clone/app/modules/hotel/controllers/hotel_controller.dart';
import 'package:clover_hotel_clone/app/modules/hotel/views/searched_rooms_view.dart';
import 'package:clover_hotel_clone/constants/color_style.dart';
import 'package:clover_hotel_clone/widgets/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SearchHotelView extends GetView<HotelController> {
  const SearchHotelView({super.key});
  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = KStyle.t16PTextStyle.copyWith(
      color: KStyle.cBlack,
      fontWeight: FontWeight.w700,
    );
    TextStyle radioStyle = KStyle.t16PTextStyle.copyWith(
      color: KStyle.cBlack,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cWhite,
        title: Text(
          'Filter',
          style: KStyle.t18PTextStyle.copyWith(
            color: KStyle.cBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          SplashButton(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return SizedBox(
                        width: double.infinity,
                        child: DropdownButton<String>(
                          isExpanded: true,
                          hint: const Text("Select Hotel"),
                          items: controller.hotels.map((hotel) {
                            return DropdownMenuItem<String>(
                              value: hotel['name'],
                              child: Text(hotel['name']),
                            );
                          }).toList(),
                          onChanged: (value) {},
                        ),
                      );
                    }),
                    const SizedBox(height: 20),
                    Text(
                      'Select Date',
                      style: titleStyle,
                    ),
                    SfDateRangePicker(
                      // headerHeight: 0,
                      headerStyle: DateRangePickerHeaderStyle(
                        textAlign: TextAlign.center,
                        textStyle: KStyle.t14PTextStyle.copyWith(
                          color: KStyle.c95Grey,
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      backgroundColor: Colors.transparent,
                      selectionColor: KStyle.cPrimary,
                      todayHighlightColor: KStyle.cPrimary,
                      minDate: DateTime.now(),
                      selectionShape: DateRangePickerSelectionShape.rectangle,
                      selectionMode: DateRangePickerSelectionMode.range,
                      startRangeSelectionColor: KStyle.cPrimary,
                      endRangeSelectionColor: KStyle.cPrimary,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Room Type',
                      style: titleStyle,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: RadioListTile<String>(
                            dense: true,
                            title: Text(
                              'Deluxe',
                              style: radioStyle,
                            ),
                            value: 'Deluxe',
                            groupValue: controller.selectedRoom.value,
                            onChanged: controller.radioOnChange,
                          ),
                        ),
                        Flexible(
                          child: RadioListTile<String>(
                            dense: true,
                            title: Text(
                              'Deluxe River View',
                              style: radioStyle,
                            ),
                            value: 'Deluxe River View',
                            groupValue: controller.selectedRoom.value,
                            onChanged: controller.radioOnChange,
                          ),
                        ),
                      ],
                    ),
                    RadioListTile<String>(
                      title: Text(
                        'Superior',
                        style: radioStyle,
                      ),
                      value: 'Superior',
                      groupValue: controller.selectedRoom.value,
                      onChanged: controller.radioOnChange,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 47,
                  width: 120,
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => SearchedRoomsView());
                      },
                      child: Text(
                        'Search',
                        style: KStyle.t16PTextStyle.copyWith(
                          color: KStyle.cWhite,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
