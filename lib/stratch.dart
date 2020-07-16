// -----------------------------------------------------
// Run task 3 first then only run async task 2
//import 'dart:io';
//
//void main() {
//  performTasks();
//}
//
//void performTasks()  {
//  task1();
//  String task2Result = task2();
////  print(task2());
//  task3();
//}
//
//void task1() {
//  String result = 'task 1 data';
//  print('Task 1 complete');
//}
//
//String task2() {
//
//  Duration threeSeconds = Duration(seconds: 3);
//  String result;
//
//   Future.delayed(threeSeconds,() {
//    result = 'task 2 data';
//    print('Task 2 complete');
//  });
//  return result;
//}
//
//void task3() {
//  String result = 'task 3 data';
//  print('Task 3 complete');
//}
// -------------------------------------------------------
// task 3 related to async task 2. task 3 run first and return null
//import 'dart:io';
//
//void main() {
//  performTasks();
//}
//
//void performTasks()  {
//  task1();
//  String task2Result =  task2();
////  print(task2());
//  task3(task2Result);
//}
//
//void task1() {
//  String result = 'task 1 data';
//  print('Task 1 complete');
//}
//
//String task2() {
//
//  Duration threeSeconds = Duration(seconds: 3);
//  String result;
//
//  Future.delayed(threeSeconds,(){
//    result = 'task 2 data';
//    print('Task 2 complete');
//  });
//  return result;
//}
//
//void task3(String task2Data) {
//  String result = 'task 3 data';
//  print('Task 3 complete $task2Data');
//}

// -------------------------------------------------------
// task 3 related to async task 2. task 2 run first to giv data to task 3
import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
//  print(task2());
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

 task2() async {

  Duration threeSeconds = Duration(seconds: 3);
  String result;

  await Future.delayed(threeSeconds,(){
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}