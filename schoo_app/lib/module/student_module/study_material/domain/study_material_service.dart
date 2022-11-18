import 'package:schoo_app/module/student_module/study_material/domain/study_material.dart';

abstract class StudyMaterialService {
  Future<List<StudyMaterial>> getStudyMaterial();
}
