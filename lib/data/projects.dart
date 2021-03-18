class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Sellove',
    description:
        "Sellove is the free broadcasting app and streaming tool for creators for you to sell stuffs by using your camera, go live with just a few taps to the largest social live video streaming platforms! Chat with people all over the world as they watch you experience wonderful products and broadcast everyday adventures in real-time",
    image: 'images/projects/sellove.jpeg',
    url: '',
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
      'Php',
      'SQL',
      'Laravel',
      'Git',
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
      'Php',
      'SQL',
      'Laravel',
      'Git',
    ],
  ),
];
