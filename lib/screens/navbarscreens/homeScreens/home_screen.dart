import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freelance_project/screens/navbarscreens/widgets/card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 3;

  final urlImages = [
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
    'assets/images/1.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    Text(
                      'Fort Kochi',
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text('Kolathiparampil Road ,Mattanchery ,Kochi',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                        border: Border.all(color: Colors.grey.shade200)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Search for products, Category',
                          icon: Icon(Icons.search)),
                    ),
                  ),
                ),

                const SizedBox(height: 15,),

                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider.builder(
                      itemCount: urlImages.length,
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = urlImages[index];
                        return buildImage(urlImage, index);
                      },
                      options: CarouselOptions(
                        height: 80,
                        autoPlay: true,
                        //enlargeCenterPage: true
                        //enableInfiniteScroll: false,
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                      ),
                    ),
                   // buildIndicator(),
                  ],
                ),
                const SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 14, 8, 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Exclusive Offer',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CardWidget(
                        cardImage: AssetImage('assets/images/banana.png'),
                        cardText: 'Organic Bananas',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 60',
                      ),
                      CardWidget(
                        cardImage: AssetImage('assets/images/Apple.png'),
                        cardText: 'Red Apple',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 150',
                      ),
                      CardWidget(
                        cardImage: AssetImage('assets/images/orange.png'),
                        cardText: 'Orange',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 100',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 14, 8, 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Best Selling',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      CardWidget(
                        cardImage: AssetImage('assets/images/chilli.png'),
                        cardText: 'Chilli',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 60',
                      ),
                      CardWidget(
                        cardImage: AssetImage('assets/images/ginger.png'),
                        cardText: 'Ginger',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 150',
                      ),
                      CardWidget(
                        cardImage: AssetImage('assets/images/lime.png'),
                        cardText: 'Lime',
                        cardKg: '1 kg price',
                        cardPrice: '₹ 100',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: MediaQuery.of(context).size.width,
        //Scolor: Colors.grey,
        child: Image(
            fit: BoxFit.fitWidth,
            height: 100,
            image: AssetImage('${urlImages[index]}')),
      );

  // Widget buildIndicator() => AnimatedSmoothIndicator(
  //       activeIndex: activeIndex,
  //       count: urlImages.length,
  //       effect: SlideEffect(activeDotColor: Colors.green),
  //     );
}
