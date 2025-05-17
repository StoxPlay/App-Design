import 'package:flutter/material.dart';
import 'package:stoxplay/utils/common/widgets/common_appbar_title.dart';
import 'package:stoxplay/utils/constants/app_colors.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: CommonAppbarTitle(),
        centerTitle: true,
        backgroundColor: AppColors.white,
        leadingWidth: 0,
      ),
    );
  }
}
