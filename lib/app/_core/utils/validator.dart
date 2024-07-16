class Validator {
  bool isValidCPF(String cpf) {
    if (cpf.length != 11) return false;

    List<int> numbers = cpf.split('').map(int.parse).toList();

    if (numbers.every((number) => number == numbers.first)) return false;

    int sum = 0;
    int remainder;

    for (int i = 1; i <= 9; i++) {
      sum += numbers[i - 1] * (11 - i);
    }
    remainder = (sum * 10) % 11;
    if ((remainder == 10) || (remainder == 11)) remainder = 0;
    if (remainder != numbers[9]) return false;

    sum = 0;
    for (int i = 1; i <= 10; i++) {
      sum += numbers[i - 1] * (12 - i);
    }
    remainder = (sum * 10) % 11;
    if ((remainder == 10) || (remainder == 11)) remainder = 0;
    if (remainder != numbers[10]) return false;

    return true;
  }

  bool isValidPassword(String password) {
    return password.length >= 6 && password.length <= 8;
  }
}
