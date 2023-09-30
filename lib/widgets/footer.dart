import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xeab8f2),
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialMediaLink(
            image: AssetImage('assets/icons/github.png'),
            url: 'https://www.github.com',
            title: Text(
              "Github",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
          ),
          SocialMediaLink(
            image: AssetImage('assets/icons/hashnode.png'),
            url: 'https://hashnode.com',
            title: Text(
              "Hashnode",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
          ),
          SocialMediaLink(
            image: AssetImage('assets/icons/linkedin.png'),
            url: 'https://www.linkedin.com',
            title: Text(
              "Linkedin",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SocialMediaLink extends StatelessWidget {
  final AssetImage image;
  final String url;
  final Text title;

  SocialMediaLink({
    Key? key,
    required this.url,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(url);

    Future<void> _launchUrl() async {
      if (await canLaunch(_url.toString())) {
        await launch(_url.toString());
      } else {
        throw Exception('Could not launch $_url');
      }
    }

    return Padding(
      padding: EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          _launchUrl();
        },
        child: Column(
          children: [
            Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF58B1FA),
              ),
              child: Center(
                child: Image(
                  image: image,
                  width: 32.0,
                  height: 32.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 8.0),
            title,
          ],
        ),
      ),
    );
  }
}
