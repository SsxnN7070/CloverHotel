import 'package:clover_hotel_clone/app/modules/hotel/views/confirmPage_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class RoomDetailView extends GetView {
  const RoomDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    TextStyle t14Style = KStyle.t14PTextStyle.copyWith(
      color: KStyle.c95Grey,
    );
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'Detail',
          style: KStyle.t18PTextStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: KStyle.cWhite,
          ),
        ),
        centerTitle: true,
        leading: SplashButton(
          iconSize: 12,
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            'assets/icons/circle_back.svg',
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 24),
          SizedBox(
            height: 177,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 177,
                  width: 365,
                  color: KStyle.cGrey,
                );
              },
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Delux',
                      style: KStyle.t20PTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Clover Street Royal Lake',
                      style: KStyle.t16PTextStyle.copyWith(
                        color: KStyle.c95Grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Text(
                      'Weekend',
                      style: t14Style,
                    ),
                    const SizedBox(width: 19),
                    Text(
                      '50,000 MMK',
                      style: KStyle.t18PTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: KStyle.cPrimary,
                      ),
                    ),
                    const SizedBox(width: 19),
                    Text(
                      '4 Points',
                      style: KStyle.t18PTextStyle.copyWith(
                        color: KStyle.cAccent,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      'Week days',
                      style: t14Style,
                    ),
                    const SizedBox(width: 19),
                    Text(
                      '40,000 MMK',
                      style: KStyle.t18PTextStyle.copyWith(
                        fontWeight: FontWeight.w700,
                        color: KStyle.cAccent,
                      ),
                    ),
                    const SizedBox(width: 19),
                    Text(
                      '1 Points',
                      style: KStyle.t18PTextStyle.copyWith(
                        color: KStyle.cAccent,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'We don’t give points in holidays',
                  style: KStyle.t12PTextStyle.copyWith(
                    color: KStyle.c95Grey,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Features',
                  style: KStyle.t16PTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: KStyle.cBlack,
                  ),
                ),
                const SizedBox(height: 15),
                IconTextRow(
                    t14Style: t14Style,
                    iconPath: 'assets/icons/hotel_bed.svg',
                    text: '2 Single Beds'),
                const SizedBox(height: 15),
                IconTextRow(
                    t14Style: t14Style,
                    iconPath: 'assets/icons/home_smile.svg',
                    text: 'Room size: 344ft'),
                const SizedBox(height: 15),
                IconTextRow(
                  t14Style: t14Style,
                  text: 'City view',
                  iconPath: 'assets/icons/building.svg',
                ),
                const SizedBox(height: 15),
                IconTextRow(
                  t14Style: t14Style,
                  text: 'Non-smoking',
                  iconPath: 'assets/icons/smoking_ban.svg',
                ),
                const SizedBox(height: 15),
                IconTextRow(
                  t14Style: t14Style,
                  text: 'Shower',
                  iconPath: 'assets/icons/shower.svg',
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Text(
                      'Staycation: ',
                      style:
                          KStyle.t16PTextStyle.copyWith(color: KStyle.cBlack),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: KStyle.cPrimary),
                      child: Text(
                        '2pm - 9 pm',
                        style:
                            KStyle.t16PTextStyle.copyWith(color: KStyle.cWhite),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Daycation: ',
                      style:
                          KStyle.t16PTextStyle.copyWith(color: KStyle.cBlack),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: KStyle.cAccent),
                      child: Text(
                        '9 am -  5pm',
                        style:
                            KStyle.t16PTextStyle.copyWith(color: KStyle.cWhite),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Description',
                  style: KStyle.t18PTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: KStyle.cBlack,
                  ),
                ),
                Text(
                  'Helodfoaejfoasdvn al djafiojaowienvoaevoniiiiiiiiiiiiiiiiieeiiiiiiiii jdkmvvvvvvvvvvvvvvvvvvvv',
                  style: KStyle.t16PTextStyle.copyWith(
                    fontWeight: FontWeight.w200,
                    color: KStyle.cGrey,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 47,
                  width: size.width,
                  child: TextButton(
                    onPressed: () {
                      // Get.to(() => const ReservationSuccessView());
                      _showBottomSheet(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/phone.svg',
                          colorFilter:
                              ColorFilter.mode(KStyle.cWhite, BlendMode.srcIn),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Book Now',
                          style: KStyle.t18PTextStyle.copyWith(
                            color: KStyle.cWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    TextStyle titleStyle = KStyle.t16PTextStyle.copyWith(
      color: KStyle.cBlack,
      fontWeight: FontWeight.w700,
    );
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(
              16), // Reduced padding for a more compact design
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                selectionMode: DateRangePickerSelectionMode.single,
                startRangeSelectionColor: KStyle.cRed,
                endRangeSelectionColor: KStyle.cRed,
              ),
              SizedBox(
                height: 47,
                width: MediaQuery.sizeOf(context).width,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const ConfirmpageView());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 12),
                      Text(
                        'Done',
                        style: KStyle.t18PTextStyle.copyWith(
                          color: KStyle.cWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class IconTextRow extends StatelessWidget {
  const IconTextRow({
    super.key,
    required this.t14Style,
    required this.iconPath,
    required this.text,
  });

  final String iconPath;
  final String text;
  final TextStyle t14Style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(iconPath),
        const SizedBox(width: 8),
        Text(text, style: t14Style),
      ],
    );
  }
}
