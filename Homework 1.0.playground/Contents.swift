// ДЗ №1
// Решаем 4 задачи, раскомментируем задачи по мере решения
// тело задачи закомментировано символами /*...code...*/
/*
 вот так
 */

import Foundation

// MARK: Задача 1
// На вход функции приходит массив типа [Any], состоящий из
// положительных целых чисел и строк
// Нужно отсортировать массив таким образом, чтобы на выходе функции массив содержал только числа, порядок сохранить.

func arraySort(_ array: [Any]) -> [Int] {
    var isNumArray = [Int]()
    for i in array where ((i as? Int) != nil) {
        isNumArray.append(i as! Int)
    }
    return isNumArray
}

let stringsInts: [Any] = [1, 2,"123", "333", 3, "4413", 4, 5]

assert(arraySort(stringsInts) == [1,2,3,4,5])

// MARK: Задача 2
// На вход функции поступает случайная строка, не содержащая чисел и спецсимволов
// Необходимо преобразовать строку чтобы каждое слово начиналось с большой буквы
// "hello world" -> "Hello World"


func capitalizeString(_ string: String) -> String {
    return(string.capitalized)
}

let nonCapitalized: String = "How can mirrors be real if our eyes aren't real"
assert(capitalizeString(nonCapitalized) == "How Can Mirrors Be Real If Our Eyes Aren't Real")
assert(capitalizeString("hello world") == "Hello World")

// MARK: Задача 3
// На вход функции поступает целое число
// Функция должна возвращать true если число является простым (делится только на 1 и на себя), и false в противном случае
// 1 -> true
// 4 -> false


func isPrime(_ int: Int) -> Bool {
    if int == 1 {
        return true
    }
    var num = 2
    while num * num <= abs(int) {
        if abs(int) % num == 0{
            return false
        }
        num += 1
    }
    return true
}

assert(isPrime(1) == true)
assert(isPrime(-3) == true)
assert(isPrime(121) == false)
assert(isPrime(5426) == false)
assert(isPrime(1439) == true)
assert(isPrime(2699) == true)


// MARK: Задача 4
// На вход функции поступает два массива строк - первый является списком имен, второй - списком имен друзей
// функция должна вернуть массив имен, отфильрованных по принципу является ли имя именем друга
// Массив ["Ryan", "Kieran", "Mark"] при списке друзей ["Ryan", "Mark"] должен вернуть ["Ryan", "Mark"]


func friendOrFoe(_ names: [String], friends: [String]) -> [String] {
    let allFriends = names.filter(friends.contains)
    return allFriends
}

assert(friendOrFoe(["Ryan", "Kieran", "Mark"], friends: ["Ryan", "Mark"]) == ["Ryan", "Mark"])
assert(friendOrFoe(["John", "Fred", "Lily"], friends: ["Lily"]) == ["Lily"])
assert(friendOrFoe(["Harry", "Ron", "Drako"], friends: ["Harry", "Ron", "Hermione"]) == ["Harry", "Ron"])

