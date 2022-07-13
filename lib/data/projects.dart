class Project {
  final String? name;
  final String? description;
  final String? image;
  final String? url;
  final List<String>? skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'PimsPoints',
    description:
        "PimsPoints was created by an educator who understands that COMMUNICATION, OPPORTUNITY, and ACCOUNTABILITY are key factors that contribute to effective parent engagement. These three factors became the framework on which PimsPoints was designed. It is because of the conceptual framework of the technology that schools, non-profits, and parents are able to determine parent engagement activity in a meaningful and REWARDING way.",
    image: 'images/projects/pimspoints.png',
    url: 'https://www.pimspoints.com/',
    skills: [
      'Dart',
      'Flutter',
      'Responsive',
      'Bloc',
    ],
  ),
  Project(
    name: 'TMail',
    description:
        "An Opensource Project distributed by Linagora, the application has similar feature as Gmail.",
    image: 'images/projects/tmail.png',
    url: 'https://github.com/linagora/tmail-flutter',
    skills: [
      'Dart',
      'Flutter',
      'Responsive',
      'IMap Protocol',
      'Clean Architechture',
      'GetX',
    ],
  ),
  Project(
    name: 'NameBook',
    description:
        "A FLutter application like facebook messenger which has audio / video calling, chat messenger and other features,  this app used for japanese company that need an app to communicate between employees",
    image: 'images/projects/namebook.jpeg',
    url: '',
    skills: [
      'Dart',
      'Method-Channel',
      'Platform-View',
      'Flutter',
      'Agora engine',
      'Call Kit',
      'Push Kit',
      'Git',
    ],
  ),
  Project(
    name: 'Sellove',
    description:
        "Sellove is the free broadcasting app and streaming tool for creators for you to sell stuffs by using your camera, go live with just a few taps to the largest social live video streaming platforms! Chat with people all over the world as they watch you experience wonderful products and broadcast everyday adventures in real-time",
    image: 'images/projects/sellove.jpeg',
    url: 'https://play.google.com/store/apps/details?id=com.sellove.service',
    skills: [
      'Dart',
      'Method-Channel',
      'Platform-View',
      'Flutter',
      'Open-tok',
      'Git',
    ],
  ),
  Project(
    name: 'CustomDat',
    description:
        'CustomDat is a application allows people to customize T-shirt, Mugs, Cases, ... then those designs will be printed and delivery to users',
    image: 'images/projects/customdat.png',
    url: 'https://apps.apple.com/es/app/customdat/id1286539618',
    skills: [
      'Swift',
      'RxSwift',
      'Node.js',
      'MongoDB',
    ],
  ),
  Project(
    name: 'Memvisit',
    description:
        'Memvisit mobile app is part of healthcare communication platform. It allows you to connect with your beloved ones in a secure, simple manner, plus smooth user experience.With the mission to connect people, encourage everyone to spend more time for family members especially the child-parent relationship. This app is a communication tool in healthcare, where anyone can keep contactable, updated more regularly between doctors, patients and their relatives.',
    image: 'images/projects/memvisit.jpeg',
    url: 'https://apps.apple.com/app/memvisit/id1458578295',
    skills: [
      'Swift',
      'RxSwift',
      'Node.js',
      'MongoDB',
    ],
  ),
];
