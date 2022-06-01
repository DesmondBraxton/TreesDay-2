import UIKit


// TIMESTAMP @ 7:50
// DIAGRAM IN NOTEBOOK


// A heirarchical data atructure
// I'll be drawing a diagram in my note book
// In a binary tree
// In a binary search tree BST
// How to get the depth/ height of a tree?


class Node {
    
    var value: String
    var children: [Node] = []
    weak var parent: Node?
    
    init(value: String) {
        self.value = value
    }
    
    func add(child: Node) {
        children.append(child)
        child.parent = self
    }
}

let devices = Node(value: "Devices")

let appleDevices = Node(value: "Apple")
let androidDevices = Node(value: "Android")

// to add these two nodes to the tree we do the following

devices.add(child: appleDevices)
devices.add(child: androidDevices)

print(devices)

// This extension helps the visualization of the treeNodes and heirarchy

extension Node: CustomStringConvertible {
    var description: String {
        var text: "\(value)"
        
        if !children.isEmpty {
            text += " {" + children.map { $0.description }.joined(seperator
        }
    }
}
