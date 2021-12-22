class WeatherModel {
  WeatherModel({
    required this.localObservationDateTime,
    required this.epochTime,
    required this.weatherText,
    required this.weatherIcon,
    required this.hasPrecipitation,
    required this.precipitationType,
    required this.isDayTime,
    required this.temperature,
    required this.mobileLink,
    required this.link,
  });

  DateTime localObservationDateTime;
  int epochTime;
  String weatherText;
  int weatherIcon;
  bool hasPrecipitation;
  dynamic precipitationType;
  bool isDayTime;
  Temperature temperature;
  String mobileLink;
  String link;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        localObservationDateTime:
            DateTime.parse(json["LocalObservationDateTime"]),
        epochTime: json["EpochTime"],
        weatherText: json["WeatherText"],
        weatherIcon: json["WeatherIcon"],
        hasPrecipitation: json["HasPrecipitation"],
        precipitationType: json["PrecipitationType"],
        isDayTime: json["IsDayTime"],
        temperature: Temperature.fromJson(json["Temperature"]),
        mobileLink: json["MobileLink"],
        link: json["Link"],
      );

  Map<String, dynamic> toJson() => {
        "LocalObservationDateTime": localObservationDateTime.toIso8601String(),
        "EpochTime": epochTime,
        "WeatherText": weatherText,
        "WeatherIcon": weatherIcon,
        "HasPrecipitation": hasPrecipitation,
        "PrecipitationType": precipitationType,
        "IsDayTime": isDayTime,
        "Temperature": temperature.toJson(),
        "MobileLink": mobileLink,
        "Link": link,
      };
}

class Temperature {
  Temperature({
    required this.metric,
    required this.imperial,
  });

  Imperial metric;
  Imperial imperial;

  factory Temperature.fromJson(Map<String, dynamic> json) => Temperature(
        metric: Imperial.fromJson(json["Metric"]),
        imperial: Imperial.fromJson(json["Imperial"]),
      );

  Map<String, dynamic> toJson() => {
        "Metric": metric.toJson(),
        "Imperial": imperial.toJson(),
      };
}

class Imperial {
  Imperial({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  double value;
  String unit;
  int unitType;

  factory Imperial.fromJson(Map<String, dynamic> json) => Imperial(
        value: json["Value"].toDouble(),
        unit: json["Unit"],
        unitType: json["UnitType"],
      );

  Map<String, dynamic> toJson() => {
        "Value": value,
        "Unit": unit,
        "UnitType": unitType,
      };
}
