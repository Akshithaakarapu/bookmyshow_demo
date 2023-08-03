import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> images = [
    'images/movie.png',
    'images/musicshow.png',
    'images/stream.png',
    'images/sports.png',
    'images/comedyshow.png',
    'images/playground.png'
  ];
  List<dynamic> names = [
    'Movies',
    'Music\nShows',
    'Stream',
    'Sports',
    'Comedy\nShows',
    'playground'
  ];
  List<dynamic> posters = [
    'images/telugu3.jpeg',
    'images/telugu1.jpg',
    // 'images/telugu2.jpg',
  ];
  List<dynamic> movies = [
    'images/poster1.jpg',
    'images/poster2.jpg',
    'images/poster3.jpg',
    'images/poster4.jpg',
    'images/poster5.jpg'
  ];
  List<dynamic> en = [
    'images/en1.jpeg',
    'images/en2.jpeg',
    'images/en3.jpeg',
    'images/en1.jpeg',
  ];
  List<dynamic> rating = ['8.5', '9.5', '7.5', '8.5', '4.5'];
  List<dynamic> vote = [
    '80.5k Votes',
    '90.5k Votes',
    '74.55k Votes',
    '81.55k Votes',
    '48.55k Votes'
  ];
  List<dynamic> mnames = [
    'Bro(2023)',
    'Baby(2023)',
    'RRR(2022)',
    'Samajawaragamana',
    'Ps-2(2023)'
  ];
  List<dynamic> mnames2 = [
    'Dont tell AMMA',
    'Samayraina',
    'stand Up ',
    'learn comedy',
    'StartUp'
  ];
  List<dynamic> mnames3 = [
    'F.R.I.E.N.D.S',
    'Transformers',
    'Insidious ',
    'Lights Out',
    'Avengers'
  ];
  List<dynamic> sports = [
    'images/sp1.jpeg',
    'images/sp3.jpeg',
    'images/sp2.jpeg',
  ];
  List<dynamic> text1 = [
    'The race thats faster than fast',
    '3 Days of breakneck speeds!',
    'The race thats faster than fast',
  ];
  List<dynamic> startup = [
    'images/startup1.jpg',
    'images/startup2.jpg',
    'images/startup3.jpg',
    'images/startup4.jpg',
    'images/startup5.jpg'
  ];
  List<dynamic> english = [
    'images/english1.jpg',
    'images/english2.jpg',
    'images/english3.jpg',
    'images/english5.jpg',
    'images/english6.jpg'
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80, // default is 56
          toolbarOpacity: 0.5,
          backgroundColor: Color(0xff2f3148),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "It All Starts Here!",
                    style: TextStyle(
                        color: Color(0xfffcffff),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Hyderabad",
                        style:
                            TextStyle(color: Color(0xff9fa0af), fontSize: 12),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 10, color: Color(0xffd4d7e8)),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff84362),
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Use App",
                          style:
                              TextStyle(color: Color(0xffffdede), fontSize: 14),
                        )),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              )
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            images[index],
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(names[index],
                              style: TextStyle(
                                  color: Color(0xff4b4b4b),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    );
                  }),
            ),
            /////////////////////////////////////////////////////arrow///////////////////////////////////////////
            Container(
              height: 220,
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Image.asset(
                          posters[index],
                          height: 200,
                          width: 360,
                        ),
                        //Text(names[index],style: TextStyle(color: Color(0xff4b4b4b),fontSize: 12,fontWeight: FontWeight.bold))
                      ],
                    );
                  }),
            ),

            //////////////////////////////////////ads image///////////////////////////////////////////////////////////////////////////////

            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Column(
                  children: [
                    Image.asset(
                      'images/ads.jpeg',
                      width: 335,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ////////////////////////////Recommended Movies/////////////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recommended Movies",
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Row(children: [
                            Text("See All",
                                style: TextStyle(
                                  color: Color(0xffcf627e),
                                  fontSize: 16,
                                )),
                            Icon(Icons.arrow_forward_ios,
                                size: 10, color: Color(0xffcf627e)),
                          ]),
                          ////////////////////////////Recommended Movies/////////////////////////////////////
                        )
                      ],
                    ),
                    Container(
                      height: 282,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Image.asset(movies[index],
                                        height: 200,
                                        width: 140,
                                        fit: BoxFit.cover),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff3f4f9),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffeb4c62),
                                                size: 16,
                                              ),
                                              Text(rating[index],
                                                  style: TextStyle(
                                                      color: Color(0xff4b4b4b),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        Text(vote[index],
                                            style: TextStyle(
                                                color: Color(0xff4b4b4b),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Text(mnames[index],
                                          style: TextStyle(
                                            color: Color(0xff4b4b4b),
                                            fontSize: 16,
                                          )))
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            /////////////////////////////////////////poster listview////////////////////////////////////////

            /////////////////////////////////////////poster listview////////////////////////////////////////
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Column(
                  children: [
                    Image.asset(
                      'images/rajinikanth.jpeg',
                      width: 345,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 320,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffe9e9e9),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Text("MotoGp  Bharat",
                                style: TextStyle(
                                    color: Color(0xff818181),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("The BEST racing showon Earth is here!",
                                style: TextStyle(
                                  color: Color(0xff818181),
                                  fontSize: 16,
                                )),

                            ////////////////////////////////////////////////////
                            Container(
                              height: 254,
                              child: ListView.builder(
                                  itemCount: 3,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12.0)),
                                                child: Image.asset(
                                                    sports[index],
                                                    height: 190,
                                                    width: 320,
                                                    fit: BoxFit.cover),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(text1[index],
                                                  style: TextStyle(
                                                      color: Color(0xff818181),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Startup comedy",
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Row(children: [
                            Text("See All",
                                style: TextStyle(
                                  color: Color(0xffcf627e),
                                  fontSize: 16,
                                )),
                            Icon(Icons.arrow_forward_ios,
                                size: 10, color: Color(0xffcf627e)),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 275,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Image.asset(startup[index],
                                        height: 200,
                                        width: 140,
                                        fit: BoxFit.cover),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff3f4f9),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffeb4c62),
                                                size: 16,
                                              ),
                                              Text(rating[index],
                                                  style: TextStyle(
                                                      color: Color(0xff4b4b4b),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        Text(vote[index],
                                            style: TextStyle(
                                                color: Color(0xff4b4b4b),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Align(
                                      alignment: Alignment.topRight,
                                      child: Text(mnames2[index],
                                          style: TextStyle(
                                            color: Color(0xff4b4b4b),
                                            fontSize: 16,
                                          )))
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset("images/en1.jpeg"),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Column(
                  children: [
                    //Image.asset('images/rajinikanth.jpeg',width: 345,),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("English movies",
                            style: TextStyle(
                                color: Color(0xff111111),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        Container(
                          child: Row(children: [
                            Text("See All",
                                style: TextStyle(
                                  color: Color(0xffcf627e),
                                  fontSize: 16,
                                )),
                            Icon(Icons.arrow_forward_ios,
                                size: 10, color: Color(0xffcf627e)),
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),

                    Container(
                      height: 285,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    child: Image.asset(english[index],
                                        height: 200,
                                        width: 140,
                                        fit: BoxFit.cover),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff3f4f9),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Color(0xffeb4c62),
                                                size: 16,
                                              ),
                                              Text(rating[index],
                                                  style: TextStyle(
                                                      color: Color(0xff4b4b4b),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                        Text(vote[index],
                                            style: TextStyle(
                                                color: Color(0xff4b4b4b),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(mnames3[index],
                                      style: TextStyle(
                                        color: Color(0xff4b4b4b),
                                        fontSize: 16,
                                      ))
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home',
                // title: Text('Home'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                // title: Text('Search'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
              // title: Text('Profile'),
              backgroundColor: Colors.white,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
