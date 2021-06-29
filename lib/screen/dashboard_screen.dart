import 'package:flutter/material.dart';
import 'package:recip_app/utils/responsive_layout.dart';

class DashboardScreen extends StatelessWidget {
  Widget heightPlaceHolder(bool isMobileScreen) => SizedBox(
        height: isMobileScreen ? 20 : 30,
      );
  @override
  Widget build(BuildContext context) {
    const imageRecipeOfTheDay =
        'https://images.unsplash.com/photo-1612392062126-5cc76074df9c?ixid=MnwxMjA3fDF8MHxzZWFyY2h8NDh8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
    //for dont repet the code twice
    var isMobileScreen = ResponsiveLayout.isSmallScreen(context);
    return Scaffold(
      body: CustomScrollView(
        //this is appBar for my app

        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1612392062126-5cc76074df9c?ixid=MnwxMjA3fDF8MHxzZWFyY2h8NDh8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                fit: BoxFit.cover,
              ),
            ),
            // actions: [
            //   IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.ac_unit_rounded),
            //     //this for hint to the user
            //     tooltip: 'Add new entry',
            //   )
            // ],
          ),
          //this for list of widget
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobileScreen ? 20 : 40,
              vertical: isMobileScreen ? 10 : 10,
            ),
            sliver: SliverList(
                //this attr to give you list of widget
                delegate: SliverChildListDelegate(
              [
                Text(
                  'The recipe of the Day',
                  //this for custome color like html header
                  style: Theme.of(context).textTheme.headline6,
                ),
                heightPlaceHolder(isMobileScreen),
                WaveBorderCard(
                  imageRecipeOfTheDay: imageRecipeOfTheDay,
                  isMobileScreen: isMobileScreen,
                  recipeCardName: 'Pancakes',
                ),
                heightPlaceHolder(isMobileScreen),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline6,
                ),
                heightPlaceHolder(isMobileScreen),
                ListView.separated(
                    itemBuilder: itemBuilder,
                    separatorBuilder: separatorBuilder,
                    itemCount: itemCount)
              ],
            )),
          )
        ],
      ),
    );
  }
}

class WaveBorderCard extends StatelessWidget {
  final String recipeCardName;
  const WaveBorderCard({
    Key? key,
    required this.imageRecipeOfTheDay,
    required this.isMobileScreen,
    this.recipeCardName = "",
  }) : super(key: key);

  final String imageRecipeOfTheDay;
  final bool isMobileScreen;

  @override
  Widget build(BuildContext context) {
    var isMobileScreen = ResponsiveLayout.isSmallScreen(context);
    const imageRecipeOfTheDay =
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';
    return Stack(
      children: [
        Container(
          height: 200,
          width: 400,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  30.0,
                ),
                topLeft: Radius.circular(
                  30,
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
          padding: EdgeInsets.symmetric(
            vertical: isMobileScreen ? 150 : 32,
          ),
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
            width: isMobileScreen ? 300 : 500,
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
  }
}
