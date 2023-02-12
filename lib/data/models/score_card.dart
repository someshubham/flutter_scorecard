class ScoreCard {
  ScoreCard({
    required this.message,
    required this.data,
  });
  late final String message;
  late final Data data;

  ScoreCard.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.matchData,
    required this.innings,
  });
  late final MatchData matchData;
  late final List<Innings> innings;

  Data.fromJson(Map<String, dynamic> json) {
    matchData = MatchData.fromJson(json['matchData']);
    innings =
        List.from(json['innings']).map((e) => Innings.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['matchData'] = matchData.toJson();
    _data['innings'] = innings.map((e) => e.toJson()).toList();
    return _data;
  }
}

class MatchData {
  MatchData({
    required this.matchId,
    required this.title,
    required this.shortTitle,
    required this.subtitle,
    required this.format,
    required this.formatStr,
    required this.status,
    required this.statusStr,
    required this.statusNote,
    required this.verified,
    required this.preSquad,
    required this.oddsAvailable,
    required this.gameState,
    required this.gameStateStr,
    required this.competition,
    required this.teama,
    required this.teamb,
    required this.dateStart,
    required this.dateEnd,
    required this.timestampStart,
    required this.timestampEnd,
    required this.dateStartIst,
    required this.dateEndIst,
    required this.venue,
    required this.umpires,
    required this.referee,
    required this.equation,
    required this.live,
    required this.result,
    required this.resultType,
    required this.winMargin,
    required this.winningTeamId,
    required this.commentary,
    required this.wagon,
    required this.latestInningNumber,
    required this.presquadTime,
    required this.verifyTime,
    required this.toss,
    required this.currentOver,
    required this.previousOver,
    required this.manOfTheMatch,
    required this.manOfTheSeries,
    required this.isFollowon,
    required this.teamBattingFirst,
    required this.teamBattingSecond,
    required this.lastFiveOvers,
    required this.liveInningNumber,
    required this.players,
    required this.preMatchOdds,
    required this.dayRemainingOver,
    required this.sports,
  });
  late final int matchId;
  late final String title;
  late final String shortTitle;
  late final String subtitle;
  late final int format;
  late final String formatStr;
  late final int status;
  late final String statusStr;
  late final String statusNote;
  late final String verified;
  late final String preSquad;
  late final String oddsAvailable;
  late final int gameState;
  late final String gameStateStr;
  late final Competition competition;
  late final Teama teama;
  late final Teamb teamb;
  late final String dateStart;
  late final String dateEnd;
  late final int timestampStart;
  late final int timestampEnd;
  late final String dateStartIst;
  late final String dateEndIst;
  late final Venue venue;
  late final String umpires;
  late final String referee;
  late final String equation;
  late final String live;
  late final String result;
  late final int resultType;
  late final String winMargin;
  late final int winningTeamId;
  late final int commentary;
  late final int wagon;
  late final int latestInningNumber;
  late final String presquadTime;
  late final String verifyTime;
  late final Toss toss;
  late final String currentOver;
  late final String previousOver;
  late final ManOfTheMatch manOfTheMatch;
  late final String manOfTheSeries;
  late final int isFollowon;
  late final String teamBattingFirst;
  late final String teamBattingSecond;
  late final String lastFiveOvers;
  late final String liveInningNumber;
  late final List<Players> players;
  late final List<dynamic> preMatchOdds;
  late final String dayRemainingOver;
  late final Sports sports;

  MatchData.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    title = json['title'];
    shortTitle = json['short_title'];
    subtitle = json['subtitle'];
    format = json['format'];
    formatStr = json['format_str'];
    status = json['status'];
    statusStr = json['status_str'];
    statusNote = json['status_note'];
    verified = json['verified'];
    preSquad = json['pre_squad'];
    oddsAvailable = json['odds_available'];
    gameState = json['game_state'];
    gameStateStr = json['game_state_str'];
    competition = Competition.fromJson(json['competition']);
    teama = Teama.fromJson(json['teama']);
    teamb = Teamb.fromJson(json['teamb']);
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    timestampStart = json['timestamp_start'];
    timestampEnd = json['timestamp_end'];
    dateStartIst = json['date_start_ist'];
    dateEndIst = json['date_end_ist'];
    venue = Venue.fromJson(json['venue']);
    umpires = json['umpires'];
    referee = json['referee'];
    equation = json['equation'];
    live = json['live'];
    result = json['result'];
    resultType = json['result_type'];
    winMargin = json['win_margin'];
    winningTeamId = json['winning_team_id'];
    commentary = json['commentary'];
    wagon = json['wagon'];
    latestInningNumber = json['latest_inning_number'];
    presquadTime = json['presquad_time'];
    verifyTime = json['verify_time'];
    toss = Toss.fromJson(json['toss']);
    currentOver = json['current_over'];
    previousOver = json['previous_over'];
    manOfTheMatch = ManOfTheMatch.fromJson(json['man_of_the_match']);
    manOfTheSeries = json['man_of_the_series'];
    isFollowon = json['is_followon'];
    teamBattingFirst = json['team_batting_first'];
    teamBattingSecond = json['team_batting_second'];
    lastFiveOvers = json['last_five_overs'];
    liveInningNumber = json['live_inning_number'];
    players =
        List.from(json['players']).map((e) => Players.fromJson(e)).toList();
    preMatchOdds = List.castFrom<dynamic, dynamic>(json['pre_match_odds']);
    dayRemainingOver = json['day_remaining_over'];
    sports = Sports.fromJson(json['sports']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['match_id'] = matchId;
    _data['title'] = title;
    _data['short_title'] = shortTitle;
    _data['subtitle'] = subtitle;
    _data['format'] = format;
    _data['format_str'] = formatStr;
    _data['status'] = status;
    _data['status_str'] = statusStr;
    _data['status_note'] = statusNote;
    _data['verified'] = verified;
    _data['pre_squad'] = preSquad;
    _data['odds_available'] = oddsAvailable;
    _data['game_state'] = gameState;
    _data['game_state_str'] = gameStateStr;
    _data['competition'] = competition.toJson();
    _data['teama'] = teama.toJson();
    _data['teamb'] = teamb.toJson();
    _data['date_start'] = dateStart;
    _data['date_end'] = dateEnd;
    _data['timestamp_start'] = timestampStart;
    _data['timestamp_end'] = timestampEnd;
    _data['date_start_ist'] = dateStartIst;
    _data['date_end_ist'] = dateEndIst;
    _data['venue'] = venue.toJson();
    _data['umpires'] = umpires;
    _data['referee'] = referee;
    _data['equation'] = equation;
    _data['live'] = live;
    _data['result'] = result;
    _data['result_type'] = resultType;
    _data['win_margin'] = winMargin;
    _data['winning_team_id'] = winningTeamId;
    _data['commentary'] = commentary;
    _data['wagon'] = wagon;
    _data['latest_inning_number'] = latestInningNumber;
    _data['presquad_time'] = presquadTime;
    _data['verify_time'] = verifyTime;
    _data['toss'] = toss.toJson();
    _data['current_over'] = currentOver;
    _data['previous_over'] = previousOver;
    _data['man_of_the_match'] = manOfTheMatch.toJson();
    _data['man_of_the_series'] = manOfTheSeries;
    _data['is_followon'] = isFollowon;
    _data['team_batting_first'] = teamBattingFirst;
    _data['team_batting_second'] = teamBattingSecond;
    _data['last_five_overs'] = lastFiveOvers;
    _data['live_inning_number'] = liveInningNumber;
    _data['players'] = players.map((e) => e.toJson()).toList();
    _data['pre_match_odds'] = preMatchOdds;
    _data['day_remaining_over'] = dayRemainingOver;
    _data['sports'] = sports.toJson();
    return _data;
  }
}

class Competition {
  Competition({
    required this.cid,
    required this.title,
    required this.abbr,
    required this.type,
    required this.category,
    required this.matchFormat,
    required this.status,
    required this.season,
    required this.datestart,
    required this.dateend,
    required this.country,
    required this.totalMatches,
    required this.totalRounds,
    required this.totalTeams,
  });
  late final int cid;
  late final String title;
  late final String abbr;
  late final String type;
  late final String category;
  late final String matchFormat;
  late final String status;
  late final String season;
  late final String datestart;
  late final String dateend;
  late final String country;
  late final String totalMatches;
  late final String totalRounds;
  late final String totalTeams;

  Competition.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    title = json['title'];
    abbr = json['abbr'];
    type = json['type'];
    category = json['category'];
    matchFormat = json['match_format'];
    status = json['status'];
    season = json['season'];
    datestart = json['datestart'];
    dateend = json['dateend'];
    country = json['country'];
    totalMatches = json['total_matches'];
    totalRounds = json['total_rounds'];
    totalTeams = json['total_teams'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cid'] = cid;
    _data['title'] = title;
    _data['abbr'] = abbr;
    _data['type'] = type;
    _data['category'] = category;
    _data['match_format'] = matchFormat;
    _data['status'] = status;
    _data['season'] = season;
    _data['datestart'] = datestart;
    _data['dateend'] = dateend;
    _data['country'] = country;
    _data['total_matches'] = totalMatches;
    _data['total_rounds'] = totalRounds;
    _data['total_teams'] = totalTeams;
    return _data;
  }
}

class Teama {
  Teama({
    required this.teamId,
    required this.name,
    required this.shortName,
    required this.logoUrl,
    required this.thumbUrl,
    required this.scoresFull,
    required this.scores,
    required this.overs,
  });
  late final int teamId;
  late final String name;
  late final String shortName;
  late final String logoUrl;
  late final String thumbUrl;
  late final String scoresFull;
  late final String scores;
  late final String overs;

  Teama.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
    thumbUrl = json['thumb_url'];
    scoresFull = json['scores_full'];
    scores = json['scores'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['team_id'] = teamId;
    _data['name'] = name;
    _data['short_name'] = shortName;
    _data['logo_url'] = logoUrl;
    _data['thumb_url'] = thumbUrl;
    _data['scores_full'] = scoresFull;
    _data['scores'] = scores;
    _data['overs'] = overs;
    return _data;
  }
}

class Teamb {
  Teamb({
    required this.teamId,
    required this.name,
    required this.shortName,
    required this.logoUrl,
    required this.thumbUrl,
    required this.scoresFull,
    required this.scores,
    required this.overs,
  });
  late final int teamId;
  late final String name;
  late final String shortName;
  late final String logoUrl;
  late final String thumbUrl;
  late final String scoresFull;
  late final String scores;
  late final String overs;

  Teamb.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
    thumbUrl = json['thumb_url'];
    scoresFull = json['scores_full'];
    scores = json['scores'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['team_id'] = teamId;
    _data['name'] = name;
    _data['short_name'] = shortName;
    _data['logo_url'] = logoUrl;
    _data['thumb_url'] = thumbUrl;
    _data['scores_full'] = scoresFull;
    _data['scores'] = scores;
    _data['overs'] = overs;
    return _data;
  }
}

class Venue {
  Venue({
    required this.venueId,
    required this.name,
    required this.location,
    required this.timezone,
  });
  late final String venueId;
  late final String name;
  late final String location;
  late final String timezone;

  Venue.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    name = json['name'];
    location = json['location'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['venue_id'] = venueId;
    _data['name'] = name;
    _data['location'] = location;
    _data['timezone'] = timezone;
    return _data;
  }
}

class Toss {
  Toss({
    required this.text,
    required this.winner,
    required this.decision,
  });
  late final String text;
  late final int winner;
  late final int decision;

  Toss.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    winner = json['winner'];
    decision = json['decision'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['winner'] = winner;
    _data['decision'] = decision;
    return _data;
  }
}

class ManOfTheMatch {
  ManOfTheMatch({
    required this.pid,
    required this.name,
    required this.thumbUrl,
  });
  late final int pid;
  late final String name;
  late final String thumbUrl;

  ManOfTheMatch.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    name = json['name'];
    thumbUrl = json['thumb_url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pid'] = pid;
    _data['name'] = name;
    _data['thumb_url'] = thumbUrl;
    return _data;
  }
}

class Players {
  Players({
    required this.pid,
    required this.title,
    required this.shortName,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.birthdate,
    required this.birthplace,
    required this.country,
    required this.primaryTeam,
    required this.thumbUrl,
    required this.logoUrl,
    required this.playingRole,
    required this.battingStyle,
    required this.bowlingStyle,
    required this.fieldingPosition,
    required this.recentMatch,
    required this.recentAppearance,
    required this.fantasyPlayerRating,
    required this.t,
    required this.nationality,
    required this.role,
  });
  late final int pid;
  late final String title;
  late final String shortName;
  late final String firstName;
  late final String lastName;
  late final String middleName;
  late final String birthdate;
  late final String birthplace;
  late final String country;
  late final List<dynamic> primaryTeam;
  late final String thumbUrl;
  late final String logoUrl;
  late final String playingRole;
  late final String battingStyle;
  late final String bowlingStyle;
  late final String fieldingPosition;
  late final int recentMatch;
  late final int recentAppearance;
  late final double? fantasyPlayerRating;
  late final int t;
  late final String nationality;
  late final String role;

  Players.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    title = json['title'];
    shortName = json['short_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    middleName = json['middle_name'];
    birthdate = json['birthdate'];
    birthplace = json['birthplace'];
    country = json['country'];
    primaryTeam = List.castFrom<dynamic, dynamic>(json['primary_team']);
    thumbUrl = json['thumb_url'];
    logoUrl = json['logo_url'];
    playingRole = json['playing_role'];
    battingStyle = json['batting_style'];
    bowlingStyle = json['bowling_style'];
    fieldingPosition = json['fielding_position'];
    recentMatch = json['recent_match'];
    recentAppearance = json['recent_appearance'];
    fantasyPlayerRating = json['fantasy_player_rating'];
    t = json['t'];
    nationality = json['nationality'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pid'] = pid;
    _data['title'] = title;
    _data['short_name'] = shortName;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['middle_name'] = middleName;
    _data['birthdate'] = birthdate;
    _data['birthplace'] = birthplace;
    _data['country'] = country;
    _data['primary_team'] = primaryTeam;
    _data['thumb_url'] = thumbUrl;
    _data['logo_url'] = logoUrl;
    _data['playing_role'] = playingRole;
    _data['batting_style'] = battingStyle;
    _data['bowling_style'] = bowlingStyle;
    _data['fielding_position'] = fieldingPosition;
    _data['recent_match'] = recentMatch;
    _data['recent_appearance'] = recentAppearance;
    _data['fantasy_player_rating'] = fantasyPlayerRating;
    _data['t'] = t;
    _data['nationality'] = nationality;
    _data['role'] = role;
    return _data;
  }
}

class Sports {
  Sports({
    required this.id,
    required this.status,
    required this.name,
    required this.apiId,
    required this.sportImages,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  late final String id;
  late final int status;
  late final String name;
  late final String apiId;
  late final SportImages sportImages;
  late final String createdAt;
  late final String updatedAt;
  late final int v;

  Sports.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    status = json['status'];
    name = json['name'];
    apiId = json['APIID'];
    sportImages = SportImages.fromJson(json['sportImages']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    v = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['status'] = status;
    _data['name'] = name;
    _data['APIID'] = apiId;
    _data['sportImages'] = sportImages.toJson();
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = v;
    return _data;
  }
}

class SportImages {
  SportImages({
    required this.selected,
    required this.unselected,
  });
  late final String selected;
  late final String unselected;

  SportImages.fromJson(Map<String, dynamic> json) {
    selected = json['selected'];
    unselected = json['unselected'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['selected'] = selected;
    _data['unselected'] = unselected;
    return _data;
  }
}

class Innings {
  Innings({
    required this.iid,
    required this.number,
    required this.name,
    required this.shortName,
    required this.status,
    required this.result,
    required this.battingTeamId,
    required this.fieldingTeamId,
    required this.scores,
    required this.scoresFull,
    required this.batsmen,
    required this.bowlers,
    required this.fielder,
    required this.fows,
    required this.lastWicket,
    required this.extraRuns,
    required this.equations,
    required this.currentPartnership,
    required this.didNotBat,
    required this.team,
  });
  late final int iid;
  late final int number;
  late final String name;
  late final String shortName;
  late final int status;
  late final int result;
  late final int battingTeamId;
  late final int fieldingTeamId;
  late final String scores;
  late final String scoresFull;
  late final List<Batsmen> batsmen;
  late final List<Bowlers> bowlers;
  late final List<Fielder> fielder;
  late final List<Fows> fows;
  late final LastWicket lastWicket;
  late final ExtraRuns extraRuns;
  late final Equations equations;
  late final CurrentPartnership currentPartnership;
  late final List<DidNotBat> didNotBat;
  late final Team team;

  Innings.fromJson(Map<String, dynamic> json) {
    iid = json['iid'];
    number = json['number'];
    name = json['name'];
    shortName = json['short_name'];
    status = json['status'];
    result = json['result'];
    battingTeamId = json['batting_team_id'];
    fieldingTeamId = json['fielding_team_id'];
    scores = json['scores'];
    scoresFull = json['scores_full'];
    batsmen =
        List.from(json['batsmen']).map((e) => Batsmen.fromJson(e)).toList();
    bowlers =
        List.from(json['bowlers']).map((e) => Bowlers.fromJson(e)).toList();
    fielder =
        List.from(json['fielder']).map((e) => Fielder.fromJson(e)).toList();
    fows = List.from(json['fows']).map((e) => Fows.fromJson(e)).toList();
    lastWicket = LastWicket.fromJson(json['last_wicket']);
    extraRuns = ExtraRuns.fromJson(json['extra_runs']);
    equations = Equations.fromJson(json['equations']);
    currentPartnership =
        CurrentPartnership.fromJson(json['current_partnership']);
    didNotBat = List.from(json['did_not_bat'])
        .map((e) => DidNotBat.fromJson(e))
        .toList();
    team = Team.fromJson(json['team']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['iid'] = iid;
    _data['number'] = number;
    _data['name'] = name;
    _data['short_name'] = shortName;
    _data['status'] = status;
    _data['result'] = result;
    _data['batting_team_id'] = battingTeamId;
    _data['fielding_team_id'] = fieldingTeamId;
    _data['scores'] = scores;
    _data['scores_full'] = scoresFull;
    _data['batsmen'] = batsmen.map((e) => e.toJson()).toList();
    _data['bowlers'] = bowlers.map((e) => e.toJson()).toList();
    _data['fielder'] = fielder.map((e) => e.toJson()).toList();
    _data['fows'] = fows.map((e) => e.toJson()).toList();
    _data['last_wicket'] = lastWicket.toJson();
    _data['extra_runs'] = extraRuns.toJson();
    _data['equations'] = equations.toJson();
    _data['current_partnership'] = currentPartnership.toJson();
    _data['did_not_bat'] = didNotBat.map((e) => e.toJson()).toList();
    _data['team'] = team.toJson();
    return _data;
  }
}

class Batsmen {
  Batsmen({
    required this.name,
    required this.batsmanId,
    required this.batting,
    required this.position,
    required this.role,
    required this.roleStr,
    required this.runs,
    required this.ballsFaced,
    required this.fours,
    required this.sixes,
    required this.run0,
    required this.run1,
    required this.run2,
    required this.run3,
    required this.run5,
    required this.howOut,
    required this.dismissal,
    required this.strikeRate,
    required this.bowlerId,
    required this.firstFielderId,
    required this.secondFielderId,
    required this.thirdFielderId,
  });
  late final String name;
  late final String batsmanId;
  late final String batting;
  late final String position;
  late final String role;
  late final String roleStr;
  late final String runs;
  late final String ballsFaced;
  late final String fours;
  late final String sixes;
  late final String run0;
  late final String run1;
  late final String run2;
  late final String run3;
  late final String run5;
  late final String howOut;
  late final String dismissal;
  late final String strikeRate;
  late final String bowlerId;
  late final String firstFielderId;
  late final String secondFielderId;
  late final String thirdFielderId;

  Batsmen.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    batting = json['batting'];
    position = json['position'];
    role = json['role'];
    roleStr = json['role_str'];
    runs = json['runs'];
    ballsFaced = json['balls_faced'];
    fours = json['fours'];
    sixes = json['sixes'];
    run0 = json['run0'];
    run1 = json['run1'];
    run2 = json['run2'];
    run3 = json['run3'];
    run5 = json['run5'];
    howOut = json['how_out'];
    dismissal = json['dismissal'];
    strikeRate = json['strike_rate'];
    bowlerId = json['bowler_id'];
    firstFielderId = json['first_fielder_id'];
    secondFielderId = json['second_fielder_id'];
    thirdFielderId = json['third_fielder_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['batsman_id'] = batsmanId;
    _data['batting'] = batting;
    _data['position'] = position;
    _data['role'] = role;
    _data['role_str'] = roleStr;
    _data['runs'] = runs;
    _data['balls_faced'] = ballsFaced;
    _data['fours'] = fours;
    _data['sixes'] = sixes;
    _data['run0'] = run0;
    _data['run1'] = run1;
    _data['run2'] = run2;
    _data['run3'] = run3;
    _data['run5'] = run5;
    _data['how_out'] = howOut;
    _data['dismissal'] = dismissal;
    _data['strike_rate'] = strikeRate;
    _data['bowler_id'] = bowlerId;
    _data['first_fielder_id'] = firstFielderId;
    _data['second_fielder_id'] = secondFielderId;
    _data['third_fielder_id'] = thirdFielderId;
    return _data;
  }
}

class Bowlers {
  Bowlers({
    required this.name,
    required this.bowlerId,
    required this.bowling,
    required this.position,
    required this.overs,
    required this.maidens,
    required this.runsConceded,
    required this.wickets,
    required this.noballs,
    required this.wides,
    required this.econ,
    required this.run0,
    required this.bowledcount,
    required this.lbwcount,
  });
  late final String name;
  late final String bowlerId;
  late final String bowling;
  late final String position;
  late final String overs;
  late final String maidens;
  late final String runsConceded;
  late final String wickets;
  late final String noballs;
  late final String wides;
  late final String econ;
  late final String run0;
  late final String bowledcount;
  late final String lbwcount;

  Bowlers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bowlerId = json['bowler_id'];
    bowling = json['bowling'];
    position = json['position'];
    overs = json['overs'];
    maidens = json['maidens'];
    runsConceded = json['runs_conceded'];
    wickets = json['wickets'];
    noballs = json['noballs'];
    wides = json['wides'];
    econ = json['econ'];
    run0 = json['run0'];
    bowledcount = json['bowledcount'];
    lbwcount = json['lbwcount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['bowler_id'] = bowlerId;
    _data['bowling'] = bowling;
    _data['position'] = position;
    _data['overs'] = overs;
    _data['maidens'] = maidens;
    _data['runs_conceded'] = runsConceded;
    _data['wickets'] = wickets;
    _data['noballs'] = noballs;
    _data['wides'] = wides;
    _data['econ'] = econ;
    _data['run0'] = run0;
    _data['bowledcount'] = bowledcount;
    _data['lbwcount'] = lbwcount;
    return _data;
  }
}

class Fielder {
  Fielder({
    required this.fielderId,
    required this.fielderName,
    required this.catches,
    required this.runoutThrower,
    required this.runoutCatcher,
    required this.runoutDirectHit,
    required this.stumping,
    required this.isSubstitute,
  });
  late final String fielderId;
  late final String fielderName;
  late final int catches;
  late final int runoutThrower;
  late final int runoutCatcher;
  late final int runoutDirectHit;
  late final int stumping;
  late final String isSubstitute;

  Fielder.fromJson(Map<String, dynamic> json) {
    fielderId = json['fielder_id'];
    fielderName = json['fielder_name'];
    catches = json['catches'];
    runoutThrower = json['runout_thrower'];
    runoutCatcher = json['runout_catcher'];
    runoutDirectHit = json['runout_direct_hit'];
    stumping = json['stumping'];
    isSubstitute = json['is_substitute'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fielder_id'] = fielderId;
    _data['fielder_name'] = fielderName;
    _data['catches'] = catches;
    _data['runout_thrower'] = runoutThrower;
    _data['runout_catcher'] = runoutCatcher;
    _data['runout_direct_hit'] = runoutDirectHit;
    _data['stumping'] = stumping;
    _data['is_substitute'] = isSubstitute;
    return _data;
  }
}

class Fows {
  Fows({
    required this.name,
    required this.batsmanId,
    required this.runs,
    required this.balls,
    required this.howOut,
    required this.scoreAtDismissal,
    required this.oversAtDismissal,
    required this.bowlerId,
    required this.dismissal,
    required this.number,
    required this.playerImg,
  });
  late final String name;
  late final String batsmanId;
  late final String runs;
  late final String balls;
  late final String howOut;
  late final int scoreAtDismissal;
  late final String oversAtDismissal;
  late final String bowlerId;
  late final String dismissal;
  late final int number;
  late final String playerImg;

  Fows.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    balls = json['balls'];
    howOut = json['how_out'];
    scoreAtDismissal = json['score_at_dismissal'];
    oversAtDismissal = json['overs_at_dismissal'];
    bowlerId = json['bowler_id'];
    dismissal = json['dismissal'];
    number = json['number'];
    playerImg = json['player_img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['batsman_id'] = batsmanId;
    _data['runs'] = runs;
    _data['balls'] = balls;
    _data['how_out'] = howOut;
    _data['score_at_dismissal'] = scoreAtDismissal;
    _data['overs_at_dismissal'] = oversAtDismissal;
    _data['bowler_id'] = bowlerId;
    _data['dismissal'] = dismissal;
    _data['number'] = number;
    _data['player_img'] = playerImg;
    return _data;
  }
}

class LastWicket {
  LastWicket({
    required this.name,
    required this.batsmanId,
    required this.runs,
    required this.balls,
    required this.howOut,
    required this.scoreAtDismissal,
    required this.oversAtDismissal,
    required this.bowlerId,
    required this.dismissal,
    required this.number,
  });
  late final String name;
  late final String batsmanId;
  late final String runs;
  late final String balls;
  late final String howOut;
  late final int scoreAtDismissal;
  late final String oversAtDismissal;
  late final String bowlerId;
  late final String dismissal;
  late final int number;

  LastWicket.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    batsmanId = json['batsman_id'];
    runs = json['runs'];
    balls = json['balls'];
    howOut = json['how_out'];
    scoreAtDismissal = json['score_at_dismissal'];
    oversAtDismissal = json['overs_at_dismissal'];
    bowlerId = json['bowler_id'];
    dismissal = json['dismissal'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['batsman_id'] = batsmanId;
    _data['runs'] = runs;
    _data['balls'] = balls;
    _data['how_out'] = howOut;
    _data['score_at_dismissal'] = scoreAtDismissal;
    _data['overs_at_dismissal'] = oversAtDismissal;
    _data['bowler_id'] = bowlerId;
    _data['dismissal'] = dismissal;
    _data['number'] = number;
    return _data;
  }
}

class ExtraRuns {
  ExtraRuns({
    required this.byes,
    required this.legbyes,
    required this.wides,
    required this.noballs,
    required this.penalty,
    required this.total,
  });
  late final int byes;
  late final int legbyes;
  late final int wides;
  late final int noballs;
  late final String penalty;
  late final int total;

  ExtraRuns.fromJson(Map<String, dynamic> json) {
    byes = json['byes'];
    legbyes = json['legbyes'];
    wides = json['wides'];
    noballs = json['noballs'];
    penalty = json['penalty'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['byes'] = byes;
    _data['legbyes'] = legbyes;
    _data['wides'] = wides;
    _data['noballs'] = noballs;
    _data['penalty'] = penalty;
    _data['total'] = total;
    return _data;
  }
}

class Equations {
  Equations({
    required this.runs,
    required this.wickets,
    required this.overs,
    required this.bowlersUsed,
    required this.runrate,
  });
  late final int runs;
  late final int wickets;
  late final String overs;
  late final int bowlersUsed;
  late final String runrate;

  Equations.fromJson(Map<String, dynamic> json) {
    runs = json['runs'];
    wickets = json['wickets'];
    overs = json['overs'];
    bowlersUsed = json['bowlers_used'];
    runrate = json['runrate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['runs'] = runs;
    _data['wickets'] = wickets;
    _data['overs'] = overs;
    _data['bowlers_used'] = bowlersUsed;
    _data['runrate'] = runrate;
    return _data;
  }
}

class CurrentPartnership {
  CurrentPartnership({
    required this.runs,
    required this.balls,
    required this.overs,
    required this.batsmen,
  });
  late final int runs;
  late final int balls;
  late final int? overs;
  late final List<Batsmen> batsmen;

  CurrentPartnership.fromJson(Map<String, dynamic> json) {
    runs = json['runs'];
    balls = json['balls'];
    overs = json['overs'];
    batsmen =
        List.from(json['batsmen']).map((e) => Batsmen.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['runs'] = runs;
    _data['balls'] = balls;
    _data['overs'] = overs;
    _data['batsmen'] = batsmen.map((e) => e.toJson()).toList();
    return _data;
  }
}

class DidNotBat {
  DidNotBat({
    required this.playerId,
    required this.name,
    required this.playerImg,
  });
  late final String playerId;
  late final String name;
  late final String playerImg;

  DidNotBat.fromJson(Map<String, dynamic> json) {
    playerId = json['player_id'];
    name = json['name'];
    playerImg = json['player_img'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['player_id'] = playerId;
    _data['name'] = name;
    _data['player_img'] = playerImg;
    return _data;
  }
}

class Team {
  Team({
    required this.teamId,
    required this.name,
    required this.shortName,
    required this.logoUrl,
    required this.thumbUrl,
    required this.scoresFull,
    required this.scores,
    required this.overs,
  });
  late final int teamId;
  late final String name;
  late final String shortName;
  late final String logoUrl;
  late final String thumbUrl;
  late final String scoresFull;
  late final String scores;
  late final String overs;

  Team.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
    thumbUrl = json['thumb_url'];
    scoresFull = json['scores_full'];
    scores = json['scores'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['team_id'] = teamId;
    _data['name'] = name;
    _data['short_name'] = shortName;
    _data['logo_url'] = logoUrl;
    _data['thumb_url'] = thumbUrl;
    _data['scores_full'] = scoresFull;
    _data['scores'] = scores;
    _data['overs'] = overs;
    return _data;
  }
}
