import UIKit

/**
 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

 If target is not found in the array, return [-1, -1].

 You must write an algorithm with O(log n) runtime complexity.



 Example 1:

 Input: nums = [5,7,7,8,8,10], target = 8
 Output: [3,4]
 Example 2:

 Input: nums = [5,7,7,8,8,10], target = 6
 Output: [-1,-1]
 Example 3:

 Input: nums = [], target = 0
 Output: [-1,-1]
 */

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var firstIndex = -1
        var lastIndex = -1
        var start = 0
        var end = nums.count - 1

        while start <= end {
            if nums[start] == target {
                if firstIndex == -1 {
                    firstIndex = start
                }
            }

            if firstIndex == -1 {
                start += 1
            }

            if nums[end] == target {
                if lastIndex == -1 {
                    lastIndex = end
                }
            }

            if lastIndex == -1 {
                end -= 1
            }

            if firstIndex != -1 && lastIndex != -1 {
                break
            }
        }

        return [firstIndex, lastIndex]
    }
}

let solution = Solution()
let result = solution.searchRange([5,7,7,8,8,10], 8)
print("Result = \(result)")
