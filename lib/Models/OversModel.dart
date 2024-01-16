class OversModel {
  int? inningsId;
  BatsmanStriker? batsmanStriker;
  BatsmanNonStriker? batsmanNonStriker;
  BatTeam? batTeam;
  BowlerStriker? bowlerStriker;
  BowlerNonStriker? bowlerNonStriker;
  double? overs;
  String? recentOvsStats;
  int? target;
  PartnerShip? partnerShip;
  num? currentRunRate;
  num? requiredRunRate;
  String? lastWicket;
  MatchScoreDetails? matchScoreDetails;
  List<LatestPerformance>? latestPerformance;
  PpData? ppData;
  MatchUdrs? matchUdrs;
  List<OverSummaryList>? overSummaryList;
  String? status;
  int? lastWicketScore;
  int? remRunsToWin;
  MatchHeader? matchHeader;
  int? responseLastUpdated;
  String? event;

  OversModel(
      {this.inningsId,
      this.batsmanStriker,
      this.batsmanNonStriker,
      this.batTeam,
      this.bowlerStriker,
      this.bowlerNonStriker,
      this.overs,
      this.recentOvsStats,
      this.target,
      this.partnerShip,
      this.currentRunRate,
      this.requiredRunRate,
      this.lastWicket,
      this.matchScoreDetails,
      this.latestPerformance,
      this.ppData,
      this.matchUdrs,
      this.overSummaryList,
      this.status,
      this.lastWicketScore,
      this.remRunsToWin,
      this.matchHeader,
      this.responseLastUpdated,
      this.event});

  OversModel.fromJson(Map<String, dynamic> json) {
    inningsId = json['inningsId'];
    batsmanStriker = json['batsmanStriker'] != null
        ? BatsmanStriker.fromJson(json['batsmanStriker'])
        : null;
    batsmanNonStriker = json['batsmanNonStriker'] != null
        ? BatsmanNonStriker.fromJson(json['batsmanNonStriker'])
        : null;
    batTeam =
        json['batTeam'] != null ? BatTeam.fromJson(json['batTeam']) : null;
    bowlerStriker = json['bowlerStriker'] != null
        ? BowlerStriker.fromJson(json['bowlerStriker'])
        : null;
    bowlerNonStriker = json['bowlerNonStriker'] != null
        ? BowlerNonStriker.fromJson(json['bowlerNonStriker'])
        : null;
    overs = json['overs'];
    recentOvsStats = json['recentOvsStats'];
    target = json['target'];
    partnerShip = json['partnerShip'] != null
        ? PartnerShip.fromJson(json['partnerShip'])
        : null;
    currentRunRate = json['currentRunRate'];
    requiredRunRate = json['requiredRunRate'];
    lastWicket = json['lastWicket'];
    matchScoreDetails = json['matchScoreDetails'] != null
        ? MatchScoreDetails.fromJson(json['matchScoreDetails'])
        : null;
    if (json['latestPerformance'] != null) {
      latestPerformance = <LatestPerformance>[];
      json['latestPerformance'].forEach((v) {
        latestPerformance!.add(LatestPerformance.fromJson(v));
      });
    }
    ppData = json['ppData'] != null ? PpData.fromJson(json['ppData']) : null;
    matchUdrs = json['matchUdrs'] != null
        ? MatchUdrs.fromJson(json['matchUdrs'])
        : null;
    if (json['overSummaryList'] != null) {
      overSummaryList = <OverSummaryList>[];
      json['overSummaryList'].forEach((v) {
        overSummaryList!.add(OverSummaryList.fromJson(v));
      });
    }
    status = json['status'];
    lastWicketScore = json['lastWicketScore'];
    remRunsToWin = json['remRunsToWin'];
    matchHeader = json['matchHeader'] != null
        ? MatchHeader.fromJson(json['matchHeader'])
        : null;
    responseLastUpdated = json['responseLastUpdated'];
    event = json['event'];
  }
}

class BatsmanStriker {
  int? batBalls;
  int? batDots;
  int? batFours;
  int? batId;
  String? batName;
  int? batMins;
  int? batRuns;
  int? batSixes;
  num? batStrikeRate;

  BatsmanStriker(
      {this.batBalls,
      this.batDots,
      this.batFours,
      this.batId,
      this.batName,
      this.batMins,
      this.batRuns,
      this.batSixes,
      this.batStrikeRate});

  BatsmanStriker.fromJson(Map<String, dynamic> json) {
    batBalls = json['batBalls'];
    batDots = json['batDots'];
    batFours = json['batFours'];
    batId = json['batId'];
    batName = json['batName'];
    batMins = json['batMins'];
    batRuns = json['batRuns'];
    batSixes = json['batSixes'];
    batStrikeRate = json['batStrikeRate'];
  }
}

class BatsmanNonStriker {
  int? batBalls;
  int? batDots;
  int? batFours;
  int? batId;
  String? batName;
  int? batMins;
  int? batRuns;
  int? batSixes;
  num? batStrikeRate;

  BatsmanNonStriker(
      {this.batBalls,
      this.batDots,
      this.batFours,
      this.batId,
      this.batName,
      this.batMins,
      this.batRuns,
      this.batSixes,
      this.batStrikeRate});

  BatsmanNonStriker.fromJson(Map<String, dynamic> json) {
    batBalls = json['batBalls'];
    batDots = json['batDots'];
    batFours = json['batFours'];
    batId = json['batId'];
    batName = json['batName'];
    batMins = json['batMins'];
    batRuns = json['batRuns'];
    batSixes = json['batSixes'];
    batStrikeRate = json['batStrikeRate'];
  }
}

class BatTeam {
  int? teamId;
  int? teamScore;
  int? teamWkts;

  BatTeam({this.teamId, this.teamScore, this.teamWkts});

  BatTeam.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'];
    teamScore = json['teamScore'];
    teamWkts = json['teamWkts'];
  }
}

class BowlerStriker {
  int? bowlId;
  String? bowlName;
  int? bowlMaidens;
  int? bowlNoballs;
  num? bowlOvs;
  int? bowlRuns;
  int? bowlWides;
  int? bowlWkts;
  num? bowlEcon;

  BowlerStriker(
      {this.bowlId,
      this.bowlName,
      this.bowlMaidens,
      this.bowlNoballs,
      this.bowlOvs,
      this.bowlRuns,
      this.bowlWides,
      this.bowlWkts,
      this.bowlEcon});

  BowlerStriker.fromJson(Map<String, dynamic> json) {
    bowlId = json['bowlId'];
    bowlName = json['bowlName'];
    bowlMaidens = json['bowlMaidens'];
    bowlNoballs = json['bowlNoballs'];
    bowlOvs = json['bowlOvs'];
    bowlRuns = json['bowlRuns'];
    bowlWides = json['bowlWides'];
    bowlWkts = json['bowlWkts'];
    bowlEcon = json['bowlEcon'];
  }
}

class BowlerNonStriker {
  int? bowlId;
  String? bowlName;
  int? bowlMaidens;
  int? bowlNoballs;
  int? bowlOvs;
  int? bowlRuns;
  int? bowlWides;
  int? bowlWkts;
  num? bowlEcon;

  BowlerNonStriker(
      {this.bowlId,
      this.bowlName,
      this.bowlMaidens,
      this.bowlNoballs,
      this.bowlOvs,
      this.bowlRuns,
      this.bowlWides,
      this.bowlWkts,
      this.bowlEcon});

  BowlerNonStriker.fromJson(Map<String, dynamic> json) {
    bowlId = json['bowlId'];
    bowlName = json['bowlName'];
    bowlMaidens = json['bowlMaidens'];
    bowlNoballs = json['bowlNoballs'];
    bowlOvs = json['bowlOvs'];
    bowlRuns = json['bowlRuns'];
    bowlWides = json['bowlWides'];
    bowlWkts = json['bowlWkts'];
    bowlEcon = json['bowlEcon'];
  }
}

class PartnerShip {
  int? balls;
  int? runs;

  PartnerShip({this.balls, this.runs});

  PartnerShip.fromJson(Map<String, dynamic> json) {
    balls = json['balls'];
    runs = json['runs'];
  }
}

class MatchScoreDetails {
  int? matchId;
  List<InningsScoreList>? inningsScoreList;
  TossResults? tossResults;
  List<MatchTeamInfo>? matchTeamInfo;
  bool? isMatchNotCovered;
  String? matchFormat;
  String? state;
  String? customStatus;
  int? highlightedTeamId;

  MatchScoreDetails(
      {this.matchId,
      this.inningsScoreList,
      this.tossResults,
      this.matchTeamInfo,
      this.isMatchNotCovered,
      this.matchFormat,
      this.state,
      this.customStatus,
      this.highlightedTeamId});

  MatchScoreDetails.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    if (json['inningsScoreList'] != null) {
      inningsScoreList = <InningsScoreList>[];
      json['inningsScoreList'].forEach((v) {
        inningsScoreList!.add(InningsScoreList.fromJson(v));
      });
    }
    tossResults = json['tossResults'] != null
        ? TossResults.fromJson(json['tossResults'])
        : null;
    if (json['matchTeamInfo'] != null) {
      matchTeamInfo = <MatchTeamInfo>[];
      json['matchTeamInfo'].forEach((v) {
        matchTeamInfo!.add(MatchTeamInfo.fromJson(v));
      });
    }
    isMatchNotCovered = json['isMatchNotCovered'];
    matchFormat = json['matchFormat'];
    state = json['state'];
    customStatus = json['customStatus'];
    highlightedTeamId = json['highlightedTeamId'];
  }
}

class InningsScoreList {
  int? inningsId;
  int? batTeamId;
  String? batTeamName;
  int? score;
  int? wickets;
  double? overs;
  bool? isDeclared;
  bool? isFollowOn;
  int? ballNbr;

  InningsScoreList(
      {this.inningsId,
      this.batTeamId,
      this.batTeamName,
      this.score,
      this.wickets,
      this.overs,
      this.isDeclared,
      this.isFollowOn,
      this.ballNbr});

  InningsScoreList.fromJson(Map<String, dynamic> json) {
    inningsId = json['inningsId'];
    batTeamId = json['batTeamId'];
    batTeamName = json['batTeamName'];
    score = json['score'];
    wickets = json['wickets'];
    overs = json['overs'];
    isDeclared = json['isDeclared'];
    isFollowOn = json['isFollowOn'];
    ballNbr = json['ballNbr'];
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

class LatestPerformance {
  int? runs;
  int? wkts;
  String? label;

  LatestPerformance({this.runs, this.wkts, this.label});

  LatestPerformance.fromJson(Map<String, dynamic> json) {
    runs = json['runs'];
    wkts = json['wkts'];
    label = json['label'];
  }
}

class PpData {
  Pp1? pp1;

  PpData({this.pp1});

  PpData.fromJson(Map<String, dynamic> json) {
    pp1 = json['pp_1'] != null ? Pp1.fromJson(json['pp_1']) : null;
  }
}

class Pp1 {
  int? ppId;
  double? ppOversFrom;
  int? ppOversTo;
  String? ppType;
  int? runsScored;

  Pp1(
      {this.ppId,
      this.ppOversFrom,
      this.ppOversTo,
      this.ppType,
      this.runsScored});

  Pp1.fromJson(Map<String, dynamic> json) {
    ppId = json['ppId'];
    ppOversFrom = json['ppOversFrom'];
    ppOversTo = json['ppOversTo'];
    ppType = json['ppType'];
    runsScored = json['runsScored'];
  }
}

class MatchUdrs {
  int? matchId;
  int? inningsId;
  String? timestamp;
  int? team1Id;
  int? team1Remaining;
  int? team1Successful;
  int? team1Unsuccessful;
  int? team2Id;
  int? team2Remaining;
  int? team2Successful;
  int? team2Unsuccessful;

  MatchUdrs(
      {this.matchId,
      this.inningsId,
      this.timestamp,
      this.team1Id,
      this.team1Remaining,
      this.team1Successful,
      this.team1Unsuccessful,
      this.team2Id,
      this.team2Remaining,
      this.team2Successful,
      this.team2Unsuccessful});

  MatchUdrs.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    inningsId = json['inningsId'];
    timestamp = json['timestamp'];
    team1Id = json['team1Id'];
    team1Remaining = json['team1Remaining'];
    team1Successful = json['team1Successful'];
    team1Unsuccessful = json['team1Unsuccessful'];
    team2Id = json['team2Id'];
    team2Remaining = json['team2Remaining'];
    team2Successful = json['team2Successful'];
    team2Unsuccessful = json['team2Unsuccessful'];
  }
}

class OverSummaryList {
  int? score;
  int? wickets;
  int? inningsId;
  String? oSummary;
  int? runs;
  List<int>? batStrikerIds;
  List<String>? batStrikerNames;
  int? batStrikerRuns;
  int? batStrikerBalls;
  List<int>? batNonStrikerIds;
  List<String>? batNonStrikerNames;
  int? batNonStrikerRuns;
  int? batNonStrikerBalls;
  List<int>? bowlIds;
  List<String>? bowlNames;
  num? bowlOvers;
  int? bowlMaidens;
  int? bowlRuns;
  int? bowlWickets;
  int? timestamp;
  double? overNum;
  String? batTeamName;
  String? event;

  OverSummaryList(
      {this.score,
      this.wickets,
      this.inningsId,
      this.oSummary,
      this.runs,
      this.batStrikerIds,
      this.batStrikerNames,
      this.batStrikerRuns,
      this.batStrikerBalls,
      this.batNonStrikerIds,
      this.batNonStrikerNames,
      this.batNonStrikerRuns,
      this.batNonStrikerBalls,
      this.bowlIds,
      this.bowlNames,
      this.bowlOvers,
      this.bowlMaidens,
      this.bowlRuns,
      this.bowlWickets,
      this.timestamp,
      this.overNum,
      this.batTeamName,
      this.event});

  OverSummaryList.fromJson(Map<String, dynamic> json) {
    score = json['score'];
    wickets = json['wickets'];
    inningsId = json['inningsId'];
    oSummary = json['o_summary'];
    runs = json['runs'];
    batStrikerIds = json['batStrikerIds'].cast<int>();
    batStrikerNames = json['batStrikerNames'].cast<String>();
    batStrikerRuns = json['batStrikerRuns'];
    batStrikerBalls = json['batStrikerBalls'];
    batNonStrikerIds = json['batNonStrikerIds'].cast<int>();
    batNonStrikerNames = json['batNonStrikerNames'].cast<String>();
    batNonStrikerRuns = json['batNonStrikerRuns'];
    batNonStrikerBalls = json['batNonStrikerBalls'];
    bowlIds = json['bowlIds'].cast<int>();
    bowlNames = json['bowlNames'].cast<String>();
    bowlOvers = json['bowlOvers'];
    bowlMaidens = json['bowlMaidens'];
    bowlRuns = json['bowlRuns'];
    bowlWickets = json['bowlWickets'];
    timestamp = json['timestamp'];
    overNum = json['overNum'];
    batTeamName = json['batTeamName'];
    event = json['event'];
  }
}

class MatchHeader {
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
  String? status;
  TossResults? tossResults;
  Result? result;
  RevisedTarget? revisedTarget;
  List<PlayersOfTheMatch>? playersOfTheMatch;
  List<MatchTeamInfo>? matchTeamInfo;
  bool? isMatchNotCovered;
  Team1? team1;
  Team1? team2;
  String? seriesDesc;
  int? seriesId;
  String? seriesName;
  String? alertType;
  bool? livestreamEnabled;

  MatchHeader(
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
      this.status,
      this.tossResults,
      this.result,
      this.revisedTarget,
      this.playersOfTheMatch,
      this.matchTeamInfo,
      this.isMatchNotCovered,
      this.team1,
      this.team2,
      this.seriesDesc,
      this.seriesId,
      this.seriesName,
      this.alertType,
      this.livestreamEnabled});

  MatchHeader.fromJson(Map<String, dynamic> json) {
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
    status = json['status'];
    tossResults = json['tossResults'] != null
        ? TossResults.fromJson(json['tossResults'])
        : null;
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
    revisedTarget = json['revisedTarget'] != null
        ? RevisedTarget.fromJson(json['revisedTarget'])
        : null;
    if (json['playersOfTheMatch'] != null) {
      playersOfTheMatch = <PlayersOfTheMatch>[];
      json['playersOfTheMatch'].forEach((v) {
        playersOfTheMatch!.add(PlayersOfTheMatch.fromJson(v));
      });
    }

    if (json['matchTeamInfo'] != null) {
      matchTeamInfo = <MatchTeamInfo>[];
      json['matchTeamInfo'].forEach((v) {
        matchTeamInfo!.add(MatchTeamInfo.fromJson(v));
      });
    }
    isMatchNotCovered = json['isMatchNotCovered'];
    team1 = json['team1'] != null ? Team1.fromJson(json['team1']) : null;
    team2 = json['team2'] != null ? Team1.fromJson(json['team2']) : null;
    seriesDesc = json['seriesDesc'];
    seriesId = json['seriesId'];
    seriesName = json['seriesName'];
    alertType = json['alertType'];
    livestreamEnabled = json['livestreamEnabled'];
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

class RevisedTarget {
  String? reason;

  RevisedTarget({this.reason});

  RevisedTarget.fromJson(Map<String, dynamic> json) {
    reason = json['reason'];
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

class Team1 {
  int? id;
  String? name;

  String? shortName;

  Team1({this.id, this.name, this.shortName});

  Team1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    shortName = json['shortName'];
  }
}
