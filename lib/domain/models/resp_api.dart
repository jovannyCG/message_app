
import 'package:message_app/domain/models/message.dart';

class ApiResp {
    ApiResp({
        required this.answer,
        required this.forced,
        required this.image,
    });

    final String answer;
    final bool forced;
    final String image;

    factory ApiResp.fromJsonMap(Map<String, dynamic> json) => ApiResp(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Map<String, dynamic> toMap() => {
        "answer": answer,
        "forced": forced,
        "image": image,
    };

    Message toMessageModel()=> Message(
      text: answer == 'yes'?'si': 'no', 
      fromWho: FromWho.hers,
      imageUrl: image
      );
}
