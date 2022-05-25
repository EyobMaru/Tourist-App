import 'package:tourist_travel_app/components/everyImport.dart';

class SecondSplash extends StatefulWidget {
  const SecondSplash({Key? key}) : super(key: key);

  @override
  State<SecondSplash> createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              'assets/images/first.jpg',
              width: 300,
              // width: 300,
            ),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Explore Destinations',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            const Text(
              'Discover the place for your trip in the',
              style: TextStyle(letterSpacing: 1.5),
            ),
            const Text(
              '       world and feel great             ',
              style: TextStyle(letterSpacing: 1.5),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xffF73B55),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xff9DA6B7),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(radius: 5, backgroundColor: Color(0xff9DA6B7))
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const ThirdSplash()));
                // Navigator.pushNamed(context, '/third');
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ThirdSplash(),
                  ),
                      (route) => false,
                );
              },

              child: const CircleAvatar(
                radius: 25,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                backgroundColor: Color(0xffF73B55),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
