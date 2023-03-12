import 'package:flutter/material.dart';

import 'grid_tab.dart';
import 'list_tab.dart';

class ListorGrid extends StatelessWidget {
  const ListorGrid({super.key});

  // late final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(
            centerTitle: true,
            title: const Text('List or Grid'),
            actions: <Widget>[
              IconButton(onPressed: (){}, icon: const Icon(Icons.settings))
            ],
            leading: IconButton(onPressed: (){},icon: const Icon(Icons.menu),),
          ),
          body: Column(children: const [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.list,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.grid_3x3, color: Colors.deepPurple),
                )
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                ListTab(),
                GridTab(),
              ]),
            )
          ]),
        ));
  }
}
