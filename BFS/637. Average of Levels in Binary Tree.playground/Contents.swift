import UIKit

/**
 Given the root of a binary tree, return the average value of the nodes on each level in the form of an array. Answers within 10-5 of the actual answer will be accepted.


 Example 1:


 Input: root = [3,9,20,null,null,15,7]
 Output: [3.00000,14.50000,11.00000]
 Explanation: The average value of nodes on level 0 is 3, on level 1 is 14.5, and on level 2 is 11.
 Hence return [3, 14.5, 11].
 Example 2:


 Input: root = [3,9,20,15,7]
 Output: [3.00000,14.50000,11.00000]
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var queue = [root]
        var result = [Double]()
        while !queue.isEmpty {
            let length = queue.count
            var row = 0
            for _ in 0..<length {
                let current = queue.remove(at: 0)
                row += current?.val ?? 0
                if let left = current?.left {
                    queue.append(left)
                }
                if let right = current?.right {
                    queue.append(right)
                }
            }
            result.append(Double(row)/Double(length))
        }

        return result
    }
}
