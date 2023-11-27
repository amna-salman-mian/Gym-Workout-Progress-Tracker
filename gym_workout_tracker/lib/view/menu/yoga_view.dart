import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:workout_fitness/common/color_extension.dart';
//import 'package:workout_fitness/common_widget/response_row.dart';

class YogaView extends StatefulWidget {
  const YogaView({super.key});

  @override
  State<YogaView> createState() => _YogaViewState();
}

class _YogaViewState extends State<YogaView> {
  List workArr = [
    {"name": "Running", "image": "assets/img/1.png"},
    {"name": "Jumping", "image": "assets/img/2.png"},
    {
      "name": "Running",
      "image": "assets/img/5.png",
    },
    {
      "name": "Jumping",
      "image": "assets/img/3.png",
    },
  ];

  List responseArr = [
    {
      "name": "Emma Chan",
      "time": "09 days ago",
      "image": "assets/img/u2.png",
      "message":
          "Yoga has truly transformed my life. I feel more centered, focused, and at peace with each practice."
    },
    {
      "name": "Louise Parker",
      "time": "11 days ago",
      "image": "assets/img/u1.png",
      "message":
          "Yoga isn't just exercise; it's a holistic practice that nurtures both my physical and mental well-being. It's like a gift I give to myself every time I step onto the mat."
    },
    {
      "name": "Matt Roberts",
      "time": "12 days ago",
      "image": "assets/img/u2.png",
      "message":
          "The breathwork in yoga has been a game-changer for me. Learning to control my breath has not only enhanced my practice but has also helped me manage stress in daily life."
    },
    {
      "name": "Scott Laidler",
      "time": "13 days ago",
      "image": "assets/img/u1.png",
      "message":
          "Yoga has taught me to appreciate my body for what it can do, rather than how it looks. It's a powerful shift in perspective that has boosted my self-confidence."
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/black_white.png",
              width: 25,
              height: 25,
            )),
        title: Text(
          "Yoga",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/img/1.png",
              width: media.width,
              height: media.width * 0.55,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.primary,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/like.png",
                        width: 20,
                        height: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "assets/img/share.png",
                        width: 20,
                        height: 20,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Tips",
                style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "If you're new to yoga, begin with beginner-friendly classes or routines. Allow your body to adapt to the practice gradually.\n Pay attention to how your body feels during each pose. If something doesn't feel right or causes pain, modify the pose or skip it. Everyone's body is different, so honor your own limits. \n Regularity is key in yoga. Even if you can only spare a few minutes each day, consistency will yield more benefits than occasional, intense sessions. ",
                style: TextStyle(color: TColor.secondaryText, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_running.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_meal_plan.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_home.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset("assets/img/menu_weight.png",
                    width: 25, height: 25),
              ),
              InkWell(
                onTap: () {},
                child:
                    Image.asset("assets/img/more.png", width: 25, height: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
