import 'package:exp_app/pages/balance_page.dart';
import 'package:exp_app/pages/charts_page.dart';
import 'package:exp_app/providers/ui_provider.dart';
import 'package:exp_app/widgets/home_page_wt/custom_navidation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);
    final currentIndex = uiProvider.bnbIndex;

    switch (currentIndex) {
      case 0:
        return const BalancePage();
      case 1:
        return const ChartsPage();
      default:
        return const BalancePage();
    }
  }
}
