import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final String image;
  final Function buyFunction;
  final String title;
  final String price;
  final bool completed;

  ProductCard(
      {@required this.image,
        @required this.buyFunction,
        @required this.title,
        @required this.price,
        @required this.completed

      });



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 35.0),
      child: Container(
        width: 150.9,


        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 7.5,
                //spreadRadius: 1.0,
              )
            ]),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10.0,
              right: 10.0,
              child: Icon(Icons.shopping_cart, color: Color.fromRGBO(255, 227, 69, 1),),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Icon(Icons.favorite,
                color: Color.fromRGBO(255, 227, 69, 1),

              ),
            ),
            Column(
              children: <Widget>[


                SizedBox(
                  height: 30.0,
                ),
                Container(
                    child: Image.asset(
                      image,
                    ),
                    width: 130.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.5),

                    )

                ),

                Center(
                  child: Text(title,
                    style: const TextStyle(
                        color:  const Color(0xff151515),
                        fontWeight: FontWeight.w400,
                        fontFamily: "AlegreyaSansSC",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.7
                    ),),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(price,
                    style: const TextStyle(
                        color:  const Color(0xff151515),
                        fontWeight: FontWeight.w400,
                        fontFamily: "AlegreyaSansSC",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.7
                    ),),
                ),



              ],
            ),

            _buttonAction(),
          ],
        ),
      ),
    );
  }

  Widget _buttonAction(){

    // The button must be shown.
    if(completed)
    {
      return Positioned(
        bottom: 1.0,
        right: 0.2,
        left: 0.2,
        child: Container(
          child: InkWell(
            onTap: buyFunction,
            child: Container(
              height: 30.0,
              width: 300.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 227, 69, 1),
                    Color.fromRGBO(255, 194, 33, 1)
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                ),
                color: const Color.fromRGBO(255, 227, 69, 1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4.5),
                    bottomRight: Radius.circular(4.5)

                ),
              ),
              child: Center(
                  child: Text(
                    'Buy Now',
                    style: const TextStyle(
                        color:  const Color(0xff151515),
                        fontWeight: FontWeight.w400,
                        fontFamily: "AlegreyaSansSC",
                        fontStyle:  FontStyle.normal,
                        fontSize: 12.7
                    ),),
                  )),
            ),
          ),
        );
    }
    else{
      return Positioned(
        bottom: 15.0,
        child: Container(
          width: 180.0,
          child: Padding(
            padding: const EdgeInsets.only( top: 5.0, left: 20.0, right: 20.0),

            child: Text(""),
          ),
        ),
      );

    }


  }


}

