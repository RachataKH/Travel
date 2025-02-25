import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:mytravel/constant/color.dart';
//import 'package:mytravel/model/data.dart';
import 'package:mytravel/wiget/Destination.dart';
import 'package:mytravel/wiget/Proflie_widget.dart';
import 'package:mytravel/wiget/SearchBar.dart';
import 'package:mytravel/wiget/icons.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List destinationAPI = [];
  bool isLoading = true;

  @override
  void initState(){
    super.initState();
    fetchData();
  }
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('http://localhost:3000/items'));
    if (response.statusCode == 200) {
      setState(() {
        destinationAPI = json.decode(response.body);
        isLoading = false;
        // print(destinationAPI);
      });
    } else {
      throw Exception('Failed to load products');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Row 1 - Proflie image
              ProflieWidget(),
              SizedBox(
                height: 15,
              ),
              //Row 2
              Text(
                'Point of Interest',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: primaryColors, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              //Row 3
              SearchABar(),
              SizedBox(
                height: 15,
              ),
              //row 4
              IconTab(),
              SizedBox(
                height: 15,
              ),

              Row(
                children: [
                  Text(
                    'Top Destination',
                    style: TextStyle(
                      fontSize: 25,
                      color: primaryColors,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.tune,
                    size: 25,
                    color: primaryColors,
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              //Row 6 - Display images
              GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                childAspectRatio: 0.75,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                children: List.generate(destinationAPI.length, (index) {
                  //var e = destinations[index];

                  return AnimationConfiguration.staggeredGrid(
                      position: index,
                      columnCount: 2,
                      child: SlideAnimation(
                          child: FadeInAnimation(
                              child: DestinationWidget(
                                  name: destinationAPI[index]["name"],
                                  image: destinationAPI[index]["image"],
                                  rate: destinationAPI[index]["rate"],
                                  location: destinationAPI[index]["location"]))));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
