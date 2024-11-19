/**
Bài tập:
1. Viết chương trình chuyển đổi 1 số 
nguyên (n>=1) được nhập từ bàn phím 
thành số nhị phân.

2. Viết chương trình tính tổng
 các ước số của một số nguyên được 
 nhập từ bàn phím (n>=1). 
 */

import 'dart:io';

void main() {
  // Nhập n 
  stdout.write('Nhập một số nguyên (n >= 1): ');
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  // Kiểm tra n 
  if (n == null || n < 1) {
    print('Vui lòng nhập một số nguyên hợp lệ (>= 1).');
    return;
  }

  // Chuyển đổi sang nhị phân
  String binary = convertToBinary(n);

  // Xuất kết quả
  print('Số nhị phân của $n là: $binary');
}

// Tính tổng các ước số
  int sum = calculateSumOfDivisors(n);

  // Xuất kết quả
  print('Tổng các ước số của $n là: $sum');


// Hàm chuyển đổi số nguyên sang nhị phân
String convertToBinary(int n) {
  return n.toRadixString(2);
} 


// Hàm tính tổng các ước số của một số nguyên
int calculateSumOfDivisors(int n) {
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  return sum;
}