import 'package:flutter/material.dart';
import 'package:recip_app/utils/responsive_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              horizontal: ResponsiveLayout.isSmallScreen(context) ? 20 : 40,
            ),
            sliver: SliverList(
                //this attr to give you list of widget
                delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                    top: 20,
                  ),
                  child: Text(
                    'The recipe of the Day',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}
