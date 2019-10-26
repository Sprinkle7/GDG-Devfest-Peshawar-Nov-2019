import 'package:flutter/material.dart';

class TeamsData {
  List<Team> teams;

  TeamsData({this.teams});

  TeamsData.fromJson(Map<String, dynamic> json) {
    if (json['teams'] != null) {
      teams = new List<Team>();
      json['teams'].forEach((v) {
        teams.add(Team.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Team {
  String name;
  String desc;
  String job;
  String image;
  String speciality;
  String fbUrl;
  String twitterUrl;
  String instagramUrl;
  String contribution;

  Team(
      {this.name,
      this.desc,
      this.job,
      this.image,
      this.speciality,
      this.fbUrl,
      this.twitterUrl,
      this.instagramUrl,
      this.contribution});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    job = json['job'];
    image = json['image'];
    speciality = json['speciality'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    instagramUrl = json['instagram_url'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['job'] = this.job;
    data['image'] = this.image;
    data['speciality'] = this.speciality;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['instagram_url'] = this.instagramUrl;
    data['contribution'] = this.contribution;
    return data;
  }
}

List<Team> teams = [];
