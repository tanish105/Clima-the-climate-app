import 'dart:io';
import 'dart:io';

void main() {
  performTasks();
}

void performTasks()  async {
  task1();
  String task2res = await task2();
  task3(task2res);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2()  async {
  Duration dur = Duration(seconds: 5);
  String result;
  await Future.delayed(dur, (){
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2res) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2res');
}