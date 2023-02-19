import 'package:flutter/material.dart';
import 'package:resume/ui/responsive_widget.dart';
import 'package:resume/widgets/c_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../config/constants.dart';
import '../config/colors.dart';

class Header extends StatelessWidget {
  final String _name = "John";
  final String _job = "Full Stack Developer";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I'm $_name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                _job,
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  AppConstants.introduction,
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                        height: 1.5,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              CButton(
                  radius: 10,
                  backgroundColor: AppColors.blue,
                  titleColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  buttonTapped: _downloadCV,
                  title: 'View Resume'),
              const SizedBox(height: 100),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m $_name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  _job,
                  style: TextStyle(
                    color: AppColors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    AppConstants.introduction,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Colors.grey[100],
                          fontSize: 15,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                CButton(
                    radius: 10,
                    backgroundColor: AppColors.blue,
                    titleColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    buttonTapped: _downloadCV,
                    title: 'View Resume'),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    launch(AppConstants.cv);
  }
}
