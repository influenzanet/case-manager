import 'package:influenzanet_survey_engine/api/api.dart';

class LocalizedStringWrapper {
  LocalizedString _localizedString;

  LocalizedStringWrapper(String code, List<String> parts) {
    _localizedString = LocalizedString(code: code, parts: parts.map((p) => ExpressionArg(str: p)).toList());
  }

  factory LocalizedStringWrapper.fromJson(Map<String, dynamic> json) {
    return LocalizedStringWrapper(
      json["code"] as String,
      (json["parts"] as List)?.map((p) => p["str"] as String)?.toList(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        "code": _localizedString.code,
        "parts": _localizedString.parts?.map((p) => p.str)?.toList(),
      };
}
