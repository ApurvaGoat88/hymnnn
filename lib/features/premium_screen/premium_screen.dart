import 'package:flutter/material.dart';
import 'package:spotify/common/colors/appcolors.dart';
import 'package:spotify/features/premium_screen/widgets/buttons.dart';
import 'package:spotify/features/premium_screen/widgets/carousel.dart';
import 'package:spotify/features/premium_screen/widgets/currentplan.dart';
import 'package:spotify/features/premium_screen/widgets/premiumplan.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 70,
          ),
          const Text(
            'Get 9 months of\nPremium for ₹719',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'LibreFranklin',
              fontSize: 35,
            ),
          ),
          Cards(),
          Buttons('GET PREMIUM'),
          const SizedBox(height: 10),
          const Text(
            'Terms and conditions apply. Open only to users who aren\'t subscribed to a recurring Premium plan and who haven\'t purchased a 12-month one-time Premium plan at a promotional price. Offer ends 8/15/21.',
            style: TextStyle(
              color: Color.fromRGBO(184, 184, 184, 10),
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          CurrentPlan(),
          PremiumPlan(),
          SizedBox(height: 3),
        ],
      ),
    );
  }
}
