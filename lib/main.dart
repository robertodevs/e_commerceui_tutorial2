import 'package:e_commerceui_tutorial2/product_card.dart';
import 'package:e_commerceui_tutorial2/radiobutton.dart';
import 'package:e_commerceui_tutorial2/utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<RadioModel> filterOption = new List<RadioModel>();



  @override
  void initState() {
    super.initState();
    filterOption.add(new RadioModel(true, 'ALL', 'ALL'));
    filterOption.add(new RadioModel(false, 'WATCH', 'WATCH'));
    filterOption.add(new RadioModel(false, 'CHAIR', 'CHAIR'));
    filterOption.add(new RadioModel(false, 'LAPTOP', 'LAPTOP'));

  }

    @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: new Image.asset("assets/menu2.png"
            ),
            onPressed: () {},
          ),
        ),

        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              size: screenAwareSize(20.0, context),
              color: Colors.black54,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.lock_outline,
              size: screenAwareSize(20.0, context),
              color: const Color.fromRGBO(255, 227, 69, 1),
            ),
            onPressed: () {},
          )
        ],
      ),



      body: SingleChildScrollView(
        //padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                  "Buy Best Products From",
                  style: const TextStyle(
                      color:  const Color(0xff151515),
                      fontWeight: FontWeight.w400,
                      fontFamily: "AlegreyaSansSC",
                      fontStyle:  FontStyle.normal,
                      fontSize: 18.5
                  )),
                  Text(
                      "All Of The World",
                      style: const TextStyle(
                          color:  const Color(0xff151515),
                          fontWeight: FontWeight.w400,
                          fontFamily: "AlegreyaSansSC",
                          fontStyle:  FontStyle.normal,
                          fontSize: 18.5
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      'Lorem Ipsum Is Simply Dummy Text Of The Printing',
                      style: const TextStyle(
                          color:  const Color(0xff151515),
                          fontWeight: FontWeight.w400,
                          fontFamily: "AlegreyaSansSC",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.7
                      )
                  ),
                  Text(
                      'And Industry',
                      style: const TextStyle(
                          color:  const Color(0xff151515),
                          fontWeight: FontWeight.w400,
                          fontFamily: "AlegreyaSansSC",
                          fontStyle:  FontStyle.normal,
                          fontSize: 14.7
                      )
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15.0,
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: screenAwareSize(225.0, context),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset("assets/product1.png",
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover),
                        ),

                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 60.0,
                  bottom: 10.0,
                  child: _statusPhoto(true),
                ),
                Positioned(
                  right: 47.0,
                  bottom: 10.0,
                  child: _statusPhoto(false),
                )
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 15.0),
              child: Stack(
                children: <Widget>[
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            "Newest Products",
                            style: const TextStyle(
                                color:  const Color(0xff151515),
                                fontWeight: FontWeight.w400,
                                fontFamily: "AlegreyaSansSC",
                                fontStyle:  FontStyle.normal,
                                fontSize: 18.5
                            )),
                      ),

                    ],
                  ),
                  Positioned(
                    right: 40.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,

                        color: const Color.fromRGBO(255, 227, 69, 0.5),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    right: 0.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,

                        color: const Color.fromRGBO(255, 227, 69, 1),
                      ),
                      onPressed: () {},
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0, left: 15.0),
              child: Container(
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    ProductCard(title: 'SEA-DWELLER', price: '\$999.66', image: 'assets/watch.png', completed: true,),
                    ProductCard(title: 'BLUE CHAIR', price: '\$86.54', image: 'assets/chair.png', completed: false,)
                    //ProfileCard(image: "assets/icon/profile.png", title: "Sube tu foto", description: "Elige una foto que te represente"),
                  ],

                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: screenAwareSize(45.0, context),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 246, 252, 1)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: filterOption
                    .map((document) {
                  return new InkWell(
                    onTap: () {
                      setState(() {
                        filterOption.forEach((element) => element.isSelected = false);
                        document.isSelected = true;

                      });

                    },
                    child: new RadioItem(document),
                  );
                },).toList(),
              ),
            ),

          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _statusPhoto(bool active)
  {
    
    return Container(
      child: new Padding(padding: const EdgeInsets.only(left: 3.0, right: 3.0)),
      height: 8.0,
      width: 8.0,

      decoration: BoxDecoration(
        gradient: (active)
          ? LinearGradient(
                colors: [
                  Color.fromRGBO(255, 227, 69, 1),
                  Color.fromRGBO(255, 194, 33, 1)
                ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
              )
          :  LinearGradient(
              colors: [
                Color(0xFFF0F0F0),
                Color(0xFFF0F0F0)
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
        borderRadius: BorderRadius.circular(4.0)


      ),
    );
  }

}

class buttonCustom extends StatelessWidget {
  String txt;
  Color color;
  GestureTapCallback ontap;
  double heigth;

  buttonCustom({this.txt, this.color, this.ontap, this.heigth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: heigth,
        width: 300.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
              const Radius.circular(30.0)
          ),
        ),
        child: Center(
            child: Text(
              txt,
              style: TextStyle(
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
