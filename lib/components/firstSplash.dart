import 'package:tourist_travel_app/components/everyImport.dart';
class FirstSplash extends StatefulWidget {
  const FirstSplash({Key? key}) : super(key: key);

  @override
  State<FirstSplash> createState() => _FirstSplashState();
}

class _FirstSplashState extends State<FirstSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  // Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const WelcomePage()));
  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 2000),(){});
    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade,  child: const SecondSplash(),));
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.telegram,
                      color: Colors.white,
                      size: 60,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'travelm',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xfff8687c),
                    Color(0xffF73B55),
                  ],
                ),
              ),
            ),
          ));
  }
}
