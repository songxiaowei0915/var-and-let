import UIKit

let cafe = "Caf\u{00e9}"

let cafee = "Caf\u{0065}\u{0301}"

cafee.count
cafe.count

cafe.utf8.count
cafee.utf8.count

cafe.utf16.count
cafee.utf16.count

cafe == cafee

let nsCafe = NSString(characters: [0x43,0x61,0x66,0xe9], length: 4)
nsCafe.length
let nsCafee = NSString(characters: [0x43,0x61,0x66,0x65,0x0301], length: 5)
nsCafee.length

nsCafe == nsCafee

let result = nsCafe.compare(nsCafee as String)
result == .orderedSame

let circleCafee = cafe + "\u{20dd}"
circleCafee.count

"🙎🏻‍♀️".count
"👩‍👩‍👧‍👦".count
"👨‍👩‍👧‍👦".count
"👩‍👧‍👧".utf16.count
"👨‍👦".utf16.count

extension String: Collection {
    
}

var swift = "Swift is fun"
swift.dropFirst(9)

var group = "👨‍👩‍👧‍👦"
group.dropFirst()

cafee.dropFirst(4)
let cafeedl = cafee.dropLast()
type(of: cafeedl)
cafee

cafee.unicodeScalars.forEach { print($0) }
cafee.utf8.forEach { print($0) }
cafee.utf16.forEach { print($0) }

let cafeeUnicode = cafee.unicodeScalars.dropLast()
type(of: cafeeUnicode)
type(of: cafee)
String(cafeeUnicode)

String(cafee.utf16.dropLast())
String(cafee.utf8.dropLast())

cafee.startIndex
cafee.endIndex

let index = cafee.index(cafee.startIndex, offsetBy: 3, limitedBy: cafee.endIndex)
cafee[index!]


extension String {
    subscript(index: Int)->Character {
        guard let index = self.index(self.startIndex, offsetBy: index, limitedBy: self.endIndex) else {
            fatalError("String index out of range")
        }
        
        return self[index]
    }
}

cafee[3]

let beg = cafee.startIndex
let end = cafee.index(beg, offsetBy: 3)
let cafeep1 = cafee[beg ..< end]

let cafeep2 = cafee.prefix(3)

cafeep1 == cafeep2
type(of: cafeep1)
type(of: cafeep2)

var mixStr = "Swfit很有趣"
for (index,value) in mixStr.enumerated() {
    print("\(index) \(value)")
}

if let index = mixStr.firstIndex(of: "很") {
    mixStr.insert(contentsOf: " 3.0", at: index)
}

if let cnIndex = mixStr.firstIndex(of: "很") {
    mixStr.replaceSubrange(cnIndex ..< mixStr.endIndex, with: " is interesting!")
}

let  sustr = mixStr.suffix(12).dropLast()
type(of: sustr)
String("interesting") == sustr

let mixspls = mixStr.split(separator: " ")
type(of: mixspls)

var i = 0
mixStr.split { _ in
    if i > 0 {
        i = 0
        return true
    }
    else {
        i += 1
        return false
    }
}

