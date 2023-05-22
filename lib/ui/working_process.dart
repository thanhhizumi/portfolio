import 'package:flutter/material.dart';
import 'package:portfolio/ui/responsive_widget.dart';
import 'package:portfolio/widgets/c_text.dart';

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
                      "The initial stage of developing a system involves acquiring and comprehending the customer's requirements, followed by consolidating them into system requirements, including specific functional and non-functional requirements. The final step in this process entails verifying the completeness and accuracy of the compiled requirements and initiating the project planning phase."),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'icons/design.png',
                      'Design',
                      "Upon obtaining a thorough understanding of the project documentation, the design phase will commence, beginning with high-level planning. The process will employ Scrum methodology to facilitate efficient team management and task assignment for specific roles. The primary objective of this phase will be to develop a comprehensive plan to guide the completion of the project features."),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'icons/coding.png',
                      'Implementation',
                      "At this stage of the project, coding will commence, with source management performed via Git, and unit testing conducted throughout. Upon reaching 80% completion, testers will be brought on board to report on any issues or errors. Developers will then work iteratively to identify and resolve any reported bugs until the product reaches a finished state."),
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
                height: 1.5,
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
