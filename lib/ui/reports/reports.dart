import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home.dart';
import 'package:flutter_application_1/ui/reports/reportsweek.dart';

class AllReports extends StatefulWidget {
  const AllReports({super.key});

  @override
  State<AllReports> createState() => _AllReportsState();
}

class _AllReportsState extends State<AllReports> {
  final _size = const Size(110, 110);
  static const int monthtab = 0;
  static const int weektab = 1;
  static const int alltab = 2;
  int selectedTabIndex = monthtab;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
              child: Container(
                width: 412,
                height: 64,
                color: const Color.fromRGBO(23, 30, 38, 1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 16, 16),
                      child: Image.asset(
                        'assets/images/icons/menu.png',
                        height: 28,
                        width: 28,
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Reports',
                      style: Theme.of(context).textTheme.headline6,
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 24, 16),
                      child: Image.asset(
                        'assets/images/icons/add_circle.png',
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 6),
              child: Container(
                width: 363,
                height: 52,
                decoration: ShapeDecoration(
                  color: const Color.fromRGBO(13, 20, 28, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          width: 130,
                          height: 52,
                          decoration: BoxDecoration(
                              color: selectedTabIndex == monthtab
                                  ? const Color.fromRGBO(23, 30, 38, 1)
                                  : const Color.fromRGBO(13, 20, 28, 1),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedTabIndex = monthtab;
                                  });
                                },
                                child: Text(
                                  'Month',
                                  style: themeData.textTheme.bodyText1!
                                      .copyWith(
                                          color: selectedTabIndex == monthtab
                                              ? const Color.fromRGBO(
                                                  117, 194, 246, 1)
                                              : const Color.fromRGBO(
                                                  122, 135, 158, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          width: 130,
                          height: 52,
                          decoration: BoxDecoration(
                              color: selectedTabIndex == weektab
                                  ? const Color.fromRGBO(23, 30, 38, 1)
                                  : const Color.fromRGBO(13, 20, 28, 1),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedTabIndex = weektab;
                                  });
                                },
                                child: Text(
                                  'Week',
                                  style: themeData.textTheme.bodyText1!
                                      .copyWith(
                                          color: selectedTabIndex == weektab
                                              ? const Color.fromRGBO(
                                                  117, 194, 246, 1)
                                              : const Color.fromRGBO(
                                                  122, 135, 158, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          width: 130,
                          height: 52,
                          decoration: BoxDecoration(
                              color: selectedTabIndex == alltab
                                  ? const Color.fromRGBO(23, 30, 38, 1)
                                  : const Color.fromRGBO(13, 20, 28, 1),
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    selectedTabIndex = alltab;
                                  });
                                },
                                child: Text(
                                  'All',
                                  style: themeData.textTheme.bodyText1!
                                      .copyWith(
                                          color: selectedTabIndex == alltab
                                              ? const Color.fromRGBO(
                                                  117, 194, 246, 1)
                                              : const Color.fromRGBO(
                                                  122, 135, 158, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            selectedTabIndex == alltab
                ? Result(size: _size)
                : selectedTabIndex == weektab
                    ? Container()
                    : Column(
                        children: [Rweek(), Result(size: _size)],
                      )
          ],
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    super.key,
    required Size size,
  }) : _size = size;

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
          child: Text(
            'Results',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 19,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                          'Total Time',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/timelapse.png',
                              height: 28,
                              width: 28,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '588 hr 19 min',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
                          'Breaks',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/restaurant.png',
                              height: 28,
                              width: 28,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '23% - 135 min',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                          'Tasks Done',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/task_alt.png',
                              height: 28,
                              width: 28,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 28, 0),
                              child: Text(
                                '104 items',
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
                height: 62,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Income (EUR)',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/icons/euro.png',
                              height: 28,
                              width: 28,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '7,010.574',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 27),
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
        Container(
          width: 412,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 10),
            child: Row(
              children: [
                Expanded(
                    child: Text('Number of working days',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14,
                            ))),
                Text('162 Days',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 14,
                        )),
              ],
            ),
          ),
        ),
        Container(
          width: 412,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 10),
            child: Row(
              children: [
                Expanded(
                    child: Text('Daily average',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14,
                            ))),
                Text('4 hr 52 min',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 14,
                        )),
              ],
            ),
          ),
        ),
        Container(
          width: 412,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
            child: Row(
              children: [
                Expanded(
                    child: Text('Max working hours (Tue, April 26)',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              fontSize: 14,
                            ))),
                Text('9 hr 23 min',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontSize: 14,
                        )),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black45,
          thickness: 3,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 4),
          child: Text(
            'Details',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: 19,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Text(
            'Number of working days recorded: 68',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Text(
            '11 November 2022 - Today',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 24, 18),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: new AnimatedCircularChart(
                      size: _size,
                      initialChartData: <CircularStackEntry>[
                        new CircularStackEntry(
                          <CircularSegmentEntry>[
                            new CircularSegmentEntry(
                              33,
                              Color(0xFFD4ADFC),
                              rankKey: 'completed',
                            ),
                            new CircularSegmentEntry(
                              67,
                              Color(0xFF2D3542),
                              rankKey: 'remaining',
                            ),
                          ],
                          rankKey: 'progress',
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      edgeStyle: SegmentEdgeStyle.round,
                      percentageValues: true,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '3 HR',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '58 MIN',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start at',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10:00 AM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End work',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '17:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Income',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '420.00 EUR',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 24, 18),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: new AnimatedCircularChart(
                      size: _size,
                      initialChartData: <CircularStackEntry>[
                        new CircularStackEntry(
                          <CircularSegmentEntry>[
                            new CircularSegmentEntry(
                              23,
                              Color(0xFFD4ADFC),
                              rankKey: 'completed',
                            ),
                            new CircularSegmentEntry(
                              77,
                              Color(0xFF2D3542),
                              rankKey: 'remaining',
                            ),
                          ],
                          rankKey: 'progress',
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      edgeStyle: SegmentEdgeStyle.round,
                      percentageValues: true,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2 HR',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '50 MIN',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start at',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10:00 AM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End work',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '17:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Income',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '420.00 EUR',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Text(
            '10 November 2022 - Yesterday',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 24, 18),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: new AnimatedCircularChart(
                      size: _size,
                      initialChartData: <CircularStackEntry>[
                        new CircularStackEntry(
                          <CircularSegmentEntry>[
                            new CircularSegmentEntry(
                              49,
                              Color(0xFFD4ADFC),
                              rankKey: 'completed',
                            ),
                            new CircularSegmentEntry(
                              51,
                              Color(0xFF2D3542),
                              rankKey: 'remaining',
                            ),
                          ],
                          rankKey: 'progress',
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      edgeStyle: SegmentEdgeStyle.round,
                      percentageValues: true,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '5 HR',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '58 MIN',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start at',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10:00 AM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End work',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '17:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Income',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '420.00 EUR',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
          child: Text(
            '06 November 2022',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 14,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 24, 18),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: new AnimatedCircularChart(
                      size: _size,
                      initialChartData: <CircularStackEntry>[
                        new CircularStackEntry(
                          <CircularSegmentEntry>[
                            new CircularSegmentEntry(
                              38,
                              Color(0xFFD4ADFC),
                              rankKey: 'completed',
                            ),
                            new CircularSegmentEntry(
                              62,
                              Color(0xFF2D3542),
                              rankKey: 'remaining',
                            ),
                          ],
                          rankKey: 'progress',
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      edgeStyle: SegmentEdgeStyle.round,
                      percentageValues: true,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '4 HR',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '13 MIN',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start at',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10:00 AM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End work',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '17:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Income',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '420.00 EUR',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 24, 100),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: new AnimatedCircularChart(
                      size: _size,
                      initialChartData: <CircularStackEntry>[
                        new CircularStackEntry(
                          <CircularSegmentEntry>[
                            new CircularSegmentEntry(
                              21,
                              Color(0xFFD4ADFC),
                              rankKey: 'completed',
                            ),
                            new CircularSegmentEntry(
                              79,
                              Color(0xFF2D3542),
                              rankKey: 'remaining',
                            ),
                          ],
                          rankKey: 'progress',
                        ),
                      ],
                      chartType: CircularChartType.Radial,
                      edgeStyle: SegmentEdgeStyle.round,
                      percentageValues: true,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2 HR',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '46 MIN',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Start at',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '10:00 AM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'End work',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '17:00 PM',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Income',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '420.00 EUR',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
