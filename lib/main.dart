import 'package:tourist_travel_app/components/everyImport.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FirstSplash(),
        '/second': (context) => SecondSplash(),
        '/third': (context) => ThirdSplash(),
        '/fourth': (context) => FourthSplash(),
        '/fifth': (context) => Explore(),
        '/sixth': (context) => WelcomePage(),
        '/seventh': (context) => CreateAccountPage(),
        '/eighth': (context) => ResetPage(),
        '/discovery': (context) => DiscoveryPage(),
        // '/location': (context) => LocationPage(),
        '/typeOfTour': (context) => TypeOfTour(),
        // '/adventure': (context) => AdventurePage(),


      },

    );
  }
}

