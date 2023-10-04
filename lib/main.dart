import 'package:flutter/material.dart';
import 'package:flutter_application_15/bottomsheet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return  SingleChildScrollView(child:  MyBottomSheet(dataList),); // Use MyBottomSheet and pass your data list
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://a-static.besthdwallpaper.com/green-lake-mountain-wallpaper-1024x768-105353_18.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 16.0),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The first 20 hours -- how to learn anything | Josh Kaufman | TEDxCSU',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(''),
              Text('3.6 crore views   10 yr ago ...more'),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              const Icon(
                Icons.play_circle_fill_sharp,
                color: Color.fromARGB(255, 227, 94, 94),
                size: 40,
              ),
              Text('  TEDx Talks 3.93 crore'),
              Spacer(flex: 1),
              Container(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {
                    // Call the function to show the bottom sheet
                    _showBottomSheet(context);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text('Subscribe'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Spacer(flex: 1),
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Colors.grey[300], // Light gray background color
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.thumb_up,
                          size: 20, color: Color.fromARGB(255, 14, 14, 13)),
                      SizedBox(width: 8), // Add space between icon and text
                      Text(
                        '8.5 lakh |',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.thumb_down,
                          size: 20, color: Color.fromARGB(255, 14, 14, 13)),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 1),
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Colors.grey[300], // Light gray background color
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.share,
                          size: 20, color: Color.fromARGB(255, 18, 19, 18)),
                      SizedBox(width: 8), // Add space between icon and text
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 1),
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Colors.grey[300], // Light gray background color
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wifi,
                          size: 20, color: Color.fromARGB(255, 12, 15, 18)),
                      SizedBox(width: 8), // Add space between icon and text
                      Text(
                        'Remix',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 1),
              Container(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    primary: Colors.grey[300], // Light gray background color
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download,
                          size: 20, color: Color.fromARGB(255, 14, 13, 13)),
                      SizedBox(width: 8), // Add space between icon and text
                      Text(
                        'Download',
                        style: TextStyle(
                          color: Colors.black, // Text color
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 1000,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor:
                    Colors.grey[300],
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 8), 
                      Text(
                        'Comments 1.9k',
                        style: TextStyle(
                          color: Colors.black, 
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.circle_rounded,
                            size: 20, color: Color.fromARGB(255, 14, 13, 13)),
                        SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            'I am almost at my 20th hour of watching TEDx talks and I have to say I AM getting pretty good at this.',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
