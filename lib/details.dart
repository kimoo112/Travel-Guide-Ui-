// ignore_for_file: public_member_api_docs, sort_ructors_first
import 'package:flutter/material.dart';

import 'Theme.dart';
import 'constant.dart';

class DetailsScreen extends StatefulWidget {
  final dynamic title;
  final dynamic image;
  final dynamic image1;
  final dynamic image2;
  final dynamic image3;
  final dynamic image4;
  final dynamic place;
  final dynamic text;
  final dynamic place1;
  final dynamic text1;
  final dynamic place2;
  final dynamic text2;
  final dynamic place3;
  final dynamic text3;
  final dynamic place4;
  final dynamic text4;
  DetailsScreen({
    Key? key,
    required this.title,
    required this.image,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.place,
    required this.text,
    required this.place1,
    required this.text1,
    required this.place2,
    required this.text2,
    required this.place3,
    required this.text3,
    required this.place4,
    required this.text4,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
      extendBodyBehindAppBar: true,
      backgroundColor: AppTheme.isDark ? cDark : cLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 3,
        shadowColor: cGrey.withOpacity(.2),
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            color: AppTheme.isDark ? cDarkColor : cLightColor,
            fontWeight: FontWeight.w700,
            fontSize: 26,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.isDark ? cDarkColor : cLightColor.withOpacity(.8),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 55,
              ),
              Text(
                widget.place,
                style: TextStyle(
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text,
                style: TextStyle(
                    color: AppTheme.isDark ? cLight : cDark, fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(widget.image),
              ),
              de,
              SizedBox(
                height: 10,
              ),
              Text(
                widget.place1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cLight : cDark, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(widget.image1),
              ),
              de,
              SizedBox(
                height: 10,
              ),
              Text(
                widget.place2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cLight : cDark, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(widget.image2),
              ),
              de,
              SizedBox(
                height: 10,
              ),
              Text(
                widget.place3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cLight : cDark, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(widget.image3),
              ),
              de,
              SizedBox(
                height: 10,
              ),
              Text(
                widget.place4,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cDarkColor : cLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.text4,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppTheme.isDark ? cLight : cDark, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(widget.image4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
