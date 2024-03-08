import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _BottomNavigation extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;

  const _BottomNavigation(
      {super.key, required this.onTap, required this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFF171E26),
        border: Border(
          top: BorderSide(width: 0.50, color: Color(0xFF2D3542)),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavigationItem(
                    iconFileName: 'timer.png',
                    activeIconFileName: 'timer1.png',
                    isActive: selectedIndex == timerIndex,
                    onTap: () {
                      onTap(teamIndex);
                    },
                    title: 'Timer'),
                SizedBox(
                  width: 3,
                ),
                BottomNavigationItem(
                    iconFileName: 'task.png',
                    activeIconFileName: 'task2.png',
                    isActive: selectedIndex == tasksIndex,
                    onTap: () {
                      onTap(tasksIndex);
                    },
                    title: 'Tasks'),
                SizedBox(
                  width: 3,
                ),
                BottomNavigationItem(
                    iconFileName: 'report.png',
                    activeIconFileName: 'report1.png',
                    isActive: selectedIndex == reportsIndex,
                    onTap: () {
                      onTap(reportsIndex);
                    },
                    title: 'Reports'),
                SizedBox(
                  width: 3,
                ),
                BottomNavigationItem(
                    iconFileName: 'team.png',
                    activeIconFileName: 'team1.png',
                    isActive: selectedIndex == teamIndex,
                    onTap: () {
                      onTap(teamIndex);
                    },
                    title: 'Team'),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;

  final bool isActive;
  final Function() onTap;

  const BottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.isActive,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 1, 0, 0),
          child: Container(
            height: 39,
            width: 77,
            decoration: isActive
                ? ShapeDecoration(
                    color: Color.fromRGBO(117, 194, 246, 230),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                  )
                : null,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Image.asset(
                    'assets/images/icons/${isActive ? activeIconFileName : iconFileName}',
                    height: 29,
                    width: 29,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(fontSize: 14)
                .apply(
                    color: isActive ? Color.fromRGBO(117, 194, 246, 1) : null))
      ],
    );
  }
}

class _MainScreenState extends StatefulWidget {
  @override
  State<_MainScreenState> createState() => _MainScreenStateState();
}

const int timerIndex = 0;
const int tasksIndex = 1;
const int reportsIndex = 2;
const int teamIndex = 3;

class _MainScreenStateState extends State<_MainScreenState> {
  int selectedScreenIndex = timerIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _BottomNavigation(
        onTap: (int index) {
          setState(() {
            selectedScreenIndex = index;
          });
        },
        selectedIndex: selectedScreenIndex,
      ),
      body: IndexedStack(
        index: selectedScreenIndex,
        children: [],
      ),
    );
  }
}
