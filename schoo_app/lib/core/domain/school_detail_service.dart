import 'package:schoo_app/core/domain/basic_details.dart';
import 'package:schoo_app/core/domain/sechool_detail.dart';

abstract class SchoolService {
  Future<SchoolDetails> getSchoolDetails();
  Future<BasicDetails> getBasicDetails();
  Future<String> getToken();
}
