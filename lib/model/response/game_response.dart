part of 'response.dart';

GameResponse gameResponseFromJson(String str) =>
    GameResponse.fromJson(json.decode(str));

String gameResponseToJson(GameResponse data) => json.encode(data.toJson());

class GameResponse {
  GameResponse({
    this.success,
    this.data,
  });

  bool? success;
  Data? data;

  factory GameResponse.fromJson(Map<String, dynamic> json) => GameResponse(
        success: json["success"],
        data: json["data"] != null ? Data.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data?.toJson(),
      };
}

class Data {
  Data({
    this.responseCode,
    this.responseMessage,
    this.responseData,
  });

  int? responseCode;
  String? responseMessage;
  ResponseData? responseData;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        responseCode: json["responseCode"],
        responseMessage: json["responseMessage"],
        responseData: json["responseData"] != null
            ? ResponseData.fromJson(json["responseData"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "responseCode": responseCode,
        "responseMessage": responseMessage,
        "responseData": responseData?.toJson(),
      };
}

class ResponseData {
  ResponseData({
    this.gameRespVOs,
    this.currentDate,
  });

  List<GameRespVo>? gameRespVOs;
  DateTime? currentDate;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
        gameRespVOs: List<GameRespVo>.from(
            json["gameRespVOs"].map((x) => GameRespVo.fromJson(x))),
        currentDate: DateTime.parse(json["currentDate"]),
      );

  Map<String, dynamic> toJson() => {
        "gameRespVOs": gameRespVOs != null
            ? List<dynamic>.from(gameRespVOs!.map((x) => x.toJson()))
            : null,
        "currentDate": currentDate?.toIso8601String(),
      };
}

class GameRespVo {
  GameRespVo({
    this.id,
    this.gameNumber,
    this.gameName,
    this.gameCode,
    this.betLimitEnabled,
    this.familyCode,
    this.lastDrawResult,
    this.displayOrder,
    this.drawFrequencyType,
    this.timeToFetchUpdatedGameInfo,
    this.betRespVOs,
    this.drawRespVOs,
    this.drawEvent,
    this.gameStatus,
    this.gameOrder,
    this.consecutiveDraw,
    this.maxAdvanceDraws,
    this.lastDrawFreezeTime,
    this.lastDrawDateTime,
    this.lastDrawSaleStopTime,
    this.lastDrawTime,
    this.ticketExpiry,
    this.lastDrawWinningResultVOs,
    this.maxPanelAllowed,
    this.resultConfigData,
    this.jackpotAmount,
    this.unitCost,
  });

  int? id;
  int? gameNumber;
  String? gameName;
  String? gameCode;
  String? betLimitEnabled;
  String? familyCode;
  String? lastDrawResult;
  String? displayOrder;
  String? drawFrequencyType;
  DateTime? timeToFetchUpdatedGameInfo;
  List<BetRespVo>? betRespVOs;
  List<DrawRespVo>? drawRespVOs;
  String? drawEvent;
  String? gameStatus;
  String? gameOrder;
  String? consecutiveDraw;
  int? maxAdvanceDraws;
  String? lastDrawFreezeTime;
  String? lastDrawDateTime;
  String? lastDrawSaleStopTime;
  DateTime? lastDrawTime;
  int? ticketExpiry;
  List<LastDrawWinningResultVo>? lastDrawWinningResultVOs;
  int? maxPanelAllowed;
  ResultConfigData? resultConfigData;
  int? jackpotAmount;
  List<UnitCost>? unitCost;

  factory GameRespVo.fromJson(Map<String, dynamic> json) => GameRespVo(
        id: json["id"],
        gameNumber: json["gameNumber"],
        gameName: json["gameName"],
        gameCode: json["gameCode"],
        betLimitEnabled: json["betLimitEnabled"],
        familyCode: json["familyCode"],
        lastDrawResult: json["lastDrawResult"],
        displayOrder: json["displayOrder"],
        drawFrequencyType: json["drawFrequencyType"],
        timeToFetchUpdatedGameInfo:
            DateTime.parse(json["timeToFetchUpdatedGameInfo"]),
        betRespVOs: List<BetRespVo>.from(
            json["betRespVOs"].map((x) => BetRespVo.fromJson(x))),
        drawRespVOs: List<DrawRespVo>.from(
            json["drawRespVOs"].map((x) => DrawRespVo.fromJson(x))),
        drawEvent: json["drawEvent"],
        gameStatus: json["gameStatus"],
        gameOrder: json["gameOrder"],
        consecutiveDraw: json["consecutiveDraw"],
        maxAdvanceDraws: json["maxAdvanceDraws"],
        lastDrawFreezeTime: json["lastDrawFreezeTime"],
        lastDrawDateTime: json["lastDrawDateTime"],
        lastDrawSaleStopTime: json["lastDrawSaleStopTime"],
        lastDrawTime: DateTime.parse(json["lastDrawTime"]),
        ticketExpiry: json["ticket_expiry"],
        lastDrawWinningResultVOs: List<LastDrawWinningResultVo>.from(
            json["lastDrawWinningResultVOs"]
                .map((x) => LastDrawWinningResultVo.fromJson(x))),
        maxPanelAllowed: json["maxPanelAllowed"],
        resultConfigData: ResultConfigData.fromJson(json["resultConfigData"]),
        jackpotAmount: json["jackpotAmount"],
        unitCost: List<UnitCost>.from(
            json["unitCost"].map((x) => UnitCost.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "gameNumber": gameNumber,
        "gameName": gameName,
        "gameCode": gameCode,
        "betLimitEnabled": betLimitEnabled,
        "familyCode": familyCode,
        "lastDrawResult": lastDrawResult,
        "displayOrder": displayOrder,
        "drawFrequencyType": drawFrequencyType,
        "timeToFetchUpdatedGameInfo":
            timeToFetchUpdatedGameInfo?.toIso8601String(),
        "betRespVOs": betRespVOs != null
            ? List<dynamic>.from(betRespVOs!.map((x) => x.toJson()))
            : null,
        "drawRespVOs": drawRespVOs != null
            ? List<dynamic>.from(drawRespVOs!.map((x) => x.toJson()))
            : null,
        "drawEvent": drawEvent,
        "gameStatus": gameStatus,
        "gameOrder": gameOrder,
        "consecutiveDraw": consecutiveDraw,
        "maxAdvanceDraws": maxAdvanceDraws,
        "lastDrawFreezeTime": lastDrawFreezeTime,
        "lastDrawDateTime": lastDrawDateTime,
        "lastDrawSaleStopTime": lastDrawSaleStopTime,
        "lastDrawTime": lastDrawTime?.toIso8601String(),
        "ticket_expiry": ticketExpiry,
        "lastDrawWinningResultVOs": lastDrawWinningResultVOs != null
            ? List<dynamic>.from(
                lastDrawWinningResultVOs!.map((x) => x.toJson()))
            : null,
        "maxPanelAllowed": maxPanelAllowed,
        "resultConfigData": resultConfigData?.toJson(),
        "jackpotAmount": jackpotAmount,
        "unitCost": unitCost != null
            ? List<dynamic>.from(unitCost!.map((x) => x.toJson()))
            : null,
      };
}

class BetRespVo {
  BetRespVo({
    this.unitPrice,
    this.maxBetAmtMul,
    this.betDispName,
    this.betCode,
    this.betName,
    this.betGroup,
    this.pickTypeData,
    this.inputCount,
    this.winMode,
    this.betOrder,
  });

  int? unitPrice;
  int? maxBetAmtMul;
  String? betDispName;
  String? betCode;
  String? betName;
  dynamic betGroup;
  PickTypeData? pickTypeData;
  String? inputCount;
  String? winMode;
  int? betOrder;

  factory BetRespVo.fromJson(Map<String, dynamic> json) => BetRespVo(
        unitPrice: json["unitPrice"],
        maxBetAmtMul: json["maxBetAmtMul"],
        betDispName: json["betDispName"],
        betCode: json["betCode"],
        betName: json["betName"],
        betGroup: json["betGroup"],
        pickTypeData: PickTypeData.fromJson(json["pickTypeData"]),
        inputCount: json["inputCount"],
        winMode: json["winMode"],
        betOrder: json["betOrder"],
      );

  Map<String, dynamic> toJson() => {
        "unitPrice": unitPrice,
        "maxBetAmtMul": maxBetAmtMul,
        "betDispName": betDispName,
        "betCode": betCode,
        "betName": betName,
        "betGroup": betGroup,
        "pickTypeData": pickTypeData?.toJson(),
        "inputCount": inputCount,
        "winMode": winMode,
        "betOrder": betOrder,
      };
}

class PickTypeData {
  PickTypeData({
    this.pickType,
  });

  List<PickType>? pickType;

  factory PickTypeData.fromJson(Map<String, dynamic> json) => PickTypeData(
        pickType: List<PickType>.from(
            json["pickType"].map((x) => PickType.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pickType": pickType != null
            ? List<dynamic>.from(pickType!.map((x) => x.toJson()))
            : null,
      };
}

class PickType {
  PickType({
    this.name,
    this.code,
    this.range,
    this.coordinate,
    this.description,
  });

  String? name;
  String? code;
  List<Range>? range;
  dynamic coordinate;
  dynamic description;

  factory PickType.fromJson(Map<String, dynamic> json) => PickType(
        name: json["name"],
        code: json["code"],
        range: List<Range>.from(json["range"].map((x) => Range.fromJson(x))),
        coordinate: json["coordinate"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "range": range != null
            ? List<dynamic>.from(range!.map((x) => x.toJson()))
            : null,
        "coordinate": coordinate,
        "description": description,
      };
}

class Range {
  Range({
    this.pickMode,
    this.pickCount,
    this.pickValue,
    this.pickConfig,
    this.qpAllowed,
  });

  String? pickMode;
  String? pickCount;
  String? pickValue;
  String? pickConfig;
  String? qpAllowed;

  factory Range.fromJson(Map<String, dynamic> json) => Range(
        pickMode: json["pickMode"],
        pickCount: json["pickCount"],
        pickValue: json["pickValue"],
        pickConfig: json["pickConfig"],
        qpAllowed: json["qpAllowed"],
      );

  Map<String, dynamic> toJson() => {
        "pickMode": pickMode,
        "pickCount": pickCount,
        "pickValue": pickValue,
        "pickConfig": pickConfig,
        "qpAllowed": qpAllowed,
      };
}

class DrawRespVo {
  DrawRespVo({
    this.drawId,
    this.drawName,
    this.drawDay,
    this.drawDateTime,
    this.drawSaleStartTime,
    this.drawFreezeTime,
    this.drawSaleStopTime,
    this.drawStatus,
    this.videoUrl,
  });

  dynamic drawId;
  String? drawName;
  String? drawDay;
  DateTime? drawDateTime;
  DateTime? drawSaleStartTime;
  DateTime? drawFreezeTime;
  DateTime? drawSaleStopTime;
  String? drawStatus;
  dynamic videoUrl;

  factory DrawRespVo.fromJson(Map<String, dynamic> json) => DrawRespVo(
        drawId: json["drawId"],
        drawName: json["drawName"],
        drawDay: json["drawDay"],
        drawDateTime: DateTime.parse(json["drawDateTime"]),
        drawSaleStartTime: DateTime.parse(json["drawSaleStartTime"]),
        drawFreezeTime: DateTime.parse(json["drawFreezeTime"]),
        drawSaleStopTime: DateTime.parse(json["drawSaleStopTime"]),
        drawStatus: json["drawStatus"],
        videoUrl: json["videoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "drawId": drawId,
        "drawName": drawName,
        "drawDay": drawDay,
        "drawDateTime": drawDateTime?.toIso8601String(),
        "drawSaleStartTime": drawSaleStartTime?.toIso8601String(),
        "drawFreezeTime": drawFreezeTime?.toIso8601String(),
        "drawSaleStopTime": drawSaleStopTime?.toIso8601String(),
        "drawStatus": drawStatus,
        "videoUrl": videoUrl,
      };
}

class LastDrawWinningResultVo {
  LastDrawWinningResultVo({
    this.lastDrawDateTime,
    this.winningNumber,
    this.winningMultiplierInfo,
    this.runTimeFlagInfo,
    this.sideBetMatchInfo,
    this.drawId,
    this.totalSaleValue,
    this.currentDrawStatus,
  });

  DateTime? lastDrawDateTime;
  String? winningNumber;
  WinningMultiplierInfo? winningMultiplierInfo;
  List<dynamic>? runTimeFlagInfo;
  List<dynamic>? sideBetMatchInfo;
  int? drawId;
  int? totalSaleValue;
  dynamic currentDrawStatus;

  factory LastDrawWinningResultVo.fromJson(Map<String, dynamic> json) =>
      LastDrawWinningResultVo(
        lastDrawDateTime: DateTime.parse(json["lastDrawDateTime"]),
        winningNumber: json["winningNumber"],
        winningMultiplierInfo:
            WinningMultiplierInfo.fromJson(json["winningMultiplierInfo"]),
        runTimeFlagInfo:
            List<dynamic>.from(json["runTimeFlagInfo"].map((x) => x)),
        sideBetMatchInfo:
            List<dynamic>.from(json["sideBetMatchInfo"].map((x) => x)),
        drawId: json["drawId"],
        totalSaleValue: json["totalSaleValue"],
        currentDrawStatus: json["currentDrawStatus"],
      );

  Map<String, dynamic> toJson() => {
        "lastDrawDateTime": lastDrawDateTime?.toIso8601String(),
        "winningNumber": winningNumber,
        "winningMultiplierInfo": winningMultiplierInfo?.toJson(),
        "runTimeFlagInfo": runTimeFlagInfo != null
            ? List<dynamic>.from(runTimeFlagInfo!.map((x) => x))
            : null,
        "sideBetMatchInfo": sideBetMatchInfo != null
            ? List<dynamic>.from(sideBetMatchInfo!.map((x) => x))
            : null,
        "drawId": drawId,
        "totalSaleValue": totalSaleValue,
        "currentDrawStatus": currentDrawStatus,
      };
}

class WinningMultiplierInfo {
  WinningMultiplierInfo({
    this.multiplierCode,
    this.value,
  });

  dynamic multiplierCode;
  dynamic value;

  factory WinningMultiplierInfo.fromJson(Map<String, dynamic> json) =>
      WinningMultiplierInfo(
        multiplierCode: json["multiplierCode"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "multiplierCode": multiplierCode,
        "value": value,
      };
}

class ResultConfigData {
  ResultConfigData({
    this.type,
    this.balls,
    this.ballsPerCall,
    this.interval,
    this.duplicateAllowed,
  });

  String? type;
  String? balls;
  int? ballsPerCall;
  int? interval;
  bool? duplicateAllowed;

  factory ResultConfigData.fromJson(Map<String, dynamic> json) =>
      ResultConfigData(
        type: json["type"],
        balls: json["balls"],
        ballsPerCall: json["ballsPerCall"],
        interval: json["interval"],
        duplicateAllowed: json["duplicateAllowed"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "balls": balls,
        "ballsPerCall": ballsPerCall,
        "interval": interval,
        "duplicateAllowed": duplicateAllowed,
      };
}

class UnitCost {
  UnitCost({
    this.currency,
    this.price,
  });

  String? currency;
  int? price;

  factory UnitCost.fromJson(Map<String, dynamic> json) => UnitCost(
        currency: json["currency"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "currency": currency,
        "price": price,
      };
}
