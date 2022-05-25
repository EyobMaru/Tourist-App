import 'package:tourist_travel_app/components/everyImport.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  int value = 0;
  var size, height, width;
  var num = 1;


  Widget circle(val){

      return Visibility(
        visible: val ==num,
        child: Padding(
          padding: EdgeInsets.only(top: height*0.005),
          child: const CircleAvatar(
            backgroundColor: Color(0xffF73B55),
            radius: 3,
          ),
        ),
      );



  }

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
                  left: width * 0.04, right: width * 0.05, top: height * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.menu,
                        color: Colors.blueGrey,
                      ),
                      Container(
                        width: 40,
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
                    height: height * 0.03,
                  ),
                  const Text(
                    'Discover',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.008),
                    child: const Text('Explore the best place in the world'),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  TextField(
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
                              )),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.teal),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  SizedBox(
                    height: height * 0.05,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(

                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  num = 1;
                                  DiscoveryLocationList.number = 0;

                                });
                              },
                              child: const Text(
                                '  All',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            circle(1)
                          ],
                        ),
                        SizedBox(
                          width: width*0.08,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num = 2;
                                    DiscoveryLocationList.number = 1;
                                  });
                                },
                                child: const Text(
                                  'Amhara',
                                  style: TextStyle(color: Colors.black),
                                )),
                            circle(2)
                          ],
                        ),
                        SizedBox(
                          width: width*0.08,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num = 3;
                                    DiscoveryLocationList.number = 2;
                                  });
                                },
                                child: const Text(
                                  'Tigray',
                                  style: TextStyle(color: Colors.black),
                                )),
                            circle(3)
                          ],
                        ),
                        SizedBox(
                          width: width*0.08,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                      num = 4;
                                      DiscoveryLocationList.number = 3;
                                  });
                                },
                                child: const Text(
                                  'Oromiya',
                                  style: TextStyle(color: Colors.black),
                                )),
                              circle(4)
                          ],
                        ),
                        SizedBox(
                          width: width*0.08,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num = 5;
                                    DiscoveryLocationList.number = 4;
                                  });
                                },
                                child: const Text(
                                  'Addis Ababa',
                                  style: TextStyle(color: Colors.black),
                                )),
                            circle(5)
                          ],
                        ),
                        SizedBox(
                          width: width*0.08,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    num = 6;
                                    DiscoveryLocationList.number = 5;
                                  });
                                },
                                child: const Text(
                                  'Afar',
                                  style: TextStyle(color: Colors.black),
                                )),
                            circle(6)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LocationPage(
                                          ratingInK: LocationName.path(
                                              'lalibelaRatingInK'),
                                          pathOfImage:
                                              ImagePath.path('lalibela'),
                                          nameOfPlace:
                                              LocationName.path('lalibela'),
                                          priceOfThePlace: LocationName.path(
                                              'lalibelaPrice'),
                                          weather: LocationName.path(
                                              'lalibelaWeather'),
                                          cost:
                                              LocationName.path('lalibelaCost'),
                                          detail: LocationName.path(
                                              'LalibelaDetail'),
                                          distance: LocationName.path(
                                              'lalibelaDistance'),
                                          duration: LocationName.path(
                                              'lalibelaDuration'),
                                          rating: LocationName.path(
                                              'lalibelaRating'),
                                          review:
                                              LocationName.path('lalibela'))));
                            },
                            child: DiscoveryLocationList(
                              ImagePath: 'assets/images/lalibela.jpg',
                              NameOfPlace: LocationName.path('lalibela'),
                              Price: LocationName.path('lalibelaPrice'), val: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LocationPage(
                                          ratingInK: LocationName.path(
                                              'axumRatingInK'),
                                          pathOfImage: ImagePath.path('axum'),
                                          nameOfPlace:
                                              LocationName.path('axum'),
                                          priceOfThePlace: LocationName.path(
                                              'axumPrice'),
                                          weather: LocationName.path(
                                              'axumWeather'),
                                          cost:
                                              LocationName.path('axumCost'),
                                          detail: LocationName.path(
                                              'axumDetail'),
                                          distance: LocationName.path(
                                              'axumDistance'),
                                          duration: LocationName.path(
                                              'axumDuration'),
                                          rating: LocationName.path(
                                              'axumRating'),
                                          review:
                                              LocationName.path('axumReview'))));
                            },
                            child: DiscoveryLocationList(
                              ImagePath: 'assets/images/axum.jpg',
                              NameOfPlace: LocationName.path('axum'),
                              Price: LocationName.path('axumPrice'), val: 2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LocationPage(
                                          ratingInK: LocationName.path(
                                              'entotoRatingInK'),
                                          pathOfImage:
                                              ImagePath.path('entoto'),
                                          nameOfPlace:
                                              LocationName.path('entoto'),
                                          priceOfThePlace: LocationName.path(
                                              'entotoPrice'),
                                          weather: LocationName.path(
                                              'entotoWeather'),
                                          cost:
                                              LocationName.path('entotoCost'),
                                          detail: LocationName.path(
                                              'entotoDetails'),
                                          distance: LocationName.path(
                                              'entotoDistance'),
                                          duration: LocationName.path(
                                              'entotoDuration'),
                                          rating: LocationName.path(
                                              'entotoRating'),
                                          review:
                                              LocationName.path('entoto'))));
                            },
                            child: DiscoveryLocationList(
                              ImagePath: ImagePath.path('entoto'),
                              NameOfPlace: LocationName.path('entoto'),
                              Price: 'entotoPrice', val: 4,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LocationPage(
                                          ratingInK: LocationName.path(
                                              'ertaleRatingInK'),
                                          pathOfImage: ImagePath.path('ertale'),
                                          nameOfPlace:
                                          LocationName.path('ertale'),
                                          priceOfThePlace: LocationName.path(
                                              'ertalePrice'),
                                          weather: LocationName.path(
                                              'ertaleWeather'),
                                          cost:
                                          LocationName.path('ertaleCost'),
                                          detail: LocationName.path(
                                              'ertaleDetails'),
                                          distance: LocationName.path(
                                              'ertaleDistance'),
                                          duration: LocationName.path(
                                              'ertaleDuration'),
                                          rating: LocationName.path(
                                              'ertaleRating'),
                                          review:
                                          LocationName.path('ertaleReview'))));
                            },
                            child: DiscoveryLocationList(
                              ImagePath: ImagePath.path('ertale'),
                              NameOfPlace: LocationName.path('ertale'),
                              Price: LocationName.path('ertalePrice'), val: 5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: LocationPage(
                                          ratingInK: LocationName.path(
                                              'baleRatingInK'),
                                          pathOfImage: ImagePath.path('bale'),
                                          nameOfPlace:
                                          LocationName.path('bale'),
                                          priceOfThePlace: LocationName.path(
                                              'balePrice'),
                                          weather: LocationName.path(
                                              'baleWeather'),
                                          cost:
                                          LocationName.path('baleCost'),
                                          detail: LocationName.path(
                                              'baleDetails'),
                                          distance: LocationName.path(
                                              'baleDistance'),
                                          duration: LocationName.path(
                                              'baleDuration'),
                                          rating: LocationName.path(
                                              'baleRating'),
                                          review:
                                          LocationName.path('baleReview'))));
                            },
                            child: DiscoveryLocationList(
                              ImagePath: 'assets/images/adventure/mountain.jpg',
                              NameOfPlace: LocationName.path('bale'),
                              Price: LocationName.path('balePrice'), val: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  const Text(
                    'Popular Categories',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.3),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DiscoveryPopularCatagory(
                          text: 'Trips', ImagePath: 'assets/images/trip.jpg'),
                      DiscoveryPopularCatagory(
                          text: 'Hotel', ImagePath: 'assets/images/hotel.jpg'),
                      DiscoveryPopularCatagory(
                          text: 'Transport',
                          ImagePath: 'assets/images/transport.jpg'),
                      DiscoveryPopularCatagory(
                          text: 'Events',
                          ImagePath: 'assets/images/event.jpeg'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: width*0.04,right: width*0.04,bottom: height*0.03,),
          child: GNav(
            // rippleColor: Colors.grey[800], // tab button ripple color when pressed
            // hoverColor: Colors.grey[700], // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              tabActiveBorder: Border.all(color: const Color(0xffF73B55), width: 1), // tab button border
              // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
              // tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: const Duration(milliseconds: 200), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: Colors.grey[400], // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: const Color(0xffF73B55), // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: width*0.03, vertical: height*0.01), // navigation bar padding
              tabs: [
                const GButton(

                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  onPressed: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: TypeOfTour()));
                  },
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
