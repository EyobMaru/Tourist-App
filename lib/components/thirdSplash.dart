import 'package:tourist_travel_app/components/everyImport.dart';

class ThirdSplash extends StatelessWidget {
  const ThirdSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Spacer(flex: 2,),
            Image.asset('assets/images/second.jpg',width: 300,),
            const Spacer(flex: 1,),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Choose Destination',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold, letterSpacing: 1.5),

              ),
            ),

            const Text('Select a place for your trip easily and know',style: TextStyle(letterSpacing: 1.5),),
            const Text('        the exact cost of the tour          ',style: TextStyle(letterSpacing: 1.5),),
            const Spacer(flex: 1,),
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
                  backgroundColor: Color(0xffF73B55),
                ),
                SizedBox(
                  width: 5,
                ),
                CircleAvatar(radius: 5, backgroundColor: Color(0xff9DA6B7))
              ],
            ),
            const Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const FourthSplash()));
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const FourthSplash(),
                    ),
                        (route) => false,
                  );
                  // Navigator.pushNamed(context, '/fourth');
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
            const Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}