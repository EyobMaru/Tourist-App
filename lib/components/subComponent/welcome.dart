import 'package:tourist_travel_app/components/everyImport.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Row(
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
                const Spacer(
                  flex: 2,
                ),
                const Text(
                  'Welcome to',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
                Row(
                  children: const [
                    Text(
                      'World',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'explorer',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color(0xffF73B55),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    )
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const DiscoveryPage()));
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
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const CreateAccountPage()));
                        // Navigator.pushNamed(context, '/seventh');
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const ResetPage()));
                        // Navigator.pushNamed(context, '/eighth');
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
