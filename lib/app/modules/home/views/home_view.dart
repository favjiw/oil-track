import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oiltrack/app/modules/widgets/card_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomeView'), centerTitle: true),
      body: Center(child: CustomCard(child: Text('Content Here'))),
    );
  }
}
