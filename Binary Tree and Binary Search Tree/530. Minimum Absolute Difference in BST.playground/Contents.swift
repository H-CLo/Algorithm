import UIKit

/**
 Given the root of a Binary Search Tree (BST), return the minimum absolute difference between the values of any two different nodes in the tree.
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

    var result = Int.max
    var previous: Int?

    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        getMinimumDifference(root.left)

        if let previous = previous {
            result = min(result, abs(root.val - previous))
        }
        previous = root.val

        getMinimumDifference(root.right)

        return result
    }
}
