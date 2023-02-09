import 'CustomQueue.dart';
import 'CustomStack.dart';

void main() {
  CustomStack<int> stackNumbers = new CustomStack();

  int number1 = 10;
  int number2 = 20;
  int number3 = 30;

  stackNumbers.offer(number1);
  stackNumbers.offer(number2);
  stackNumbers.offer(number3);

  print('*** STACK ***\n');

  print(stackNumbers.isEmpty());
  print(stackNumbers.poll());
  print(stackNumbers.getTop());
  print(stackNumbers.toString());

  CustomQueue<int> queueNumbers = new CustomQueue<int>();

  int number4 = 10;
  int number5 = 20;
  int number6 = 30;

  queueNumbers.push(number4);
  queueNumbers.push(number5);
  queueNumbers.push(number6);

  print('*** QUEUE ***\n');

  print(queueNumbers.isEmpty());
  queueNumbers.pop();
  print(queueNumbers.toString());
  print(queueNumbers.getFirst());
  print(queueNumbers.toString());
}
