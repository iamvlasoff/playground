/* ДЗ №3 - задание со звездочкой
 Необходимо реализовать одну из структур предыдущего задания (№2) с помощью enum и indirect case
 // - Очередь (queue)
 // - Связный список (linked list)
 // - Стек (Stack)
 */

import Foundation


//Stack
enum Stack {
    case item(Int)
    case items(Array<Int>)
    indirect case push(Stack, Stack)
}

var arr = Stack.items([1, 2, 3, 4])
var elem = Stack.item(5)
var appStack = Stack.push(arr, elem)

func computeStack(_ compute: Stack) -> Array<Int> {
    switch compute {
    case let .items(array):
        return array
    case let .item(value):
        return [value]
    case let .push(array, value):
        return computeStack(array) + computeStack(value)
    }
}

print(computeStack(appStack))
