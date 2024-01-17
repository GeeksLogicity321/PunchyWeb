class ScoreCardModel {
  List<ScoreCard>? scoreCard;
  MatchHeader? matchHeader;
  bool? isMatchComplete;
  String? status;

  ScoreCardModel(
      {this.scoreCard, this.matchHeader, this.isMatchComplete, this.status});

  ScoreCardModel.fromJson(Map<String, dynamic> json) {
    if (json['scoreCard'] != null) {
      scoreCard = <ScoreCard>[];
      json['scoreCard'].forEach((v) {
        scoreCard!.add(ScoreCard.fromJson(v));
      });
    }
    matchHeader = json['matchHeader'] != null
        ? MatchHeader.fromJson(json['matchHeader'])
        : null;
    isMatchComplete = json['isMatchComplete'];
    status = json['status'];
  }
}

class ScoreCard {
  int? matchId;
  int? inningsId;
  int? timeScore;
  BatTeamDetails? batTeamDetails;
  BowlTeamDetails? bowlTeamDetails;
  ScoreDetails? scoreDetails;
  ExtrasData? extrasData;
  PpData? ppData;
  WicketsData? wicketsData;
  PartnershipsData? partnershipsData;

  ScoreCard(
      {this.matchId,
      this.inningsId,
      this.timeScore,
      this.batTeamDetails,
      this.bowlTeamDetails,
      this.scoreDetails,
      this.extrasData,
      this.ppData,
      this.wicketsData,
      this.partnershipsData});

  ScoreCard.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'];
    inningsId = json['inningsId'];
    timeScore = json['timeScore'];
    batTeamDetails = json['batTeamDetails'] != null
        ? BatTeamDetails.fromJson(json['batTeamDetails'])
        : null;
    bowlTeamDetails = json['bowlTeamDetails'] != null
        ? BowlTeamDetails.fromJson(json['bowlTeamDetails'])
        : null;
    scoreDetails = json['scoreDetails'] != null
        ? ScoreDetails.fromJson(json['scoreDetails'])
        : null;
    extrasData = json['extrasData'] != null
        ? ExtrasData.fromJson(json['extrasData'])
        : null;
    ppData = json['ppData'] != null ? PpData.fromJson(json['ppData']) : null;
    wicketsData = json['wicketsData'] != null
        ? WicketsData.fromJson(json['wicketsData'])
        : null;
    partnershipsData = json['partnershipsData'] != null
        ? PartnershipsData.fromJson(json['partnershipsData'])
        : null;
  }
}

class BatTeamDetails {
  int? batTeamId;
  String? batTeamName;
  String? batTeamShortName;
  BatsmenData? batsmenData;

  BatTeamDetails(
      {this.batTeamId,
      this.batTeamName,
      this.batTeamShortName,
      this.batsmenData});

  BatTeamDetails.fromJson(Map<String, dynamic> json) {
    batTeamId = json['batTeamId'];
    batTeamName = json['batTeamName'];
    batTeamShortName = json['batTeamShortName'];
    batsmenData = json['batsmenData'] != null
        ? BatsmenData.fromJson(json['batsmenData'])
        : null;
  }
}

class BatsmenData {
  Bat5? bat5;
  Bat2? bat2;
  Bat2? bat10;
  Bat2? bat7;
  Bat5? bat1;
  Bat5? bat8;
  Bat5? bat3;
  Bat2? bat9;
  Bat5? bat6;
  Bat5? bat4;
  Bat2? bat11;

  BatsmenData(
      {this.bat5,
      this.bat2,
      this.bat10,
      this.bat7,
      this.bat1,
      this.bat8,
      this.bat3,
      this.bat9,
      this.bat6,
      this.bat4,
      this.bat11});

  BatsmenData.fromJson(Map<String, dynamic> json) {
    bat5 = json['bat_5'] != null ? Bat5.fromJson(json['bat_5']) : null;
    bat2 = json['bat_2'] != null ? Bat2.fromJson(json['bat_2']) : null;
    bat10 = json['bat_10'] != null ? Bat2.fromJson(json['bat_10']) : null;
    bat7 = json['bat_7'] != null ? Bat2.fromJson(json['bat_7']) : null;
    bat1 = json['bat_1'] != null ? Bat5.fromJson(json['bat_1']) : null;
    bat8 = json['bat_8'] != null ? Bat5.fromJson(json['bat_8']) : null;
    bat3 = json['bat_3'] != null ? Bat5.fromJson(json['bat_3']) : null;
    bat9 = json['bat_9'] != null ? Bat2.fromJson(json['bat_9']) : null;
    bat6 = json['bat_6'] != null ? Bat5.fromJson(json['bat_6']) : null;
    bat4 = json['bat_4'] != null ? Bat5.fromJson(json['bat_4']) : null;
    bat11 = json['bat_11'] != null ? Bat2.fromJson(json['bat_11']) : null;
  }
}

class Bat5 {
  int? batId;
  String? batName;
  String? batShortName;
  bool? isCaptain;
  bool? isKeeper;
  int? runs;
  int? balls;
  int? dots;
  int? fours;
  int? sixes;
  int? mins;
  num? strikeRate;
  String? outDesc;
  int? bowlerId;
  int? fielderId1;
  int? fielderId2;
  int? fielderId3;
  int? ones;
  int? twos;
  int? threes;
  int? fives;
  int? boundaries;
  int? sixers;
  String? wicketCode;
  bool? isOverseas;
  String? inMatchChange;
  String? playingXIChange;

  Bat5(
      {this.batId,
      this.batName,
      this.batShortName,
      this.isCaptain,
      this.isKeeper,
      this.runs,
      this.balls,
      this.dots,
      this.fours,
      this.sixes,
      this.mins,
      this.strikeRate,
      this.outDesc,
      this.bowlerId,
      this.fielderId1,
      this.fielderId2,
      this.fielderId3,
      this.ones,
      this.twos,
      this.threes,
      this.fives,
      this.boundaries,
      this.sixers,
      this.wicketCode,
      this.isOverseas,
      this.inMatchChange,
      this.playingXIChange});

  Bat5.fromJson(Map<String, dynamic> json) {
    batId = json['batId'];
    batName = json['batName'];
    batShortName = json['batShortName'];
    isCaptain = json['isCaptain'];
    isKeeper = json['isKeeper'];
    runs = json['runs'];
    balls = json['balls'];
    dots = json['dots'];
    fours = json['fours'];
    sixes = json['sixes'];
    mins = json['mins'];
    strikeRate = json['strikeRate'];
    outDesc = json['outDesc'];
    bowlerId = json['bowlerId'];
    fielderId1 = json['fielderId1'];
    fielderId2 = json['fielderId2'];
    fielderId3 = json['fielderId3'];
    ones = json['ones'];
    twos = json['twos'];
    threes = json['threes'];
    fives = json['fives'];
    boundaries = json['boundaries'];
    sixers = json['sixers'];
    wicketCode = json['wicketCode'];
    isOverseas = json['isOverseas'];
    inMatchChange = json['inMatchChange'];
    playingXIChange = json['playingXIChange'];
  }
}

class Bat2 {
  int? batId;
  String? batName;
  String? batShortName;
  bool? isCaptain;
  bool? isKeeper;
  int? runs;
  int? balls;
  int? dots;
  int? fours;
  int? sixes;
  int? mins;
  num? strikeRate;
  String? outDesc;
  int? bowlerId;
  int? fielderId1;
  int? fielderId2;
  int? fielderId3;
  int? ones;
  int? twos;
  int? threes;
  int? fives;
  int? boundaries;
  int? sixers;
  String? wicketCode;
  bool? isOverseas;
  String? inMatchChange;
  String? playingXIChange;

  Bat2(
      {this.batId,
      this.batName,
      this.batShortName,
      this.isCaptain,
      this.isKeeper,
      this.runs,
      this.balls,
      this.dots,
      this.fours,
      this.sixes,
      this.mins,
      this.strikeRate,
      this.outDesc,
      this.bowlerId,
      this.fielderId1,
      this.fielderId2,
      this.fielderId3,
      this.ones,
      this.twos,
      this.threes,
      this.fives,
      this.boundaries,
      this.sixers,
      this.wicketCode,
      this.isOverseas,
      this.inMatchChange,
      this.playingXIChange});

  Bat2.fromJson(Map<String, dynamic> json) {
    batId = json['batId'];
    batName = json['batName'];
    batShortName = json['batShortName'];
    isCaptain = json['isCaptain'];
    isKeeper = json['isKeeper'];
    runs = json['runs'];
    balls = json['balls'];
    dots = json['dots'];
    fours = json['fours'];
    sixes = json['sixes'];
    mins = json['mins'];
    strikeRate = json['strikeRate'];
    outDesc = json['outDesc'];
    bowlerId = json['bowlerId'];
    fielderId1 = json['fielderId1'];
    fielderId2 = json['fielderId2'];
    fielderId3 = json['fielderId3'];
    ones = json['ones'];
    twos = json['twos'];
    threes = json['threes'];
    fives = json['fives'];
    boundaries = json['boundaries'];
    sixers = json['sixers'];
    wicketCode = json['wicketCode'];
    isOverseas = json['isOverseas'];
    inMatchChange = json['inMatchChange'];
    playingXIChange = json['playingXIChange'];
  }
}

class BowlTeamDetails {
  int? bowlTeamId;
  String? bowlTeamName;
  String? bowlTeamShortName;
  BowlersData? bowlersData;

  BowlTeamDetails(
      {this.bowlTeamId,
      this.bowlTeamName,
      this.bowlTeamShortName,
      this.bowlersData});

  BowlTeamDetails.fromJson(Map<String, dynamic> json) {
    bowlTeamId = json['bowlTeamId'];
    bowlTeamName = json['bowlTeamName'];
    bowlTeamShortName = json['bowlTeamShortName'];
    bowlersData = json['bowlersData'] != null
        ? BowlersData.fromJson(json['bowlersData'])
        : null;
  }
}

class BowlersData {
  Bowl1? bowl1;
  Bowl1? bowl4;
  Bowl1? bowl6;
  Bowl1? bowl5;
  Bowl3? bowl3;
  Bowl3? bowl2;

  BowlersData(
      {this.bowl1, this.bowl4, this.bowl6, this.bowl5, this.bowl3, this.bowl2});

  BowlersData.fromJson(Map<String, dynamic> json) {
    bowl1 = json['bowl_1'] != null ? Bowl1.fromJson(json['bowl_1']) : null;
    bowl4 = json['bowl_4'] != null ? Bowl1.fromJson(json['bowl_4']) : null;
    bowl6 = json['bowl_6'] != null ? Bowl1.fromJson(json['bowl_6']) : null;
    bowl5 = json['bowl_5'] != null ? Bowl1.fromJson(json['bowl_5']) : null;
    bowl3 = json['bowl_3'] != null ? Bowl3.fromJson(json['bowl_3']) : null;
    bowl2 = json['bowl_2'] != null ? Bowl3.fromJson(json['bowl_2']) : null;
  }
}

class Bowl1 {
  int? bowlerId;
  String? bowlName;
  String? bowlShortName;
  bool? isCaptain;
  bool? isKeeper;
  num? overs;
  int? maidens;
  int? runs;
  int? wickets;
  num? economy;
  int? noBalls;
  int? wides;
  int? dots;
  int? balls;
  int? runsPerBall;
  bool? isOverseas;
  String? inMatchChange;
  String? playingXIChange;

  Bowl1(
      {this.bowlerId,
      this.bowlName,
      this.bowlShortName,
      this.isCaptain,
      this.isKeeper,
      this.overs,
      this.maidens,
      this.runs,
      this.wickets,
      this.economy,
      this.noBalls,
      this.wides,
      this.dots,
      this.balls,
      this.runsPerBall,
      this.isOverseas,
      this.inMatchChange,
      this.playingXIChange});

  Bowl1.fromJson(Map<String, dynamic> json) {
    bowlerId = json['bowlerId'];
    bowlName = json['bowlName'];
    bowlShortName = json['bowlShortName'];
    isCaptain = json['isCaptain'];
    isKeeper = json['isKeeper'];
    overs = json['overs'];
    maidens = json['maidens'];
    runs = json['runs'];
    wickets = json['wickets'];
    economy = json['economy'];
    noBalls = json['no_balls'];
    wides = json['wides'];
    dots = json['dots'];
    balls = json['balls'];
    runsPerBall = json['runsPerBall'];
    isOverseas = json['isOverseas'];
    inMatchChange = json['inMatchChange'];
    playingXIChange = json['playingXIChange'];
  }
}

class Bowl3 {
  int? bowlerId;
  String? bowlName;
  String? bowlShortName;
  bool? isCaptain;
  bool? isKeeper;
  num? overs;
  int? maidens;
  int? runs;
  int? wickets;
  num? economy;
  int? noBalls;
  int? wides;
  int? dots;
  int? balls;
  int? runsPerBall;
  bool? isOverseas;
  String? inMatchChange;
  String? playingXIChange;

  Bowl3(
      {this.bowlerId,
      this.bowlName,
      this.bowlShortName,
      this.isCaptain,
      this.isKeeper,
      this.overs,
      this.maidens,
      this.runs,
      this.wickets,
      this.economy,
      this.noBalls,
      this.wides,
      this.dots,
      this.balls,
      this.runsPerBall,
      this.isOverseas,
      this.inMatchChange,
      this.playingXIChange});

  Bowl3.fromJson(Map<String, dynamic> json) {
    bowlerId = json['bowlerId'];
    bowlName = json['bowlName'];
    bowlShortName = json['bowlShortName'];
    isCaptain = json['isCaptain'];
    isKeeper = json['isKeeper'];
    overs = json['overs'];
    maidens = json['maidens'];
    runs = json['runs'];
    wickets = json['wickets'];
    economy = json['economy'];
    noBalls = json['no_balls'];
    wides = json['wides'];
    dots = json['dots'];
    balls = json['balls'];
    runsPerBall = json['runsPerBall'];
    isOverseas = json['isOverseas'];
    inMatchChange = json['inMatchChange'];
    playingXIChange = json['playingXIChange'];
  }
}

class ScoreDetails {
  int? ballNbr;
  bool? isDeclared;
  bool? isFollowOn;
  num? overs;
  int? revisedOvers;
  num? runRate;
  int? runs;
  int? wickets;
  double? runsPerBall;

  ScoreDetails(
      {this.ballNbr,
      this.isDeclared,
      this.isFollowOn,
      this.overs,
      this.revisedOvers,
      this.runRate,
      this.runs,
      this.wickets,
      this.runsPerBall});

  ScoreDetails.fromJson(Map<String, dynamic> json) {
    ballNbr = json['ballNbr'];
    isDeclared = json['isDeclared'];
    isFollowOn = json['isFollowOn'];
    overs = json['overs'];
    revisedOvers = json['revisedOvers'];
    runRate = json['runRate'];
    runs = json['runs'];
    wickets = json['wickets'];
    runsPerBall = json['runsPerBall'];
  }
}

class ExtrasData {
  int? noBalls;
  int? total;
  int? byes;
  int? penalty;
  int? wides;
  int? legByes;

  ExtrasData(
      {this.noBalls,
      this.total,
      this.byes,
      this.penalty,
      this.wides,
      this.legByes});

  ExtrasData.fromJson(Map<String, dynamic> json) {
    noBalls = json['noBalls'];
    total = json['total'];
    byes = json['byes'];
    penalty = json['penalty'];
    wides = json['wides'];
    legByes = json['legByes'];
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

class WicketsData {
  Wkt8? wkt8;
  Wkt8? wkt2;
  Wkt8? wkt9;
  Wkt8? wkt1;
  Wkt8? wkt6;
  Wkt8? wkt10;
  Wkt8? wkt4;
  Wkt8? wkt5;
  Wkt8? wkt7;
  Wkt8? wkt3;

  WicketsData(
      {this.wkt8,
      this.wkt2,
      this.wkt9,
      this.wkt1,
      this.wkt6,
      this.wkt10,
      this.wkt4,
      this.wkt5,
      this.wkt7,
      this.wkt3});

  WicketsData.fromJson(Map<String, dynamic> json) {
    wkt8 = json['wkt_8'] != null ? Wkt8.fromJson(json['wkt_8']) : null;
    wkt2 = json['wkt_2'] != null ? Wkt8.fromJson(json['wkt_2']) : null;
    wkt9 = json['wkt_9'] != null ? Wkt8.fromJson(json['wkt_9']) : null;
    wkt1 = json['wkt_1'] != null ? Wkt8.fromJson(json['wkt_1']) : null;
    wkt6 = json['wkt_6'] != null ? Wkt8.fromJson(json['wkt_6']) : null;
    wkt10 = json['wkt_10'] != null ? Wkt8.fromJson(json['wkt_10']) : null;
    wkt4 = json['wkt_4'] != null ? Wkt8.fromJson(json['wkt_4']) : null;
    wkt5 = json['wkt_5'] != null ? Wkt8.fromJson(json['wkt_5']) : null;
    wkt7 = json['wkt_7'] != null ? Wkt8.fromJson(json['wkt_7']) : null;
    wkt3 = json['wkt_3'] != null ? Wkt8.fromJson(json['wkt_3']) : null;
  }
}

class Wkt8 {
  int? batId;
  String? batName;
  int? wktNbr;
  num? wktOver;
  int? wktRuns;
  int? ballNbr;

  Wkt8(
      {this.batId,
      this.batName,
      this.wktNbr,
      this.wktOver,
      this.wktRuns,
      this.ballNbr});

  Wkt8.fromJson(Map<String, dynamic> json) {
    batId = json['batId'];
    batName = json['batName'];
    wktNbr = json['wktNbr'];
    wktOver = json['wktOver'];
    wktRuns = json['wktRuns'];
    ballNbr = json['ballNbr'];
  }
}

class PartnershipsData {
  Pat10? pat10;
  Pat10? pat1;
  Pat10? pat6;
  Pat10? pat9;
  Pat10? pat2;
  Pat10? pat5;
  Pat10? pat3;
  Pat10? pat8;
  Pat10? pat4;
  Pat10? pat7;

  PartnershipsData(
      {this.pat10,
      this.pat1,
      this.pat6,
      this.pat9,
      this.pat2,
      this.pat5,
      this.pat3,
      this.pat8,
      this.pat4,
      this.pat7});

  PartnershipsData.fromJson(Map<String, dynamic> json) {
    pat10 = json['pat_10'] != null ? Pat10.fromJson(json['pat_10']) : null;
    pat1 = json['pat_1'] != null ? Pat10.fromJson(json['pat_1']) : null;
    pat6 = json['pat_6'] != null ? Pat10.fromJson(json['pat_6']) : null;
    pat9 = json['pat_9'] != null ? Pat10.fromJson(json['pat_9']) : null;
    pat2 = json['pat_2'] != null ? Pat10.fromJson(json['pat_2']) : null;
    pat5 = json['pat_5'] != null ? Pat10.fromJson(json['pat_5']) : null;
    pat3 = json['pat_3'] != null ? Pat10.fromJson(json['pat_3']) : null;
    pat8 = json['pat_8'] != null ? Pat10.fromJson(json['pat_8']) : null;
    pat4 = json['pat_4'] != null ? Pat10.fromJson(json['pat_4']) : null;
    pat7 = json['pat_7'] != null ? Pat10.fromJson(json['pat_7']) : null;
  }
}

class Pat10 {
  int? bat1Id;
  String? bat1Name;
  int? bat1Runs;
  int? bat1fours;
  int? bat1sixes;
  int? bat2Id;
  String? bat2Name;
  int? bat2Runs;
  int? bat2fours;
  int? bat2sixes;
  int? totalRuns;
  int? totalBalls;
  int? bat1balls;
  int? bat2balls;
  int? bat1Ones;
  int? bat1Twos;
  int? bat1Threes;
  int? bat1Fives;
  int? bat1Boundaries;
  int? bat1Sixers;
  int? bat2Ones;
  int? bat2Twos;
  int? bat2Threes;
  int? bat2Fives;
  int? bat2Boundaries;
  int? bat2Sixers;

  Pat10(
      {this.bat1Id,
      this.bat1Name,
      this.bat1Runs,
      this.bat1fours,
      this.bat1sixes,
      this.bat2Id,
      this.bat2Name,
      this.bat2Runs,
      this.bat2fours,
      this.bat2sixes,
      this.totalRuns,
      this.totalBalls,
      this.bat1balls,
      this.bat2balls,
      this.bat1Ones,
      this.bat1Twos,
      this.bat1Threes,
      this.bat1Fives,
      this.bat1Boundaries,
      this.bat1Sixers,
      this.bat2Ones,
      this.bat2Twos,
      this.bat2Threes,
      this.bat2Fives,
      this.bat2Boundaries,
      this.bat2Sixers});

  Pat10.fromJson(Map<String, dynamic> json) {
    bat1Id = json['bat1Id'];
    bat1Name = json['bat1Name'];
    bat1Runs = json['bat1Runs'];
    bat1fours = json['bat1fours'];
    bat1sixes = json['bat1sixes'];
    bat2Id = json['bat2Id'];
    bat2Name = json['bat2Name'];
    bat2Runs = json['bat2Runs'];
    bat2fours = json['bat2fours'];
    bat2sixes = json['bat2sixes'];
    totalRuns = json['totalRuns'];
    totalBalls = json['totalBalls'];
    bat1balls = json['bat1balls'];
    bat2balls = json['bat2balls'];
    bat1Ones = json['bat1Ones'];
    bat1Twos = json['bat1Twos'];
    bat1Threes = json['bat1Threes'];
    bat1Fives = json['bat1Fives'];
    bat1Boundaries = json['bat1Boundaries'];
    bat1Sixers = json['bat1Sixers'];
    bat2Ones = json['bat2Ones'];
    bat2Twos = json['bat2Twos'];
    bat2Threes = json['bat2Threes'];
    bat2Fives = json['bat2Fives'];
    bat2Boundaries = json['bat2Boundaries'];
    bat2Sixers = json['bat2Sixers'];
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
