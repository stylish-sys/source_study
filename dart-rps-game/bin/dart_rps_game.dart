import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dart_rps_game/dart_rps_game.dart' as dart_rps_game;

void main(List<String> arguments) {
  print('가위 바위 보 중에 입력');
  String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  const selectList = ['가위', '바위', '보'];
  final cpuInput = selectList[Random().nextInt(3)];

  print(cpuInput);

  print(getResult(userInput, cpuInput));

}

String getResult(String userInput, String cpuInput){
  String result = "";

  switch(userInput){
    case '가위' :
      cpuInput == '가위' ? result = '비김' : cpuInput == '바위' ? result = '컴퓨터 승' : result = '유저 승';
    case '바위' :
      cpuInput == '바위' ? result = '비김' : cpuInput == '보' ? result = '컴퓨터 승' : result = '유저 승';
    case '보' :
      cpuInput == '보' ? result = '비김' : cpuInput == '가위' ? result = '컴퓨터 승' : result = '유저 승';
  }

  return result;
}
