const double gapFromAppBar = 25.0;
const double titlePadding = 8.0;
const double wideHorizontalPadding = 16.0;
const double textInputVerticalPadding = 32.0;
const double buttonHeight = 54.0;
const double buttonWidth = double.infinity;
const double codeNotReceivedTextTopPadding = 35.0;
const double codeTimeoutHorizontalPadding = 10.0;
const double timerTopPadding = 35.0;
const int otpLength = 6;
const String placeholder = '_';
const String delimiter = ' ';
const String hint = '_ _ _ _ _ _';
final String hint1 = (placeholder * otpLength).split('').join(delimiter);
final RegExp otpRegExp = RegExp(r'\d');
final Map<String, RegExp> filter = {placeholder: otpRegExp};
