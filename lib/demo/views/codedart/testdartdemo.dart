void main() {
  print("Hello, World!");

  testList();
}

void testList() {
  // 列表（List）

  // 固定长度的列表，一旦定义就无法改变长度
  List<int> fixLengthList = new List(5);
  fixLengthList[0] = 2;
  print(fixLengthList);
  // 可改变长度的列表，可以根据需要改变长度
  List<int> growableList = [1,2];
  growableList.add(3);
  print(growableList);

  // 构造函数







  List growbelList = new List.from([1, 2, 3, 4]);
  growbelList.removeLast();
  print(growbelList);

  //List growbelList2 = List.from([1, 2, 3, 4], growable: false);  growable 干嘛用的
}

