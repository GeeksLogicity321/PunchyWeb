class HomeMatchesModel {
  MatchInfo? matchInfo;
  MatchScore? matchScore;

  HomeMatchesModel({this.matchInfo, this.matchScore});

  HomeMatchesModel.fromJson(Map<String, dynamic> json) {
    matchInfo = json['matchInfo'] != null
        ? MatchInfo.fromJson(json['matchInfo'])
        : null;
    matchScore = json['matchScore'] != null
        ? MatchScore.fromJson(json['matchScore'])
        : null;
  }
}

class MatchInfo {
  int? matchId;
  int? seriesId;
  String? seriesName;
  String? matchDesc;
  String? matchFormat;
  String? startDate;
  String? endDate;
  String? state;
  String? status;
  Team1? team1;
  Team1? team2;
  VenueInfo? venueInfo;
  int? currBatTeamId;
  String? seriesStartDt;
  String? seriesEndDt;
  bool? isTimeAnnounced;
  String? stateTitle;
  bool? isFantasyEnabled;

  MatchInfo(
      {matchId,
      seriesId,
      seriesName,
      matchDesc,
      matchFormat,
      startDate,
      endDate,
      state,
      status,
      team1,
      team2,
      venueInfo,
      currBatTeamId,
      seriesStartDt,
      seriesEndDt,
      isTimeAnnounced,
      stateTitle,
      isFantasyEnabled});

  MatchInfo.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    seriesId = json['seriesId'];
    seriesName = json['seriesName'];
    matchDesc = json['matchDesc'];
    matchFormat = json['matchFormat'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    state = json['state'];
    status = json['status'];
    team1 = json['team1'] != null ? Team1.fromJson(json['team1']) : null;
    team2 = json['team2'] != null ? Team1.fromJson(json['team2']) : null;
    venueInfo = json['venueInfo'] != null
        ? VenueInfo.fromJson(json['venueInfo'])
        : null;
    currBatTeamId = json['currBatTeamId'];
    seriesStartDt = json['seriesStartDt'];
    seriesEndDt = json['seriesEndDt'];
    isTimeAnnounced = json['isTimeAnnounced'];
    stateTitle = json['stateTitle'];
    isFantasyEnabled = json['isFantasyEnabled'];
  }
}

class Team1 {
  int? teamId;
  String? teamName;
  String? teamSName;
  int? imageId;

  Team1({teamId, teamName, teamSName, imageId});

  Team1.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'];
    teamName = json['teamName'];
    teamSName = json['teamSName'];
    imageId = json['imageId'];
  }
}

class VenueInfo {
  int? id;
  String? ground;
  String? city;
  String? timezone;
  String? latitude;
  String? longitude;

  VenueInfo({id, ground, city, timezone, latitude, longitude});

  VenueInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ground = json['ground'];
    city = json['city'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
}

class MatchScore {
  Team1Score? team1Score;
  Team1Score? team2Score;

  MatchScore({team1Score, team2Score});

  MatchScore.fromJson(Map<String, dynamic> json) {
    team1Score = json['team1Score'] != null
        ? Team1Score.fromJson(json['team1Score'])
        : null;
    team2Score =
        json['team2Score'] != null && json['team2Score'].isEmpty == false
            ? Team1Score.fromJson(json['team2Score'])
            : null;
  }
}

class Team1Score {
  Inngs1? inngs1;

  Team1Score({inngs1});

  Team1Score.fromJson(Map<String, dynamic> json) {
    inngs1 = json['inngs1'] != null ? Inngs1.fromJson(json['inngs1']) : null;
  }
}

class Inngs1 {
  int? inningsId;
  num? runs;
  int? wickets;
  num? overs;

  Inngs1({inningsId, runs, wickets, overs});

  Inngs1.fromJson(Map<String, dynamic> json) {
    inningsId = json['inningsId'];
    runs = json['runs'];
    wickets = json['wickets'];
    overs = json['overs'];
  }
}
