import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home.dart';
import 'package:flutter_application_1/ui/reports/reports.dart';
import 'package:flutter_application_1/ui/task/task.dart';
import 'package:flutter_application_1/ui/team/team.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int index = 0;
  late final bool isActive;

  final screens = [Home(), Task(), const AllReports(), const Team()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: this.index == index
                    ? const Color(0xFF7A879E)
                    : const Color.fromARGB(255, 37, 117, 255)))),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color(0xFF2D3542), width: 0.5))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: NavigationBar(
                indicatorColor: const Color.fromRGBO(117, 194, 246, 215),
                indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                height: 80,
                elevation: 0,
                backgroundColor: const Color.fromRGBO(23, 30, 38, 1),
                selectedIndex: index,
                onDestinationSelected: (index) => setState(
                      () => this.index = index,
                    ),
                destinations: [
                  NavigationDestination(
                    selectedIcon: Image.asset(
                      'assets/images/icons/timer1.png',
                      height: 28,
                      width: 28,
                    ),
                    icon: Image.asset(
                      'assets/images/icons/timer.png',
                      height: 28,
                      width: 28,
                    ),
                    label: 'Timer',
                  ),
                  NavigationDestination(
                      selectedIcon: Image.asset(
                        'assets/images/icons/task2.png',
                        height: 28,
                        width: 28,
                      ),
                      icon: Image.asset(
                        'assets/images/icons/task.png',
                        height: 28,
                        width: 28,
                      ),
                      label: 'Tasks'),
                  NavigationDestination(
                      selectedIcon: Image.asset(
                        'assets/images/icons/report1.png',
                        height: 28,
                        width: 28,
                      ),
                      icon: Image.asset(
                        'assets/images/icons/report.png',
                        height: 28,
                        width: 28,
                      ),
                      label: 'Reports'),
                  NavigationDestination(
                      selectedIcon: Image.asset(
                        'assets/images/icons/team1.png',
                        height: 28,
                        width: 28,
                      ),
                      icon: Image.asset(
                        'assets/images/icons/team.png',
                        height: 28,
                        width: 28,
                      ),
                      label: 'Team'),
                ]),
          ),
        ),
      ),
    );
  }
}
