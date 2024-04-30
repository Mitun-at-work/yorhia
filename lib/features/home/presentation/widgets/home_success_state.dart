import 'package:flutter/material.dart';
import 'package:yorhia/features/home/presentation/widgets/home_state.dart';
import 'package:yorhia/features/home/presentation/widgets/home_title.dart';
import '../../../../core/constants/bottom_navigation_bar.dart';

import '../../domain/entity/product_entity.dart';

class HomeSuccessState extends StatelessWidget {
  const HomeSuccessState({
    super.key,
    required this.state,
  });

  final List<ProductEntity> state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const HomeTitle(),
        ),
        bottomNavigationBar: buildBottomNavigationButton(),
        body: HomeState(
          state: state,
        ));
  }
}
