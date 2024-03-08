import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 85,
                    width: 412,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icons/menu.png',
                          height: 28,
                          width: 28,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Project Name',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 23,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0x3375C2F6),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero),
                              child: Text('free',
                                  style: themeData.textTheme.bodyText1!
                                      .copyWith(
                                          color: const Color(0xFF75C2F6)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Image.asset(
                            'assets/images/icons/more.png',
                            height: 28,
                            width: 28,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Text(
                    'Timer',
                    style: themeData.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('You have 18 tasks to do',
                          style: themeData.textTheme.caption!),
                      Text('Show Tasks',
                          style: themeData.textTheme.caption!
                              .copyWith(color: Color(0xFF75C2F6)))
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    child: Stack(children: [
                      Positioned(
                        bottom: 17,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF2D3542),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/icons/center_focus_strong.png',
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 253,
                            ),
                            Container(
                              height: 55,
                              width: 55,
                              decoration: const BoxDecoration(
                                  color: Color(0xFF2D3542),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/icons/center_focus_strong_FILL0.png',
                                  height: 28,
                                  width: 28,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 313,
                          width: 313,
                          decoration: const BoxDecoration(
                              color: Color(0xFF2D3542), shape: BoxShape.circle),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 276,
                                  width: 276,
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(23, 30, 38, 1),
                                      shape: BoxShape.circle),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          'assets/images/icons/(Stroke).png',
                                          height: 260,
                                          width: 260,
                                        ),
                                      ),
                                      Center(
                                        child: Image.asset(
                                          'assets/images/icons/SpecialMargin.png',
                                          height: 257,
                                          width: 257,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Center(
                                            child: Text('00:00:00',
                                                style: GoogleFonts.oswald(
                                                    fontSize: 42,
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xFFEAEAEA))),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          Text('Ready To start?'.toUpperCase(),
                                              style: GoogleFonts.oswald(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFFACBCFF)))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF75C2F6)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          minimumSize: MaterialStateProperty.all(
                              Size(MediaQuery.of(context).size.width, 47))),
                      child: Text(
                        'Start work',
                        style: themeData.textTheme.headline4,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.black45,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 22, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview',
                    style: themeData.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Daily average: 2 hr 38 min',
                        style: themeData.textTheme.caption,
                      ),
                      Text(
                        'Break: %18.3',
                        style: themeData.textTheme.caption,
                      )
                    ],
                  ),
                  Container(
                    width: 450,
                    height: 200,
                    child: BarChart(
                      BarChartData(
                        barTouchData: barTouchData,
                        alignment: BarChartAlignment.spaceAround,
                        gridData: gridData,
                        titlesData: titlesData,
                        borderData: borderData,
                        minY: 0,
                        maxY: 3,
                        barGroups: barGroups,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Divider(
              color: Colors.black45,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Summary',
                    style: themeData.textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 400,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.7,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF2D3542),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Container(
                          width: 188,
                          height: 108,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Today',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          '01',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: Text(
                                          'hr 25 min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const VerticalDivider(
                                thickness: 2,
                                width: 45,
                                color: Color(0xFF2D3542),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 156,
                          height: 108,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Yesterday',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          '08',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Text(
                                          'hr 55 min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Container(
                      width: 400,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.7,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF2D3542),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        child: Container(
                          width: 188,
                          height: 108,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'This week',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          '38',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 14),
                                        child: Text(
                                          'hr 25 min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const VerticalDivider(
                                thickness: 2,
                                width: 48,
                                color: Color(0xFF2D3542),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          width: 156,
                          height: 108,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'This month',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          '37',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Text(
                                          'hr 30 min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 27),
                    child: Container(
                      width: 400,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.8,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF2D3542),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

BarTouchData get barTouchData => BarTouchData(enabled: false);

//
List<BarChartGroupData>? get barGroups => [
      BarChartGroupData(
        barsSpace: 4,
        x: 0, // Sunday
        barRods: [
          BarChartRodData(
            toY: 1.1,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        barsSpace: 2,
        x: 1, // Monday
        barRods: [
          BarChartRodData(
            toY: 1.6,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        barsSpace: 22,
        x: 2, // Tuesday
        barRods: [
          BarChartRodData(
            toY: 0.8,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        barsSpace: 2,
        x: 3, // Wednesday
        barRods: [
          BarChartRodData(
            toY: 2,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4, // Thursday
        barsSpace: 16,
        barRods: [
          BarChartRodData(
            toY: 0.01,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        barsSpace: 2,
        x: 5, // Friday
        barRods: [
          BarChartRodData(
            toY: 1.25,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
      BarChartGroupData(
        barsSpace: 2,
        x: 6, // Saturday
        barRods: [
          BarChartRodData(
            toY: 0.5,
            width: 27,
            color: const Color(0xFFD4ADFC),
            borderRadius: const BorderRadius.only(),
          ),
        ],
      ),
    ];

// Over all border data
FlBorderData get borderData => FlBorderData(
      show: false,
    );

// X and Y axis grid data
FlGridData get gridData => FlGridData(
      show: true,
      drawVerticalLine: false,
      drawHorizontalLine: true,
      horizontalInterval: 1,
      checkToShowHorizontalLine: (value) {
        return true;
      },
    );

// X and Y axis titles data
FlTitlesData get titlesData => FlTitlesData(
    show: true,
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    leftTitles: AxisTitles(
        sideTitles: SideTitles(
            showTitles: false,
            reservedSize: 50,
            interval: 1,
            getTitlesWidget: (double value, TitleMeta meta) {
              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 10,
                child: Text(
                  getYAxisValues(value),
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black26),
                ),
              );
            })),
    bottomTitles: AxisTitles(
        sideTitles: SideTitles(
      interval: 1,
      reservedSize: 65,
      showTitles: true,
      getTitlesWidget: (double value, TitleMeta meta) {
        return SideTitleWidget(
          axisSide: AxisSide.bottom,
          space: 25,
          child: Text(
            getXAxisValues(value),
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFFD4ADFC)),
          ),
        );
      },
    )));

String getXAxisValues(double value) {
  switch (value.toInt()) {
    case 0:
      return 'Sat\n01:24';
    case 1:
      return 'Sun\n03:01';
    case 2:
      return 'Mon\n00:59';
    case 3:
      return 'Tue\n04:17';
    case 4:
      return 'Wed\n00:00';
    case 5:
      return 'Thu\n02:46';
    case 6:
      return 'Fri\n02:23';
    default:
      return '';
  }
}

String getYAxisValues(double value) {
  switch (value.toInt()) {
    case 0:
      return '';
    case 1:
      return 'Terrible';
    case 2:
      return 'Bad';
    case 3:
      return 'Better';
    case 4:
      return 'Great';
    case 5:
      return 'Amazing';
    default:
      return '';
  }
}
