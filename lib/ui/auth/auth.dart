import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/root2.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const int loginTab = 1;
  static const int signUpTab = 0;
  int selectedTabIndex = signUpTab;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 55,
                ),
                Center(
                  child: Text(
                    'Welcome to Clapse',
                    style:
                        themeData.textTheme.headline6!.copyWith(fontSize: 33),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 53,
                  width: 450,
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(13, 20, 28, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(2.2),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: selectedTabIndex == signUpTab
                                    ? const Color.fromRGBO(23, 30, 38, 1)
                                    : const Color.fromRGBO(13, 20, 28, 1),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      selectedTabIndex = signUpTab;
                                    });
                                  },
                                  child: Text(
                                    'Sign Up',
                                    style: themeData.textTheme.bodyText1!
                                        .copyWith(
                                            color: selectedTabIndex == signUpTab
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
                            padding: const EdgeInsets.all(2.2),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: selectedTabIndex == loginTab
                                      ? const Color.fromRGBO(23, 30, 38, 1)
                                      : const Color.fromRGBO(13, 20, 28, 1),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedTabIndex = loginTab;
                                      });
                                    },
                                    child: Text('Log In',
                                        style: themeData.textTheme.bodyText2!
                                            .copyWith(
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    selectedTabIndex == loginTab
                                                        ? const Color.fromRGBO(
                                                            117, 194, 246, 1)
                                                        : const Color.fromRGBO(
                                                            122, 135, 158, 1))),
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                selectedTabIndex == signUpTab
                    ? _Signup(themeData: themeData)
                    : _Login(themeData: themeData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Signup extends StatelessWidget {
  const _Signup({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color(0xFF2D3542))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFF2D3542),
              )),
              label: Text('Full name', style: themeData.textTheme.bodyText2!)),
        ),
        const SizedBox(
          height: 51,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.7, color: Color(0xFF2D3542))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFF2D3542),
              )),
              label: Text('Email', style: themeData.textTheme.bodyText2!)),
        ),
        const SizedBox(
          height: 50,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.7, color: Color(0xFF2D3542))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFF2D3542),
              )),
              label: Text('Password', style: themeData.textTheme.bodyText2!)),
        ),
        const SizedBox(
          height: 45,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => NavigationMenu())));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF75C2F6)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            child: Text(
              'Create Account',
              style: themeData.textTheme.headline4,
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Do you have an account?',
              style: themeData.textTheme.bodyText2,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => NavigationMenu())));
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Log In',
                    style: themeData.textTheme.bodyText1!
                        .copyWith(color: const Color(0xFF75C2F6)))),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 152,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF2D3542),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'or',
                style: themeData.textTheme.bodyText2!.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 157,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF2D3542),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/google.png',
              width: 24,
              height: 24,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            label: Text(
              'Sign Up with Google',
              style: themeData.textTheme.headline4,
            )),
        const SizedBox(
          height: 45,
        ),
        Text(
          'Having an account on Claps means that you have read and accepted the Terms of Service and Privacy Policy.',
          style: themeData.textTheme.bodyText2!.copyWith(fontSize: 14),
        )
      ],
    );
  }
}

class _Login extends StatelessWidget {
  const _Login({
    super.key,
    required this.themeData,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.5, color: Color(0xFF2D3542))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFF2D3542),
              )),
              label: Text('Email', style: themeData.textTheme.bodyText2!)),
        ),
        const SizedBox(
          height: 51,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(bottom: 0, left: 10),
              enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1.7, color: Color(0xFF2D3542))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                width: 1.7,
                color: Color(0xFF2D3542),
              )),
              label: Text('Password', style: themeData.textTheme.bodyText2!)),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Forget Password?',
                    style: themeData.textTheme.bodyText1!.copyWith(
                        fontSize: 14, color: const Color(0xFF75C2F6)))),
          ],
        ),
        const SizedBox(
          height: 40,
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
              'Log In',
              style: themeData.textTheme.headline4,
            )),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account?',
              style: themeData.textTheme.bodyText2,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Sign up',
                    style: themeData.textTheme.bodyText1!
                        .copyWith(color: const Color(0xFF75C2F6)))),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 152,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF2D3542),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'or',
                style: themeData.textTheme.bodyText2!.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 157,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.3,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF2D3542),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/icons/google.png',
              width: 24,
              height: 24,
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context).size.width, 47))),
            label: Text(
              'Log In with Google',
              style: themeData.textTheme.headline4,
            )),
        const SizedBox(
          height: 96,
        ),
        Text(
          'Having an account on Claps means that you have read and accepted the Terms of Service and Privacy Policy.',
          style: themeData.textTheme.bodyText2!.copyWith(fontSize: 14),
        )
      ],
    );
  }
}
