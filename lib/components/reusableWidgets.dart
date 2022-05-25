
import 'package:tourist_travel_app/components/everyImport.dart';

class DiscoveryPopularCatagory extends StatelessWidget {
  final String text;
  final String ImagePath;

  const DiscoveryPopularCatagory(
      {Key? key, required this.text, required this.ImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage:
          AssetImage(ImagePath),
          backgroundColor: Colors.transparent,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(text)
      ],
    );
  }
}

class DiscoveryLocationList extends StatelessWidget {
  final String ImagePath;
  final String NameOfPlace;
  final String Price;
  final int val;

  DiscoveryLocationList(
      {Key? key,
      required this.ImagePath,
      required this.NameOfPlace,
      required this.Price, required this.val})
      : super(key: key);
  static int number =0 ;
  var size, height, width;



  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    if (number == 0){
      return Visibility(
        visible: true,
        child: SizedBox(
          width: width * 0.5,
          height: height * 0.40,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(ImagePath,
                    fit: BoxFit.cover,
                    color: Colors.white.withOpacity(0.8),
                    colorBlendMode: BlendMode.modulate),
              ),
              Positioned(
                left: width * 0.02,
                right: width * 0.02,
                bottom: height * 0.02,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(NameOfPlace,
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1.3)),
                        Row(
                          children: [
                            const Text(
                              'Starting at',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  letterSpacing: 1.2),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.005),
                              child: Text(
                                Price,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    letterSpacing: 1.2),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: height * 0.015,
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xffF73B55),
                        size: height * 0.02,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }


    else {
      return Visibility(
      visible: val == number,
      child: SizedBox(
        width: width * 0.5,
        height: height * 0.40,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(ImagePath,
                  fit: BoxFit.cover,
                  color: Colors.white.withOpacity(0.8),
                  colorBlendMode: BlendMode.modulate),
            ),
            Positioned(
              left: width * 0.02,
              right: width * 0.02,
              bottom: height * 0.02,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(NameOfPlace,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1.3)),
                      Row(
                        children: [
                          const Text(
                            'Starting at',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                letterSpacing: 1.2),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.005),
                            child: Text(
                              Price,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  letterSpacing: 1.2),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: height * 0.015,
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xffF73B55),
                      size: height * 0.02,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    }
  }
}




