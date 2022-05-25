import 'package:tourist_travel_app/components/everyImport.dart';

class Explore extends StatelessWidget {
  Explore({Key? key}) : super(key: key);
  var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.telegram, color: Color(0xffF73B55), size: 30),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'travelm',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Enjoy your holiday',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 20),
                child: Row(
                  children: const [
                    Text(
                      'with',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'travelm',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffF73B55),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Keep you travel very comfortable, easy and ',
                  style:
                      TextStyle(letterSpacing: 1.7, color: Color(0xff9DA6B7)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'explore the world with travelm',
                  style:
                      TextStyle(letterSpacing: 1.7, color: Color(0xff9DA6B7)),
                ),
              ),
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 25),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     PageTransition(
                    //         type: PageTransitionType.fade,
                    //         child: const DiscoveryPage()));
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const DiscoveryPage(),
                      ),
                          (route) => false,
                    );
                  },
                  child: const Text('Explore'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: const Color(0xffF73B55),
                    minimumSize: const Size(150, 50),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage( 'assets/images/explore.jpg',),fit: BoxFit.cover
                  )
                ),
                height: height*0.5,
                 )
            ],
          ),
        ),
      ),
    );
  }
}
