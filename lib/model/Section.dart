import 'Component.dart';

class Section{
  final List<dynamic> components;

  Section({required this.components});

  factory Section.fromJson(Map<String, dynamic> dataJson){
    return Section(components: dataJson['components']);
  }
}