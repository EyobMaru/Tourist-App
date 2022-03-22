import 'package:tourist_travel_app/components/everyImport.dart';

class LocationPage extends StatefulWidget {
  String pathOfImage;
  String nameOfPlace;
  String priceOfThePlace;
  String weather;
  String distance;
  String detail;
  String cost;
  String review;
  String duration;
  String rating;
  String ratingInK;

  LocationPage({Key? key,
    required this.ratingInK,
    required this.pathOfImage,
    required this.nameOfPlace,
    required this.priceOfThePlace,
    required this.weather,
    required this.cost,
    required this.detail,
    required this.distance,
    required this.duration,
    required this.rating,
    required this.review
  }) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  var size, height, width;
  Color color1 = Color(0xff758B9D);
  Color color2 = Color(0xff758B9D);
  Color color3 = Color(0xff758B9D);
  Color color4 = Color(0xff758B9D);

  int number = 1;

  String checker(){
    if (number == 1){
      return
        LocationName.path('lalibelaOverView');
    }
    else if(number == 2){
      return LocationName.path('LalibelaDetail');
    }
    else if(number == 3){
      return LocationName.path('lalibelaReview');
    }
    else{
      return LocationName.path('lalibelaCost');
    }

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
              child: Stack(
            children: [
              Positioned(
                height: height * 0.53,
                left: 0,
                right: 0,
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.pathOfImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.03, top: height * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.03),
                            child: const CircleAvatar(
                              radius: 17,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xffF73B55),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: height * 0.50,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.02, left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.nameOfPlace,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                             widget.priceOfThePlace,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color(0xffF73B55),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFF7C64B),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(widget.rating),
                                  ),
                                  Text(widget.ratingInK)
                                ],
                              ),
                              const Text('Estimated Cost')
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      color1 = const Color(0xffF73B55);
                                      color2 = const Color(0xff758B9D);
                                      color3 = const Color(0xff758B9D);
                                      color4 = const Color(0xff758B9D);
                                      number = 1;
                                    });
                                  },
                                  child: Text(
                                    'Overview',
                                    style: TextStyle(color: color1),
                                  )),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      color1 = const Color(0xff758B9D);
                                      color2 = const Color(0xffF73B55);
                                      color3 = const Color(0xff758B9D);
                                      color4 = const Color(0xff758B9D);
                                      number = 2;
                                    });
                                  },
                                  child: Text('Details',
                                      style: TextStyle(color: color2))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      color1 = const Color(0xff758B9D);
                                      color2 = const Color(0xff758B9D);
                                      color3 = const Color(0xffF73B55);
                                      color4 = const Color(0xff758B9D);
                                      number = 3;
                                    });
                                  },
                                  child: Text('Reviews',
                                      style: TextStyle(color: color3))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      color1 = const Color(0xff758B9D);
                                      color2 = const Color(0xff758B9D);
                                      color3 = const Color(0xff758B9D);
                                      color4 = const Color(0xffF73B55);
                                      number = 4;
                                    });
                                  },
                                  child: Text('Costs',
                                      style: TextStyle(color: color4))),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: height * 0.10,
                          child: Center(child: Text(checker())),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.timer,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.024,
                                            bottom: height * 0.01),
                                        child: Text(widget.duration,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Text('Duration')
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xffF73B55),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.025,
                                            bottom: height * 0.01),
                                        child: Text(widget.distance,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      const Text('Distance')
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Color(0xFFF7C64B),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.025,
                                            bottom: height * 0.01),
                                        child: Text(
                                          widget.weather,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Text('Sunny')


                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.03,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OutlinedButton(
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                        EdgeInsets.symmetric(
                                            vertical: height * 0.026,
                                            horizontal: width * 0.12)),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0))),
                                    side: MaterialStateProperty.all(
                                        const BorderSide(
                                            color: Color(0xffF73B55),
                                            width: 1.5,
                                            style: BorderStyle.solid))),
                                child: Text(
                                  widget.priceOfThePlace,
                                  style: const TextStyle(color: Color(0xffF73B55)),
                                ),
                                onPressed: () {},
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.15,
                                        vertical: height * 0.026),
                                    backgroundColor: Color(0xffF73B55),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                child: const Text(
                                  'Book Now',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
