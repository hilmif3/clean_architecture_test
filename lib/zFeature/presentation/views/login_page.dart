part of 'pages.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(""),
            SplashPages(),
            LoginPages(),
          ],
        ),
      ),
    );
  }
}
