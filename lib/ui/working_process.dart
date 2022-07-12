import 'package:flutter/material.dart';
import 'package:resume/ui/responsive_widget.dart';
import 'package:resume/widgets/c_text.dart';

import '../config/styles.dart';
import '../config/colors.dart';
import 'icon.dart';

class WorkingProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('WORKING PROCESS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '01.',
                      'icons/pencil.png',
                      'Plan',
                      'Getting requirements of the customer, understand what they need, complile those into system requiremetns, inspecific functional / none- functional, the last step is to confirm it and start making a plan'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'icons/design.png',
                      'Design',
                      'After understand project documentation, I will start design, in high level. Which process will be use scrum for instance, manage team and assign who will incharge of specific roles, design how to finish a feature.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'icons/coding.png',
                      'Implementation',
                      'At this stage, I will start coding, and manage source via git perform unit test. after project is about 80%, tester will join and report. And developer will interatively fix bugs until the product is finished'),
                )
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'WORKING PROCESS',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            __buildProcess(context, '01.', 'icons/pencil.png', 'Plan',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'icons/design.png', 'Design',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
            const SizedBox(height: 10),
            __buildProcess(context, '03.', 'icons/coding.png', 'Code',
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor laboris nisi ut aliquip ex ea commodo.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CText(
                text: index,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            AppIcon(iconPath, color: AppColors.black, size: 40),
            const SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
