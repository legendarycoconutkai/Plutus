import 'dart:developer';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:plutus/Backend/userdata.dart';

void generateContent(int i, String text) async {
  final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: i==2 ? dotenv.env['GOOGLE_API_KEY_2']! : i==3 ? dotenv.env['GOOGLE_API_KEY_3']! : dotenv.env['GOOGLE_API_KEY_4']!,
  );

  final prompt = text;
  final content = [Content.text(prompt)];
  final response = await model.generateContent(content);

  log(response.text!);

  try {
    if (i == 2) {
      await UserData.saveUserData(
        llmOutput: response.text!,
      );
    } else if (i == 3) {
      await UserData.saveUserData(
        smOutput: response.text!,
      );
    } else {
      await UserData.saveUserData(
        finalScore: response.text!,
      );
    }
  } catch (e) {
    log('Failed to save user data: $e');
  }
}