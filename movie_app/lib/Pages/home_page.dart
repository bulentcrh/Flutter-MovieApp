import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_app/widgets/bottom_bar.dart';
import 'package:movie_app/widgets/movie_sections.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'likes_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSection);
    super.initState();
  }

  _handleTabSection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Divider(
        child: Drawer(
          backgroundColor: Color(0xFF1D1D28),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 30),
            child: Text(
              "MovieApp",
              style: Theme.of(context).textTheme.titleLarge?.
              copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
              ),),
          ),
          ),
      ),
      appBar: AppBar(
        title: Text('Movies Streaming'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          )],
      ),
      body: ListView(
        children: [
          CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 230,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
          items: [
            _customUpcomingContainer(upimages: "assets/images/upcoming1.jpg"),
            _customUpcomingContainer(upimages: "assets/images/upcoming2.jpg"),
            _customUpcomingContainer(upimages: "assets/images/upcoming3.jpg"),
            _customUpcomingContainer(upimages: "assets/images/upcoming4.jpg"),
          ],
        ),
        SizedBox(height: 30),
        TabBar(
          controller: _tabController, 
          unselectedLabelColor: Colors.white,
          isScrollable: true,
          indicator: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(left: 10),
          tabs: [
            Tab(text: "All"),
            Tab(text: "Action"),
            Tab(text: "Advencure"),
            Tab(text: "Comedy"),
          ],
         ),
         SizedBox(height: 20),
         Center(
          child: [
           MovieSections(),
           MovieSections(),
           Container(),
           Container(),
          ][_tabController.index]
         )
       ]),
       bottomNavigationBar: ModernBottomNavBar(),
    );
  }
}

class _customUpcomingContainer extends StatelessWidget {
  const _customUpcomingContainer({super.key, required this.upimages});

  final upimages;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(upimages),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

