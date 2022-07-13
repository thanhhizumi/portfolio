import 'package:flutter/material.dart';
import 'package:resume/widgets/c_button.dart';
import 'package:resume/widgets/c_text.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import '../data/projects.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class MyProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: AppColors.greyLight,
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Text('MY PROJECTS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            ...PROJECTS.map((p) => _buildProject(context, p)).toList(),
          ],
        ),
      ),
      mobileScreen: Container(
        color: AppColors.greyLight,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'MY PROJECTS',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.blue),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.blue),
            const SizedBox(height: 50),
            Wrap(
              children: PROJECTS.map((p) => _buildProject(context, p)).toList(),
              spacing: 5,
              runSpacing: 5,
            ),
          ],
        ),
      ),
      // tabletScreen: null,
    );
  }

  Widget _buildProject(BuildContext context, Project project) =>
      ResponsiveWidget(
        desktopScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .3,
                    child: Image.asset(project.image.toString()),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .075),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(project.name!, style: AppStyles.title),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .01,
                        ),
                        CText(
                          text: project.description.toString(),
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        Wrap(
                          spacing: 10,
                          children: project.skills!
                              .map((s) => Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2),
                                    child: Chip(label: Text(s)),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * .025,
                        ),
                        CButton(
                          width: 100,
                          titleColor: Colors.white,
                          backgroundColor: AppColors.blue,
                          radius: 10,
                          title: 'Visit',
                          buttonTapped: () {
                            launchUrl(Uri.parse(project.url.toString()));
                          },
                        ),
                        // OutlineButton(
                        //   onPressed: () {
                        //     launch(project.url);
                        //   },
                        //   color: AppColors.blue,
                        //   textColor: AppColors.blue,
                        //   borderSide: BorderSide(
                        //     color: AppColors.blue.withOpacity(.5),
                        //     width: 5,
                        //   ),
                        //   padding: const EdgeInsets.symmetric(
                        //     horizontal: 50,
                        //     vertical: 20,
                        //   ),
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20),
                        //   ),
                        //   child: Text('Visit'),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
        mobileScreen: SizedBox(
          width: MediaQuery.of(context).size.width * .7,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * .75,
                child: Image.asset(project.image.toString()),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .075),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(project.name.toString(), style: AppStyles.title),
              SizedBox(
                height: MediaQuery.of(context).size.width * .01,
              ),
              Text(
                project.description.toString(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children:
                    project.skills!.map((s) => Chip(label: Text(s))).toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * .025,
              ),
              // OutlineButton(
              //   onPressed: () {
              //     launch(project.url);
              //   },
              //   color: AppColors.blue,
              //   textColor: AppColors.blue,
              //   borderSide: BorderSide(
              //     color: AppColors.blue.withOpacity(.5),
              //     width: 5,
              //   ),
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 50,
              //     vertical: 20,
              //   ),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   child: Text('Visit'),
              // ),
              Divider(
                color: AppColors.black.withOpacity(.1),
                height: 50,
                thickness: 1,
              ),
            ],
          ),
        ),
      );
}
