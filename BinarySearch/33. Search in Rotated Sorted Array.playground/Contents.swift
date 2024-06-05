import UIKit

class Solution {

    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count

        while start < end {
            let mid = (start + end)/2
            print("Start = \(start), end = \(end), mid = \(mid)")
            print("Nums target = \(target), 0 index = \(nums[0]), mid index = \(nums[mid])")
            if target < nums[0] && nums[0] < nums[mid] {
                start = mid+1
            } else if target >= nums[0] && nums[0] > nums[mid] {
                end = mid
            } else if target > nums[mid] {
                start = mid+1
            } else if target < nums[mid] {
                end = mid
            } else {
                return mid
            }
        }

        return -1
    }
}

let solution = Solution()
let result = solution.search([4,5,6,7,0,1,2], 0)
