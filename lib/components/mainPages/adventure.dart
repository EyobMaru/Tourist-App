import 'package:tourist_travel_app/components/everyImport.dart';

class AdventurePage extends StatelessWidget {
  AdventurePage({Key? key}) : super(key: key);
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    Widget widgetMaker(String image1, String image2) {
      return Padding(
        padding: EdgeInsets.only(left: width * 0.035, top: height * 0.024),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.025),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(image1),
                          fit: BoxFit.cover,
                        )),
                    width: width * 0.45,
                    height: height * 0.25,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: height * 0.025),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image2),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: width * 0.45,
                    height: height * 0.25,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(
            Icons.arrow_back,
            color: Colors.grey[800],
          )),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          widgetMaker('assets/images/adventure/adventure.jpeg',
              'assets/images/adventure/ertale.jpg'),
          widgetMaker('assets/images/adventure/gonder.webp',
              'assets/images/adventure/hammer.jpeg'),
          widgetMaker('assets/images/adventure/image1.jpg',
              'assets/images/adventure/monkey.jpeg'),
          widgetMaker('assets/images/adventure/mountain.jpg',
              'assets/images/adventure/mountain2.jpg'),
          widgetMaker('assets/images/adventure/water.jpeg',
              'assets/images/adventure/water2.jpg'),
        ]),
      ),
    );
  }
}
