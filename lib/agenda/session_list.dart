import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_devfest/home/session.dart';
import 'package:flutter_devfest/utils/tools.dart';

class SessionList extends StatelessWidget {
  final List<Session> allSessions;

  const SessionList({Key key, @required this.allSessions}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: allSessions.length,
      itemBuilder: (c, i) {
        // return Text("sdd");
        return Card(
          elevation: 0.0,
          child: ListTile(
            // dense: true,
            isThreeLine: true,
            trailing: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "${allSessions[i].sessionTotalTime}\n",
                style: Theme.of(context)
                    .textTheme
                    .title
                    .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: allSessions[i].sessionStartTime,
                    style: Theme.of(context).textTheme.subtitle.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              ),
            ),

            title: RichText(
              text: TextSpan(
                text: "${allSessions[i].sessionTitle}\n",
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                      text: allSessions[i].speakerName,
                      style: Theme.of(context).textTheme.subtitle.copyWith(
                            fontSize: 14,
                            color: Tools.multiColors[Random().nextInt(4)],
                          ),
                      children: []),
                ],
              ),
            ),
            subtitle: Text(
              allSessions[i].speakerDesc,
              style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 10.0,
                  ),
            ),
          ),
        );
      },
    );
  }
}
