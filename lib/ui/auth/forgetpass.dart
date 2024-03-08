import 'package:flutter/material.dart';

class Forgetpass extends StatelessWidget {
  const Forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/icons/arrowback.png',
                    height: 28,
                    width: 28,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Text(
                'Forget Password',
                style: themeData.textTheme.headline6!.copyWith(fontSize: 33),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'We will send a recovery code to your email',
              style: themeData.textTheme.bodyText2!.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 62,
            ),
            TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(bottom: 0, left: 0),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xFF2D3542))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 1.7,
                    color: Color(0xFF2D3542),
                  )),
                  label: Text('Email', style: themeData.textTheme.bodyText2!)),
            ),
            const SizedBox(
              height: 54,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF75C2F6)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                    minimumSize: MaterialStateProperty.all(
                        Size(MediaQuery.of(context).size.width, 47))),
                child: Text(
                  'Send Recovery Code',
                  style: themeData.textTheme.headline4,
                )),
          ],
        ),
      )),
    );
  }
}
