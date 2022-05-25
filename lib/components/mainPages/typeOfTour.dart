import 'package:tourist_travel_app/components/everyImport.dart';
import 'package:tourist_travel_app/components/mainPages/adventure.dart';


class TypeOfTour extends StatefulWidget {
  TypeOfTour({Key? key}) : super(key: key);

  @override
  State<TypeOfTour> createState() => _TypeOfTourState();
}

class _TypeOfTourState extends State<TypeOfTour> {
  var size, height, width;


  late PersistentTabController _controller;


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.04, right: width * 0.04, top: height * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: height * 0.05,
                        width: width * 0.7,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Your trip',
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xffF73B55),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                      size: 17,
                                    )),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: const BorderSide(color: Colors.teal),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: width * 0.1,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  const Text(
                    'Type of tour',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DiscoveryPopularCatagory(
                          text: 'Adventure',
                          ImagePath: 'assets/images/adventure.jpeg'),
                      DiscoveryPopularCatagory(
                          text: 'Group', ImagePath: 'assets/images/group.jpeg'),
                      DiscoveryPopularCatagory(
                          text: 'Honeymoon',
                          ImagePath: 'assets/images/honeymoon.jpg'),
                      DiscoveryPopularCatagory(
                          text: 'Sight', ImagePath: 'assets/images/sight.jpeg')
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  const Text(
                    'Best Adventure',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: height * 0.45,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                width: width *0.45,
                                height: height*0.215,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/axum.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Container(
                                height: height*0.22,
                                width: width *0.45,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/lalibela.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: width * 0.04,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.38,
                                width: width *0.45,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset(
                                    'assets/images/lalibela.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.015,
                              ),
                              Container(
                                height: height * 0.055,
                                width: width * 0.45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  //set border radius to 50% of square height and width
                                  image: DecorationImage(
                                    image: const AssetImage(
                                      "assets/images/lalibela.jpg",
                                    ),
                                    colorFilter: ColorFilter.mode(
                                      Colors.white.withOpacity(0.8),
                                      BlendMode.modulate,
                                    ),
                                    fit: BoxFit.cover, //change image fill type
                                  ),
                                ),
                                child: Center(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AdventurePage()));
                                  },
                                  child: const Text(
                                    'More +',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: width*0.04,right: width*0.04,bottom: height*0.03,),
          child: GNav(
            selectedIndex: 1,
              // rippleColor: Colors.grey[800], // tab button ripple color when pressed
              // hoverColor: Colors.grey[700], // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              tabActiveBorder: Border.all(color: Color(0xffF73B55), width: 1), // tab button border
              // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
              // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: const Duration(milliseconds: 300), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.grey[400], // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: Color(0xffF73B55), // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.01), // navigation bar padding
              tabs: [
                GButton(
                  onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const DiscoveryPage()));
                  },
                  icon: Icons.home,
                  text: 'Home',
                ),
                const GButton(
                  icon: Icons.explore_rounded,
                  text: 'Explore',
                ),
                const GButton(
                  icon: Icons.notifications,
                  text: 'Notification',
                ),
                const GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                )
              ]
          ),
        ),
      ),
    );
  }
}
