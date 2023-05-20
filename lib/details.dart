import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen(
      {super.key,
      this.title = "KARIM",
      this.image = "",
      this.text = "",
      this.place = "",
      this.place1 = "",
      this.text1 = "",
      this.place2 = "",
      this.text2 = "",
      this.place3 = "",
      this.text3 = "",
      this.place4 = "",
      this.text4 = "",
      this.image1 = "",
      this.image2 = "",
      this.image3 = "",
      this.image4 = ""});
  final title;
  final image;
  final image1;
  final image2;
  final image3;
  final image4;
  final place;
  final text;
  final place1;
  final text1;
  final place2;
  final text2;
  final place3;
  final text3;
  final place4;
  final text4;

var de = Container(
      height: 2,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromARGB(255, 9, 1, 41),
            width: 1,
          ),
        ),
      ),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor:                     Colors.purple,

        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 26,
            ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white.withOpacity(.8),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                place,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            SizedBox(height: 5,),

              Container(
                alignment: Alignment.center,

                child: Image.asset(image),
              ),
              de,
              SizedBox(
                height: 10,
              ),
              Text(
                place1,
                style: TextStyle(
                                       color: Colors.purple,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 5,),

              Text(
                text1,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            SizedBox(height: 5,),

              Container(
                alignment: Alignment.center,

                child: Image.asset(image1),
              ),
              de,

            SizedBox(height: 10,),

              Text(
                place2,
                style: TextStyle(
                                      color: Colors.purple,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 5,),

              Text(
                text2,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            SizedBox(height: 5,),

              Container(
                alignment: Alignment.center,

                child: Image.asset(image2),
              ),
              de,

            SizedBox(height: 10,),

              Text(
                place3,
                style: TextStyle(
                                      color: Colors.purple,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 5,),

              Text(
                text3,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            SizedBox(height: 5,),

              Container(
                alignment: Alignment.center,
                child: Image.asset(image3),
              ),
              de,

            SizedBox(height: 10,),

              Text(
                place4,
                style: TextStyle(
                                        color: Colors.purple,

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 5,),

              Text(
                text4,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            SizedBox(height: 5,),

              Container(
                alignment: Alignment.center,

                child: Image.asset(image4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
