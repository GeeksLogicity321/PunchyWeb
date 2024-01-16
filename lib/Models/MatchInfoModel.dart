class MatchInfoModel {
  MatchInfo? matchInfo;
  VenueInfo? venueInfo;

  MatchInfoModel({
    this.matchInfo,
    this.venueInfo,
  });

  MatchInfoModel.fromJson(Map<String, dynamic> json) {
    matchInfo = json['matchInfo'] != null
        ? MatchInfo.fromJson(json['matchInfo'])
        : null;
    venueInfo = json['venueInfo'] != null
        ? VenueInfo.fromJson(json['venueInfo'])
        : null;
  }
}

class MatchInfo {
  int? matchId;
  String? matchDescription;
  String? matchFormat;
  String? matchType;
  bool? complete;
  bool? domestic;
  int? matchStartTimestamp;
  int? matchCompleteTimestamp;
  bool? dayNight;
  int? year;
  String? state;
  Team1? team1;
  Team1? team2;
  Series? series;
  Umpire1? umpire1;
  Umpire1? umpire2;
  Umpire1? umpire3;
  Umpire1? referee;
  TossResults? tossResults;
  Result? result;
  Venue? venue;
  String? status;
  List<PlayersOfTheMatch>? playersOfTheMatch;
  List<PlayersOfTheSeries>? playersOfTheSeries;
  RevisedTarget? revisedTarget;
  List<MatchTeamInfo>? matchTeamInfo;
  bool? isMatchNotCovered;
  int? hYSEnabled;
  bool? livestreamEnabled;
  bool? isFantasyEnabled;
  List<String>? livestreamEnabledGeo;
  String? alertType;
  String? shortStatus;

  MatchInfo(
      {this.matchId,
      this.matchDescription,
      this.matchFormat,
      this.matchType,
      this.complete,
      this.domestic,
      this.matchStartTimestamp,
      this.matchCompleteTimestamp,
      this.dayNight,
      this.year,
      this.state,
      this.team1,
      this.team2,
      this.series,
      this.umpire1,
      this.umpire2,
      this.umpire3,
      this.referee,
      this.tossResults,
      this.result,
      this.venue,
      this.status,
      this.playersOfTheMatch,
      this.playersOfTheSeries,
      this.revisedTarget,
      this.matchTeamInfo,
      this.isMatchNotCovered,
      this.hYSEnabled,
      this.livestreamEnabled,
      this.isFantasyEnabled,
      this.livestreamEnabledGeo,
      this.alertType,
      this.shortStatus});

  MatchInfo.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    matchDescription = json['matchDescription'];
    matchFormat = json['matchFormat'];
    matchType = json['matchType'];
    complete = json['complete'];
    domestic = json['domestic'];
    matchStartTimestamp = json['matchStartTimestamp'];
    matchCompleteTimestamp = json['matchCompleteTimestamp'];
    dayNight = json['dayNight'];
    year = json['year'];
    state = json['state'];
    team1 = json['team1'] != null ? Team1.fromJson(json['team1']) : null;
    team2 = json['team2'] != null ? Team1.fromJson(json['team2']) : null;
    series = json['series'] != null ? Series.fromJson(json['series']) : null;
    umpire1 =
        json['umpire1'] != null ? Umpire1.fromJson(json['umpire1']) : null;
    umpire2 =
        json['umpire2'] != null ? Umpire1.fromJson(json['umpire2']) : null;
    umpire3 =
        json['umpire3'] != null ? Umpire1.fromJson(json['umpire3']) : null;
    referee =
        json['referee'] != null ? Umpire1.fromJson(json['referee']) : null;
    tossResults = json['tossResults'] != null
        ? TossResults.fromJson(json['tossResults'])
        : null;
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    status = json['status'];
    if (json['playersOfTheMatch'] != null) {
      playersOfTheMatch = <PlayersOfTheMatch>[];
      json['playersOfTheMatch'].forEach((v) {
        playersOfTheMatch!.add(PlayersOfTheMatch.fromJson(v));
      });
    }
    if (json['playersOfTheSeries'] != null) {
      playersOfTheSeries = <PlayersOfTheSeries>[];
      json['playersOfTheSeries'].forEach((v) {
        playersOfTheSeries!.add(PlayersOfTheSeries.fromJson(v));
      });
    }
    revisedTarget = json['revisedTarget'] != null
        ? RevisedTarget.fromJson(json['revisedTarget'])
        : null;
    if (json['matchTeamInfo'] != null) {
      matchTeamInfo = <MatchTeamInfo>[];
      json['matchTeamInfo'].forEach((v) {
        matchTeamInfo!.add(MatchTeamInfo.fromJson(v));
      });
    }
    isMatchNotCovered = json['isMatchNotCovered'];
    hYSEnabled = json['HYSEnabled'];
    livestreamEnabled = json['livestreamEnabled'];
    isFantasyEnabled = json['isFantasyEnabled'];
    livestreamEnabledGeo = json['livestreamEnabledGeo'].cast<String>();
    alertType = json['alertType'];
    shortStatus = json['shortStatus'];
  }
}

class Team1 {
  int? id;
  String? name;
  List<PlayerDetails>? playerDetails;
  String? shortName;

  Team1({this.id, this.name, this.playerDetails, this.shortName});

  Team1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['playerDetails'] != null) {
      playerDetails = <PlayerDetails>[];
      json['playerDetails'].forEach((v) {
        playerDetails!.add(PlayerDetails.fromJson(v));
      });
    }
    shortName = json['shortName'];
  }
}

class PlayerDetails {
  int? id;
  String? name;
  String? fullName;
  String? nickName;
  bool? captain;
  String? role;
  bool? keeper;
  bool? substitute;
  int? teamId;
  String? battingStyle;
  String? bowlingStyle;
  String? teamName;
  int? faceImageId;
  String? playingXIChange;
  bool? isSupportStaff;

  PlayerDetails(
      {this.id,
      this.name,
      this.fullName,
      this.nickName,
      this.captain,
      this.role,
      this.keeper,
      this.substitute,
      this.teamId,
      this.battingStyle,
      this.bowlingStyle,
      this.teamName,
      this.faceImageId,
      this.playingXIChange,
      this.isSupportStaff});

  PlayerDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fullName = json['fullName'];
    nickName = json['nickName'];
    captain = json['captain'];
    role = json['role'];
    keeper = json['keeper'];
    substitute = json['substitute'];
    teamId = json['teamId'];
    battingStyle = json['battingStyle'];
    bowlingStyle = json['bowlingStyle'];
    teamName = json['teamName'];
    faceImageId = json['faceImageId'];
    playingXIChange = json['playingXIChange'];
    isSupportStaff = json['isSupportStaff'];
  }
}

class Series {
  int? id;
  String? name;
  String? seriesType;
  int? startDate;
  int? endDate;
  String? seriesFolder;
  String? odiSeriesResult;
  String? t20SeriesResult;
  String? testSeriesResult;

  Series(
      {this.id,
      this.name,
      this.seriesType,
      this.startDate,
      this.endDate,
      this.seriesFolder,
      this.odiSeriesResult,
      this.t20SeriesResult,
      this.testSeriesResult});

  Series.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    seriesType = json['seriesType'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    seriesFolder = json['seriesFolder'];
    odiSeriesResult = json['odiSeriesResult'];
    t20SeriesResult = json['t20SeriesResult'];
    testSeriesResult = json['testSeriesResult'];
  }
}

class Umpire1 {
  int? id;
  String? name;
  String? country;

  Umpire1({this.id, this.name, this.country});

  Umpire1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
  }
}

class TossResults {
  int? tossWinnerId;
  String? tossWinnerName;
  String? decision;

  TossResults({this.tossWinnerId, this.tossWinnerName, this.decision});

  TossResults.fromJson(Map<String, dynamic> json) {
    tossWinnerId = json['tossWinnerId'];
    tossWinnerName = json['tossWinnerName'];
    decision = json['decision'];
  }
}

class Result {
  String? resultType;
  String? winningTeam;
  int? winningteamId;
  int? winningMargin;
  bool? winByRuns;
  bool? winByInnings;

  Result(
      {this.resultType,
      this.winningTeam,
      this.winningteamId,
      this.winningMargin,
      this.winByRuns,
      this.winByInnings});

  Result.fromJson(Map<String, dynamic> json) {
    resultType = json['resultType'];
    winningTeam = json['winningTeam'];
    winningteamId = json['winningteamId'];
    winningMargin = json['winningMargin'];
    winByRuns = json['winByRuns'];
    winByInnings = json['winByInnings'];
  }
}

class Venue {
  int? id;
  String? name;
  String? city;
  String? country;
  String? timezone;
  String? latitude;
  String? longitude;

  Venue(
      {this.id,
      this.name,
      this.city,
      this.country,
      this.timezone,
      this.latitude,
      this.longitude});

  Venue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    timezone = json['timezone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
}

class PlayersOfTheMatch {
  int? id;
  String? name;
  String? fullName;
  String? nickName;
  bool? captain;
  bool? keeper;
  bool? substitute;
  String? teamName;
  int? faceImageId;

  PlayersOfTheMatch(
      {this.id,
      this.name,
      this.fullName,
      this.nickName,
      this.captain,
      this.keeper,
      this.substitute,
      this.teamName,
      this.faceImageId});

  PlayersOfTheMatch.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fullName = json['fullName'];
    nickName = json['nickName'];
    captain = json['captain'];
    keeper = json['keeper'];
    substitute = json['substitute'];
    teamName = json['teamName'];
    faceImageId = json['faceImageId'];
  }
}

class PlayersOfTheSeries {
  int? id;
  String? name;
  String? fullName;
  String? nickName;
  bool? captain;
  bool? keeper;
  bool? substitute;
  String? bowlingStyle;
  int? faceImageId;

  PlayersOfTheSeries(
      {this.id,
      this.name,
      this.fullName,
      this.nickName,
      this.captain,
      this.keeper,
      this.substitute,
      this.bowlingStyle,
      this.faceImageId});

  PlayersOfTheSeries.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fullName = json['fullName'];
    nickName = json['nickName'];
    captain = json['captain'];
    keeper = json['keeper'];
    substitute = json['substitute'];
    bowlingStyle = json['bowlingStyle'];
    faceImageId = json['faceImageId'];
  }
}

class RevisedTarget {
  String? reason;

  RevisedTarget({this.reason});

  RevisedTarget.fromJson(Map<String, dynamic> json) {
    reason = json['reason'];
  }
}

class MatchTeamInfo {
  int? battingTeamId;
  String? battingTeamShortName;
  int? bowlingTeamId;
  String? bowlingTeamShortName;

  MatchTeamInfo(
      {this.battingTeamId,
      this.battingTeamShortName,
      this.bowlingTeamId,
      this.bowlingTeamShortName});

  MatchTeamInfo.fromJson(Map<String, dynamic> json) {
    battingTeamId = json['battingTeamId'];
    battingTeamShortName = json['battingTeamShortName'];
    bowlingTeamId = json['bowlingTeamId'];
    bowlingTeamShortName = json['bowlingTeamShortName'];
  }
}

class VenueInfo {
  int? established;
  String? capacity;
  String? knownAs;
  String? city;
  String? country;
  String? timezone;
  String? homeTeam;
  bool? floodlights;
  String? profile;
  String? imageUrl;
  String? ground;
  int? groundLength;
  int? groundWidth;

  VenueInfo({
    this.established,
    this.capacity,
    this.knownAs,
    this.city,
    this.country,
    this.timezone,
    this.homeTeam,
    this.floodlights,
    this.profile,
    this.imageUrl,
    this.ground,
    this.groundLength,
    this.groundWidth,
  });

  VenueInfo.fromJson(Map<String, dynamic> json) {
    established = json['established'];
    capacity = json['capacity'];
    knownAs = json['knownAs'];
    city = json['city'];
    country = json['country'];
    timezone = json['timezone'];
    homeTeam = json['homeTeam'];
    floodlights = json['floodlights'];

    profile = json['profile'];
    imageUrl = json['imageUrl'];
    ground = json['ground'];
    groundLength = json['groundLength'];
    groundWidth = json['groundWidth'];
  }
}
