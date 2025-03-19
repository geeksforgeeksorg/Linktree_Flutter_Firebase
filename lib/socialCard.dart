import 'package:flutter/material.dart';
import 'package:geeks_for_geeks/animated_container.dart';

// resume
CustomAnimatedContainer resume() {
  return CustomAnimatedContainer(
    containerColor: Color.fromARGB(255, 245, 176, 3),
    borderColor: Color.fromARGB(
        255, 245, 176, 3), // Change this to the desired border color
    imagePath: 'assets/resume.png',
    text: 'Latest Resume',
    linkUrl: '', //Paste your resume link here
  );
}

// portfolio
CustomAnimatedContainer portfolio() {
  return CustomAnimatedContainer(
    containerColor: Colors.deepPurpleAccent,
    borderColor: Colors.deepPurpleAccent,
    imagePath: 'assets/portfolio.png',
    text: 'Portfolio',
    linkUrl: '', //Paste your resume link here
  );
}

// twitter
CustomAnimatedContainer twitter() {
  return CustomAnimatedContainer(
    containerColor: Colors.lightBlue,
    borderColor: Colors.lightBlue,
    imagePath: 'assets/x.png',
    text: 'Twitter',
    linkUrl: '', //Paste your resume link here
  );
}

// github
CustomAnimatedContainer github() {
  return CustomAnimatedContainer(
    containerColor: Colors.black38,
    borderColor: Colors.black38,
    imagePath: 'assets/git.png',
    text: 'GtiHub',
    linkUrl: '', //Paste your resume link here
  );
}

// linkedin
CustomAnimatedContainer linkedin() {
  return CustomAnimatedContainer(
    containerColor: Colors.blueAccent,
    borderColor: Colors.blueAccent,
    imagePath: 'assets/linkedin.png',
    text: 'LinkedIn',
    linkUrl: '', //Paste your resume link here
  );
}

// instagram
CustomAnimatedContainer instagram() {
  return CustomAnimatedContainer(
    containerColor: Colors.pink,
    borderColor: Colors.pink, // Change this to the desired border color
    imagePath: 'assets/insta.png',
    text: 'Instagram',
    linkUrl: '', //Paste your resume link here
  );
}
// youtube

CustomAnimatedContainer youtube() {
  return CustomAnimatedContainer(
    containerColor: Colors.red,
    borderColor: Colors.red, // Change this to the desired border color
    imagePath: 'assets/youtube.png',
    text: 'YouTube',
    linkUrl: '', //Paste your resume link here
  );
}

// gmail
CustomAnimatedContainer gmail() {
  return CustomAnimatedContainer(
    containerColor: Colors.redAccent,
    borderColor: Colors.redAccent, // Change this to the desired border color
    imagePath: 'assets/mail.png',
    text: 'Gmail',
    linkUrl: 'mailto:gfg123@gmail.com', //Paste your resume link here
  );
}

// geeksforgeeks
CustomAnimatedContainer geeksforgeeks() {
  return CustomAnimatedContainer(
    containerColor: Colors.green,
    borderColor: Colors.green, // Change this to the desired border color
    imagePath: 'assets/gfg.png',
    text: 'GeeksForGeeks',
    linkUrl: 'https://www.geeksforgeeks.org', //Paste your resume link here
  );
}

// playstore
CustomAnimatedContainer playstore() {
  return CustomAnimatedContainer(
    containerColor: Colors.lightBlueAccent,
    borderColor:
        Colors.lightBlueAccent, // Change this to the desired border color
    imagePath: 'assets/playstore.png',
    text: 'PlayStore',
    linkUrl: '', //Paste your resume link here
  );
}

// whatsapp
CustomAnimatedContainer whatsapp() {
  return CustomAnimatedContainer(
    containerColor: Colors.green,
    borderColor: Colors.green, // Change this to the desired border color
    imagePath: 'assets/whatsapp.png',
    text: 'WhatsApp',
    linkUrl: '', //Paste your resume link here
  );
}
