import 'package:flutter/material.dart';
import '../../../../theme/colorpalatt.dart';
import '../../../../theme/themedata.dart';

import '../../utils/buttons.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/space.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget notificationcard = RRButton2(
      padding: const EdgeInsets.symmetric(
        // horizontal: 15,
        vertical: 10,
      ),
      // borderColor: Palatt.primary,
      // radius: 8,
      margin: const EdgeInsets.only(bottom: 0, left: 15, right: 15),
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 27.5,
          ),
          spaceHorizontal(15),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Harry John",
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 18,
                itemPadding: const EdgeInsets.only(right: 3.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Palatt.primary,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              spaceVertical(10),
              Text("Good information given by him",
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Palatt.grey,
                    ),
                  )),
            ],
          ))
        ],
      ),
    );
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Reviews",
      ),
      body: ListView.separated(
        itemCount: 10,
        // padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return notificationcard;
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            thickness: 1,
            color: Palatt.boxShadow.withOpacity(0.5),
          );
        },
      ),
    );
  }
}
