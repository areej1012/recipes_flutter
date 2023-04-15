class Instruction{
  final String display_text;
  final int position;

  Instruction({required this.display_text, required this.position});

  factory Instruction.fromJson(Map<String,dynamic> dataJson){
    return Instruction(display_text: dataJson['display_text'], position: dataJson['position']);
  }
}