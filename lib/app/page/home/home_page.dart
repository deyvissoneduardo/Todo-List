import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import 'widgets/_widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.bottomAppBarColor,
      appBar: AppbarHome(context: context),
      floatingActionButton: const HomeFloatButton(),
      drawer: const HomeDrawer(),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
              minWidth: constraints.maxWidth,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HomeHeader(),
                    HomeFilters(),
                    HomeWeek(),
                    HomeTasks(),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
