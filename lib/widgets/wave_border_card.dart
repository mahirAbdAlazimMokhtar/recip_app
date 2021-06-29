import 'package:flutter/material.dart';
import 'package:recip_app/utils/responsive_layout.dart';

class WaveBorderCard extends StatelessWidget {
  final String recipeCardName;
  const WaveBorderCard({
    Key? key,
    this.imageRecipeOfTheDay = '',
    this.isMobileScreen = true,
    this.recipeCardName = "",
    this.width = 320,
  }) : super(key: key);

  final String imageRecipeOfTheDay;
  final bool isMobileScreen;
  final double width;

  @override
  Widget build(BuildContext context) {
    var isMobileScreen = ResponsiveLayout.isSmallScreen(context);
    const imageRecipeOfTheDay =
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';
    return Stack(
      children: [
        Container(
          height: 200,
          width: width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                    30.0
                ),
                topLeft: Radius.circular(
                    30
                ),
              ),
              image: DecorationImage(
                image: NetworkImage(imageRecipeOfTheDay),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                const BoxShadow(
                  color: Color(0x20000000),
                  offset: Offset(3, 0),
                  blurRadius: 0.4,
                )
              ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0 , top: 150),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
              left: isMobileScreen ? 10 : 20,
            ),
            child: Text(
              recipeCardName,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            height: isMobileScreen ? 40 : 200,
            width: width - 20,
            decoration: BoxDecoration(
              color: const Color(
                0xCCEEE6E6,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
        ),
      ],
    );
  }}