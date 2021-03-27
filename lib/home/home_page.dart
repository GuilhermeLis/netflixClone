import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone_2020_2/home/widgets/action_button.dart';
import 'package:netflix_clone_2020_2/home/widgets/fading_image.dart';
import 'package:netflix_clone_2020_2/home/widgets/movie_section_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        brightness: Brightness.dark,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.asset("assets/images/netflix_logo.png")),
        actions: [
          ActionButton(icon: Icons.cast),
          ActionButton(icon: Icons.search),
          ActionButton(icon: Icons.person),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
             
              IntrinsicHeight(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    FadingImage("assets/images/main_banner.jpg"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              MovieSectionWidget(
                title: "Populares na Netflix",
                movieBannerPathList: [
                  "assets/images/breaking_bad.jpeg",
                  "assets/images/lord.jpg",
                  "assets/images/black.jpg",
                  "assets/images/snyder.jpg",
                  "assets/images/stranger.jpg",
                ],
              ),
              MovieSectionWidget(
                title: "Assitir novamente",
                movieBannerPathList: [
                  "assets/images/avengers.jpg",
                  "assets/images/alice.jpg",
                  "assets/images/back2.jpg",
                  "assets/images/brooklin.jpg",
                  "assets/images/cosmos.jpg",
                  "assets/images/dune.jpg",
                  "assets/images/how.jpg",
                  "assets/images/lord.jpg",
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
