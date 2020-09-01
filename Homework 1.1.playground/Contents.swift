/* ДЗ №2
// Необходимо реализовать на Swift одну из следующих структур данных:
// - Очередь (queue)
// - Связный список (linked list)
// - Стек (Stack)
 Структура должна иметь функции append(element), remove(element)
 Так же плюсом будет, если будет реализован инициализатор с помощью синтаксиса массива:
 let list: LinkedList<Int> = [1,2,3]
*/

import Foundation

//Stack
struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        items.removeLast()
    }
}

var list = IntStack(items: [1, 2, 3])
list.push(4)
list.pop()


//Linked List
//class Node<Int> {
//    let value: Int
//    var next: Node?
//    var previos: Node?
//
//    init(value: Int, next: Node? = nil, previos: Node? = nil) {
//        self.value = value
//        self.next = next
//        self.previos = previos
//    }
//}
//
//struct LinkedList {
//    var firstNode: Node<Int>?
//    var lastNode: Node<Int>?
//
//    mutating func insertFirst(_ value: Int) {
//        let node = Node(value: value, next: firstNode)
//        firstNode = node
//        firstNode?.previos = node
//        if lastNode == nil && firstNode?.next?.next == nil {
//            lastNode = firstNode?.next
//        }
//    }
//
//    mutating func append(_ value: Int) {
//        guard lastNode != nil else {
//            insertFirst(value)
//            return
//        }
//        lastNode?.next = Node(value: value, previos: lastNode)
//        lastNode = lastNode?.next
//    }
//}
//
//var lList = LinkedList()
//lList.insertFirst(1)
//lList.append(2)
//lList.append(3)
//lList.append(4)
//print(lList)
