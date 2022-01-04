import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/search/dance_item.dart';
import 'package:tiktok_ui/pages/search/food_item.dart';
import 'package:tiktok_ui/pages/search/laugh_item.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              titleSpacing: 0.0,
              automaticallyImplyLeading: false,
              title: Container(
                margin: EdgeInsets.only(right: 10.0, left: 10.0),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Search hashtag or username',
                    hintStyle: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white60,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(14.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 200.0,
            width: width,
            child: Carousel(
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.transparent,
              borderRadius: true,
              dotVerticalPadding: 5.0,
              dotPosition: DotPosition.bottomRight,
              images: [
                getSliderItem(
                  width,
                  'assets/slider/slider_2.jpg',
                  '#DanceNow',
                  'Upload your video using #DanceNow tag',
                ),
                getSliderItem(
                  width,
                  'assets/slider/slider_1.jpg',
                  '#FitnessChallenge',
                  'Upload your video using #FitnessChallenge tag',
                ),
                getSliderItem(
                  width,
                  'assets/slider/slider_3.jpg',
                  '#DanceNow',
                  'Upload your video using #DanceNow tag',
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          getHashtagRow('DanceLikeaPro', '108.8k'),
          DanceList(),
          SizedBox(height: 10.0),
          getHashtagRow('LaughOutLoud', '159.8k'),
          LaughList(),
          SizedBox(height: 10.0),
          getHashtagRow('Food', '231.9k'),
          FoodList(),
          SizedBox(height: 80.0),
        ],
      ),
    );
  }

  getSliderItem(double width, String imagePath, String hashtag, String title) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: width,
            color: Colors.black.withOpacity(0.35),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hashtag,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 170.0,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.orange,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 15.0, left: 15.0),
                      child: Text(
                        'Create Now',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  getHashtagRow(String hashTag, String views) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 36.0,
                width: 36.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.black,
                ),
                child: Text(
                  '#',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              SizedBox(width: 10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hashTag,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$views views',
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 3.0),
              Icon(
                Icons.arrow_forward_ios,
                size: 14.0,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
