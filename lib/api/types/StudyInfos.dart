import 'package:influenzanet_survey_engine/api/api.dart';

class StudyInfos {
  String key;
  String status;
  StudyInfosProps props;
}

class StudyInfosProps {
  List<LocalizedString> name;
  List<LocalizedString> description;
  List<StudyTag> tags;
  int startDate;
  int endDate;
  bool systemDefaultStudy;
}

class StudyTag {
  List<LocalizedString> label;
}
