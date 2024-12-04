import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/color_style.dart';
import '../../../../widgets/button_splash.dart';

class BookingDetailView extends GetView {
  const BookingDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = KStyle.t16PTextStyle.copyWith(
      fontWeight: FontWeight.w700,
      color: KStyle.cBlack,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: KStyle.cPrimary,
        title: Text(
          'History Detail',
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
      body: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Booking ID: #9f12940a21',
                  style: KStyle.t14PTextStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    color: KStyle.cBlack,
                  ),
                ),
                Column(
                  children: [
                    Text('Completed', style: KStyle.t14PTextStyle),
                    const SizedBox(height: 8),
                    Text(
                      'Date -1 Jan 24 ',
                      style: KStyle.t14PTextStyle.copyWith(
                        color: KStyle.cBlack,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: KStyle.cF6Grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: KStyle.cWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const DetailRowWidget(
                            title1: 'Hotel',
                            content1: 'Golden Velly',
                            title2: 'Room Type',
                            content2: 'Deluxe'),
                        const SizedBox(height: 30),
                        const DetailRowWidget(
                            title1: 'Date',
                            content1: '1 June 2024 - 3 June 2024',
                            title2: 'Duration',
                            content2: '3 days'),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: titleTextStyle,
                            ),
                            const SizedBox(height: 10),
                            const WeekDayTextRow(
                              text1: '40,000 MMK ',
                              text2: '(Weekdays / per night)',
                            ),
                            const SizedBox(height: 8),
                            const WeekDayTextRow(
                              text1: '50,000 MMK ',
                              text2: '(Weekend / per night)',
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: titleTextStyle,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              '130,000 MMK',
                              style: KStyle.t18PTextStyle.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 36,
                    child: TextButton(
                      onPressed: () {
                        _showCategoryFilterBottomSheet(context);
                      },
                      child: Text(
                        'View Receipt',
                        style: KStyle.t14PTextStyle.copyWith(
                          color: KStyle.cWhite,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showCategoryFilterBottomSheet(BuildContext context) {
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/clover_logo.png',
                width: 50,
                height: 50,
              ),
              const SizedBox(height: 16),
              Text(
                'Select Categorydf ajfaisoddddddddddddddddddddddddddddddddddddddafffffffffffffffffffffffffffffffffffffffk kkkkkkkkkkkkkkkkkkkkkk  kakdkfkw eajoijoia jdfio jwaio fjioaw efiadif aisdjvijasidjv asdnfis oifjiejiofj osmdo aiodjfioawj ioj efiojasdiop jfioajd ifjasoidjf iaj icoj ovnuaguiagojioe fwefio jasdijfioasjdfviojasoijdfiojwej iowv osmdio djfiawd fiajidjf aindifjaifdjisajijfioj dsicjasdiojijoixjiviwhehioweifjsoij',
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 47,
                width: 160,
                child: TextButton(
                  onPressed: () {
                    Get.to('');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'Download Pdf',
                        style:
                            KStyle.t13PTextStyle.copyWith(color: KStyle.cWhite),
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

class WeekDayTextRow extends StatelessWidget {
  const WeekDayTextRow({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text1,
          style: KStyle.t14PTextStyle.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          text2,
          style: KStyle.t14PTextStyle.copyWith(
            color: KStyle.cBlack,
          ),
        ),
      ],
    );
  }
}

class DetailRowWidget extends StatelessWidget {
  const DetailRowWidget({
    super.key,
    required this.title1,
    required this.content1,
    required this.title2,
    required this.content2,
  });

  final String title1;
  final String content1;
  final String title2;
  final String content2;

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = KStyle.t16PTextStyle.copyWith(
      fontWeight: FontWeight.w700,
      color: KStyle.cBlack,
    );
    TextStyle contentTextStyle = KStyle.t14PTextStyle.copyWith(
      color: KStyle.cBlack,
    );
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: titleTextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                content1,
                style: contentTextStyle,
              )
            ],
          ),
        ),
        SizedBox(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title2,
                  style: titleTextStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  content2,
                  style: contentTextStyle,
                )
              ],
            ))
      ],
    );
  }
}
