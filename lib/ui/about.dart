import 'package:flutter/material.dart';
import 'package:portfolio/widgets/c_button.dart';
import 'package:portfolio/widgets/c_text.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import '../data/skills.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class About extends StatelessWidget {
  final String _description =
      "With a passion for programming and a strong foundation in these two popular languages are Flutter and Go, One of my most notable strengths is my communication skills. I have a natural ability to explain technical concepts to both technical and non-technical stakeholders in a way that is easy to understand. Their clear and concise communication style is invaluable to any development team, and ensures that everyone is on the same page throughout the project.I’m also highly independent and takes a proactive approach to their work. I have the ability to take ownership of a project and drive it forward, delivering high-quality work on time and within budget. My exceptional attention to detail and focus on results ensures that they consistently meet and exceed project expectations.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      color: AppColors.greyLight,
                      child: Image.asset(
                        AppConstants.avatar,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ABOUT ME',
                          style: TextStyle(
                            color: AppColors.yellow,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            _description,
                            style:
                                Theme.of(context).textTheme.bodyText2?.copyWith(
                                      color: Colors.black.withOpacity(.7),
                                      fontSize: 17,
                                      letterSpacing: 1.2,
                                      height: 1.5,
                                    ),
                          ),
                        ),
                        CButton(
                          radius: 10,
                          buttonTapped: _downloadCV,
                          backgroundColor: AppColors.blue,
                          titleColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 20),
                          title: 'View portfolio',
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 100, height: 2, color: AppColors.blue),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.blue),
              const SizedBox(height: 50),
              Wrap(
                spacing: 25,
                runSpacing: 25,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Container(
                  color: AppColors.greyLight,
                  child: Image.asset(
                    AppConstants.avatar,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _description,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 13,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              CButton(
                radius: 10,
                buttonTapped: _downloadCV,
                backgroundColor: AppColors.blue,
                titleColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                title: 'View portfolio',
              ),
              const SizedBox(height: 50),
              Text('MY SKILLS', style: AppStyles.title),
              Container(width: 75, height: 2, color: AppColors.blue),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.blue),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );

  void _downloadCV() {
    launchUrl(Uri.parse(AppConstants.cv));
  }

  Widget _buildSkill(Skill skill) => Chip(
          label: CText(
        text: skill.name,
      ));
}
