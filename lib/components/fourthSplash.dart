import 'package:tourist_travel_app/components/everyImport.dart';

class FourthSplash extends StatefulWidget {
  const FourthSplash({Key? key}) : super(key: key);

  @override
  State<FourthSplash> createState() => _FourthSplashState();
}

class _FourthSplashState extends State<FourthSplash> {
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
            Image.asset('assets/images/third.jpg',width: 300,),
            const Spacer(
              flex: 1,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Fly to Destination',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            const Text(
              'Finally get ready for the tour and go to',
              style: TextStyle(letterSpacing: 1.5),
            ),
            const Text(
              '           your desire destination       ',
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
                  backgroundColor: Color(0xff9DA6B7),
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
                CircleAvatar(radius: 5, backgroundColor: Color(0xffF73B55))
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: Explore()));
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Explore(),
                    ),
                        (route) => false,
                  );
                  // Navigator.pushNamed(context, '/fifth');
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
