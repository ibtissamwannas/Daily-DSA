void main() {
  print(containsNearbyDuplicate([1, 0, 1, 1], 1));
}

// o(n^2)
bool containsNearbyDuplicate(List<int> nums, int k) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j] && (i - j) <= k) {
        return true;
      }
    }
  }
  return false;
}

// o(n)
bool containsNearbyDuplicateHash(List<int> nums, int k) {
  Map<int, int> hashMap = {};
  for (int i = 0; i < nums.length; i++) {
    if (hashMap.containsKey(nums[i])) {
      if (i - hashMap[nums[i]]! <= k) {
        return true;
      }
    }
    hashMap[nums[i]] = i;
  }
  return false;
}
