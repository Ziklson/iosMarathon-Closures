import Foundation

var array = [5, 3, 7, 1, 9, 4, 6, 8, 2]

array.sort(by: { a, b in a < b })
print(array)

array.sort(by: { a, b in a > b })
print(array) 

func addFriends(names: String...) -> [String] {
    var friends = [String]()
    for name in names {
        friends.append(name)
    }
    return friends
}

var friends = addFriends(names: "Ian", "Fiona", "Carl", "Debbie", "Phillip")
friends.sort(by: { a, b in a.count < b.count })
print(friends)

var nameLengths = [Int: String]()
for friend in friends {
    nameLengths[friend.count] = friend
}
print(nameLengths) 

func printName(key: Int) {
    if let name = nameLengths[key] {
        print("Key: \(key), Value: \(name)")
    } else {
        print("There is no such key in dictionary")
    }
}
printName(key: 7) 
printName(key: 4)
printName(key: 3)
printName(key: 46)
func checkEmptyArrays(strings: [String], numbers: [Int]) {
    var strings = strings
    var numbers = numbers
    if strings.isEmpty {
        strings.append("not empty anymore")
    }
    if numbers.isEmpty {
        numbers.append(16022024)
    }
    print("String array: \(strings)")
    print("Integer array: \(numbers)")
}
checkEmptyArrays(strings: [], numbers: [4511, 412, 143]) 
checkEmptyArrays(strings: ["IOS", "ANDROID"], numbers: []) 
