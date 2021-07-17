import 'package:hive/hive.dart';

part 'checkbox_state.g.dart';

@HiveType(typeId: 0)
class CheckBoxState extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late bool value;

  CheckBoxState({required this.title, this.value = false});
}
