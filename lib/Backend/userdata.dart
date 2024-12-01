import 'package:shared_preferences/shared_preferences.dart';

class UserData {
  static Future<void> saveUserData({
    String? name,
    String? icNumber,
    String? phone,
    String? marital,
    String? address,
    String? nationality,
    String? occupation,
    String? cname,
    String? estatus,
    String? oaddress,
    String? amount,
    String? duration,
    String? income,
    String? cnnOutput,
    String? llmOutput,
    String? smOutput,
    String? finalScore,
  }) async {
   
    final prefs = await SharedPreferences.getInstance();

    if (name != null) await prefs.setString('name', name);
    if (icNumber != null) await prefs.setString('icNumber', icNumber);
    if (phone != null) await prefs.setString('phone', phone);
    if (marital != null) await prefs.setString('marital', marital);
    if (address != null) await prefs.setString('address', address);
    if (nationality != null) await prefs.setString('nationality', nationality);
    if (occupation != null) await prefs.setString('occupation', occupation);
    if (cname != null) await prefs.setString('cname', cname);
    if (estatus != null) await prefs.setString('estatus', estatus);
    if (oaddress != null) await prefs.setString('oaddress', oaddress);
    if (amount != null) await prefs.setString('amount', amount);
    if (duration != null) await prefs.setString('duration', duration);
    if (income != null) await prefs.setString('income', income);
    if (cnnOutput != null) await prefs.setString('cnnOutput', cnnOutput);
    if (llmOutput != null) await prefs.setString('llmOutput', llmOutput);
    if (smOutput != null) await prefs.setString('smOutput', smOutput);
    if (finalScore != null) await prefs.setString('finalScore', finalScore);
  }

  static Future<String> readName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? '';
  }

  static Future<String> readIcNumber() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('icNumber') ?? '';
  }

  static Future<String> readPhone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('phone') ?? '';
  }

  static Future<String> readMarital() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('marital') ?? '';
  }

  static Future<String> readAddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('address') ?? '';
  }

  static Future<String> readNationality() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('nationality') ?? '';
  }

  static Future<String> readOccupation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('occupation') ?? '';
  }

  static Future<String> readCname() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('cname') ?? '';
  }

  static Future<String> readEstatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('estatus') ?? '';
  }

  static Future<String> readOaddress() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('oaddress') ?? '';
  }

  static Future<String> readAmount() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('amount') ?? '';
  }

  static Future<String> readDuration() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('duration') ?? '';
  }

  static Future<String> readIncome() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('income') ?? '';
  }

  static Future<String> readCnnOutput() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('cnnOutput') ?? '';
  }

  static Future<String> readLlmOutput() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('llmOutput') ?? '';
  }

  static Future<String> readSmOutput() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('smOutput') ?? '';
  }

  static Future<String> readFinalScore() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('finalScore') ?? '';
  }
}