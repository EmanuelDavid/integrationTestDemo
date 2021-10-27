
extension ConsoleLogger on String {
  consoleParameters() {
     return _setTemplateWith("SENT PARAMENTERS",  "🔵");
  }
  consoleSuccessResponse(String content) {
    return _setTemplateWith("SUCCESS RESPONSE", "✅");
  }
  consoleAPIError(String content) {
    return _setTemplateWith("API ERROR", "⛔️");
  }

  consoleServerError(String content) {
    return _setTemplateWith("SERVER ERROR", "❌");
  }

  consoleError(String content) {
    return _setTemplateWith("SERVER ERROR", "‼️");
  }

   String _setTemplateWith(String message, String symbol) {
    return "\n $symbol $message $symbol\n\n $this \n\n";
  }
}
