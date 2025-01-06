void main() {
  print(twoSumMap([2, 7, 11, 15], 9));
}

// o(n^2)
List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        return [i, j];
      }
    }
  }
  throw Exception("No solution found");
}

// o(n)
List<int> twoSumMap(List<int> nums, int target) {
  Map<int, int> hashMap = {};

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];
    if (hashMap.containsKey(complement)) {
      return [hashMap[complement]!, i];
    }
    hashMap[nums[i]] = i;
  }
  throw Exception("No solution found");
}
