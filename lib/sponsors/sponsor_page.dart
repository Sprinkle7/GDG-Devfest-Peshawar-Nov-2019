import 'package:flutter/material.dart';
import 'package:flutter_devfest/universal/dev_scaffold.dart';

class SponsorPage extends StatelessWidget {
  static const String routeName = "/sponsor";

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = HomeBloc();
    return DevScaffold(
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/gd.png')
            ),
          ),

          SizedBox(
            height: 30,
          ),

          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo5.png')
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo4.png')
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo7.png')
            ),
          ),

          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset('assets/logo1.png')
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo2.png')
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo3.png')
            ),
          ),
          SizedBox(
            height: 30,
          ),

          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo8.png')
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/logo6.png')
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/jetbrains.png')
            ),
          ),

        ],
      ),
      title: "Sponsors",
    );
  }
}

class SponsorImage extends StatelessWidget {
  final String imgUrl;

  const SponsorImage({Key key, this.imgUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
