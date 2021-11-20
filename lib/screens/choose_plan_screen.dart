import 'package:flutter/material.dart';
import 'package:test_animalplanet/common/custom_app_bar.dart';
import 'package:test_animalplanet/common/subscription_container.dart';
import 'package:test_animalplanet/screens/dashboard_screen.dart';
import 'package:test_animalplanet/utils/strings.dart';
import 'package:test_animalplanet/utils/text_styles.dart';

class ChoosePlanScreen extends StatelessWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB98959),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                CustomAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                  child: Text(
                    Strings.chooseAPlan,
                    style: TextStyles.headingTextStyle,
                  ),
                ),
                SubscriptionContainer(
                  text: Strings.weekSubscription,
                  amount: "1.99",
                  imagePath: "assets/weekly.jpg",
                ),
                SubscriptionContainer(
                  text: Strings.oneMonthSubscription,
                  amount: "4.39",
                  imagePath: "assets/monthly.jpg",
                ),
                SubscriptionContainer(
                  text: Strings.threeMonthSubscription,
                  amount: "9.99",
                  imagePath: "assets/3monthly.jpg",
                ),
                SubscriptionContainer(
                  text: Strings.sixMonthSubscription,
                  amount: "13",
                  imagePath: "assets/6monthly.jpg",
                ),
              ],
            ),
            const Positioned(
              bottom: 48,
              left: 16,
              child: Text(Strings.LAST_STEP_TO_ENJOY,
                  style: TextStyles.buttonTextStyle),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const DashboardScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFDAD4CC).withOpacity(0.8),
                  ),
                  child: const Align(
                    alignment: Alignment(-0.4, -0.4),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
