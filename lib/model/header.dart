Map<String, String> headerWithToken({required String token}) {
  return {'Accept': 'application/json', 'Authorization': 'Bearer $token'};
}
