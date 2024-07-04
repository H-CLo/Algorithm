import UIKit

/**
 Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).



 Example 1:


 Input: root = [3,9,20,null,null,15,7]
 Output: [[3],[9,20],[15,7]]
 Example 2:

 Input: root = [1]
 Output: [[1]]
 Example 3:

 Input: root = []
 Output: []
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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var result = [[Int]]()
        var queue = [root]

        while !queue.isEmpty {
            let count = queue.count
            var tempArray = [Int]()

            for _ in 0..<count {
                let item = queue.removeFirst()
                tempArray.append(item.val)

                if let left = item.left {
                    queue.append(left)
                }

                if let right = item.right {
                    queue.append(right)
                }
            }

            result.append(tempArray)
        }

        return result
    }
}
