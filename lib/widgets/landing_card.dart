import 'package:flutter/material.dart';
import 'package:whitemouse_play/common/utils.dart';

class LandingCard extends StatelessWidget {
  const LandingCard({super.key, required this.image, required this.name});
  final ImageProvider image;
  final String name;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: (size.height * 0.33 < 500) ? 500 : size.height * 0.33,
      width: size.width,
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: (size.height * 0.33 < 500) ? 500 : size.height * 0.33,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(fit: BoxFit.cover, image: image)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    backgroundPrimary.withOpacity(0.50),
                    backgroundPrimary.withOpacity(0.75),
                    backgroundPrimary.withOpacity(1.00),
                  ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    backgroundPrimary.withOpacity(0.80),
                    backgroundPrimary.withOpacity(0.60),
                    backgroundPrimary.withOpacity(0.40),
                    Colors.transparent
                  ]),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 70),
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            width: size.width,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
            width: size.width,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(size.width, 60),
              ),
              child: const Text('재생하기'),
            ),
          ),
        ],
      ),
    );
  }
}
