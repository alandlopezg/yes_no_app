import 'package:yes_no_app/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yes-no-wtf.vercel.app/api');

    return Message(
      text: response.data['answer'], 
      fromWho: FromWho.hers,
      imageURL: response.data['image']
      );
  }
}
