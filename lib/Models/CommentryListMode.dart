class CommentaryListModel {
  List<CommentaryList>? commentaryList;
  MatchHeader? matchHeader;
  Miniscore? miniscore;

  CommentaryListModel({
    this.commentaryList,
    this.matchHeader,
    this.miniscore,
  });

  CommentaryListModel.fromJson(Map<String, dynamic> json) {
    if (json['commentaryList'] != null) {
      commentaryList = <CommentaryList>[];
      json['commentaryList'].forEach((v) {
        commentaryList!.add(CommentaryList.fromJson(v));
      });
    }
    matchHeader = json['matchHeader'] != null
        ? MatchHeader.fromJson(json['matchHeader'])
        : null;
    miniscore = json['miniscore'] != null
        ? Miniscore.fromJson(json['miniscore'])
        : null;
  }
}

class CommentaryList {
  String? commText;
  int? timestamp;
  int? ballNbr;
  int? inningsId;
  String? event;
  String? batTeamName;
  CommentaryFormats? commentaryFormats;
  double? overNumber;

  CommentaryList({
    this.commText,
    this.timestamp,
    this.ballNbr,
    this.inningsId,
    this.event,
    this.batTeamName,
    this.commentaryFormats,
    this.overNumber,
  });

  CommentaryList.fromJson(Map<String, dynamic> json) {
    commText = json['commText'];
    timestamp = json['timestamp'];
    ballNbr = json['ballNbr'];
    inningsId = json['inningsId'];
    event = json['event'];
    batTeamName = json['batTeamName'];
    commentaryFormats = json['commentaryFormats'] != null
        ? CommentaryFormats.fromJson(json['commentaryFormats'])
        : null;
    overNumber = json['overNumber'];
  }
}

class CommentaryFormats {
  Bold? bold;

  CommentaryFormats({this.bold});

  CommentaryFormats.fromJson(Map<String, dynamic> json) {
    bold = json['bold'] != null ? Bold.fromJson(json['bold']) : null;
  }
}

class Bold {
  List<String>? formatId;
  List<String>? formatValue;

  Bold({this.formatId, this.formatValue});

  Bold.fromJson(Map<String, dynamic> json) {
    formatId = json['formatId'].cast<String>();
    formatValue = json['formatValue'].cast<String>();
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
  List<void>? playersOfTheSeries;
  List<MatchTeamInfo>? matchTeamInfo;
  bool? isMatchNotCovered;
  String? seriesDesc;
  int? seriesId;
  String? seriesName;
  String? alertType;
  bool? livestreamEnabled;

  MatchHeader({
    this.matchId,
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
    this.playersOfTheSeries,
    this.matchTeamInfo,
    this.isMatchNotCovered,
    this.seriesDesc,
    this.seriesId,
    this.seriesName,
    this.alertType,
  });

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

    if (json['matchTeamInfo'] != null) {
      matchTeamInfo = <MatchTeamInfo>[];
      json['matchTeamInfo'].forEach((v) {
        matchTeamInfo!.add(MatchTeamInfo.fromJson(v));
      });
    }
    isMatchNotCovered = json['isMatchNotCovered'];
    seriesDesc = json['seriesDesc'];
    seriesId = json['seriesId'];
    seriesName = json['seriesName'];
    alertType = json['alertType'];
  }
}

class MatchTeamInfo {
  String? battingTeamShortName;

  String? bowlingTeamShortName;

  MatchTeamInfo({this.battingTeamShortName, this.bowlingTeamShortName});

  MatchTeamInfo.fromJson(Map<String, dynamic> json) {
    battingTeamShortName = json['battingTeamShortName'];

    bowlingTeamShortName = json['bowlingTeamShortName'];
  }
}

class Miniscore {
  num? overs;
  num? currentRunRate;
  MatchScoreDetails? matchScoreDetails;

  Miniscore({
    this.overs,
    this.currentRunRate,
    this.matchScoreDetails,
  });

  Miniscore.fromJson(Map<String, dynamic> json) {
    overs = json['overs'];
    currentRunRate = json['currentRunRate'];

    matchScoreDetails = json['matchScoreDetails'] != null
        ? MatchScoreDetails.fromJson(json['matchScoreDetails'])
        : null;
  }
}

class MatchScoreDetails {
  List<InningsScoreList>? inningsScoreList;
  List<MatchTeamInfo>? matchTeamInfo;
  String? customStatus;

  MatchScoreDetails({
    this.inningsScoreList,
    this.matchTeamInfo,
    this.customStatus,
  });

  MatchScoreDetails.fromJson(Map<String, dynamic> json) {
    if (json['inningsScoreList'] != null) {
      inningsScoreList = <InningsScoreList>[];
      json['inningsScoreList'].forEach((v) {
        inningsScoreList!.add(InningsScoreList.fromJson(v));
      });
    }

    if (json['matchTeamInfo'] != null) {
      matchTeamInfo = <MatchTeamInfo>[];
      json['matchTeamInfo'].forEach((v) {
        matchTeamInfo!.add(MatchTeamInfo.fromJson(v));
      });
    }

    customStatus = json['customStatus'];
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
