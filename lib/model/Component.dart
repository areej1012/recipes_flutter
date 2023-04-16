class Component{
  final int? position;
  final String? raw_text;

  Component({ required this.position, required this.raw_text});

  factory Component.fromJson(Map<String, dynamic>? dataJson){
    return Component(position: dataJson?['position'], raw_text: dataJson?['raw_text']);
  }
}

