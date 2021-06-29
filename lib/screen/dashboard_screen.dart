import 'package:flutter/material.dart';
import 'package:recip_app/utils/responsive_layout.dart';
import 'package:recip_app/widgets/wave_border_card.dart';

class DashboardScreen extends StatelessWidget {
  Widget heightPlaceHolder(bool isMobileScreen) => SizedBox(
        height: isMobileScreen ? 20 : 30,
      );
  List<Widget> widgetList = [
    Text('first widget'),
    Text('second widget'),
  ];
  @override
  Widget build(BuildContext context) {
    const imageRecipeOfTheDay =
        'https://images.unsplash.com/photo-1612392062126-5cc76074df9c?ixid=MnwxMjA3fDF8MHxzZWFyY2h8NDh8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
    //for don't repet the code twice
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
            padding: EdgeInsets.only(
              top: isMobileScreen ? 40.0: 50.0,
              bottom: isMobileScreen ? 40.0: 50.0,
              left: isMobileScreen ? 20.0: 30.0,
            ),
            sliver: SliverList(
                //this attr to give you list of widget
                delegate: SliverChildListDelegate(
              [
                Text(
                  'The recipe of the Day',
                  //this for custom color like html header
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
                //list . separated you can put the space between the elements
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 200,
                  ),
                  child: ListView.separated(
                      itemBuilder: (context, index) => WaveBorderCard(width: 200,
                      recipeCardName: 'Real Data',
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: 3,
                    scrollDirection: Axis.horizontal,

                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}

