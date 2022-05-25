import 'package:tourist_travel_app/components/everyImport.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  State<ResetPage> createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
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
                  flex: 3,
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
                  'Reset a new',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.4),
                ),
                const Spacer(
                  flex: 3,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Send Code',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.4),
                    ),
                    GestureDetector(
                      onTap: () {

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
                  flex: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const WelcomePage()));
                        // Navigator.pushNamed(context, '/sixth');
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
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
