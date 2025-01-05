void main() {
  int index = binarySearch([1, 2, 3, 5, 7, 8, 9], 8);
  print(index);
}

int binarySearch(List<int> list, target) {
  int left = 0;
  int right = list.length - 1;
  while (left <= right) {
    int mid = (left + right) ~/ 2;
    if (list[mid] == target) return mid;
    if (list[mid] < target)
      left = mid + 1;
    else
      right = mid - 1;
  }
  return -1;
}
