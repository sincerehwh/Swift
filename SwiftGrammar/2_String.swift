
/** Strings and Characters 字符串和字符 **/

func 打印( _ str:String){
	//reture 统一管
	print(str)
}

/**	String Literals： 字符串字面量
 *
 *	Multiline String Literals 多行字符串
 *	
 *	Special Characters in String Literals 特殊字符
 */

let constString = "A const string"
 
var mutString = "A mut string"

let mutilineString = """
					 我希望有个如你一般的人，
					 如山间清爽的风，
					 古城温暖的光，
					 从清晨到夜晚，
					 由山野到书房，
					 只要是你，
					 就好
				"""  //结束冒号的位置是字符串的起始计算线
打印(mutilineString)

let inString = "H哥说：\"不懂不要瞎逼逼\"\n" //做转意符号

let unicodeString = "\u{1244}" // 获取Unicode符号

let hardString = """
				 \"\"\"Hello world
				 	I am a swifter 
				 \"\"\"
				 """
打印(inString)
打印(unicodeString)
打印(hardString)

 /** Initializing an Empty String:初始化字符串
 *
 */

var emptyString = ""

var anotherEmptyString = String()

if emptyString.isEmpty {
	
}

 /** String Mutability:字符串的可变性
 *
 */

var hello = "Hello "
var world = "World"
var newHW = hello + world

/** Strings Are Value Types
 *
 */


/** Working with Characters
 *
 */
for character in "I am a long words"{
	print(character)
}

let charArray:[Character] = ["Q","W","E","R"]
let charString = String(charArray)
打印(charString)

/** Concatenating Strings and Characters：连接字符和字符串
 *
 *
 */

let str_a = "Hello"
let str_b = " here"
var str_c = str_a + str_b

str_c += ",I am louis"
str_c.append("@")
打印(str_c)

print(mutilineString + "\r\n" + hardString) // 多行字符串的拼接


/** String Interpolation：字符串插值
 *
 */

let height = 1000

let ll = "The height of the mountain is \(height)m)."
打印(ll)


/** Unicode : 统一的字符编码标准 21-bit
 *	 
 * 
 *	Unicode Scalars : Unicode标量
 *	
 *	Extended Grapheme Clusters：
 *
 */


// 用于某些语言的
let e:Character = "\u{E9}"
let ee:Character = "\u{65}\u{301}"
打印(String(ee))

let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
打印(String(decomposed))


/** Counting Characters: 计算字符
 *
 *	count 计算的是字符的个数
 */

var unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")

var word = "cafe"
print("the number of characters in \"\(word)\" is \(word.count)")

var unicode = "\u{65}\u{301}" 
print("unicode \(unicode) has \(unicode.count) Character ")



/** Accessing and Modifying a String:访问和修改字符串
 *
 *	
 * Inserting and Removing
 *
 */

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a)]

for index in greeting.indices{
	print(index)
	print("\(greeting[index])")
}

var he = "Hello"
he.insert("!",at:he.endIndex)
he.insert(contentsOf:" here ",at:he.index(before:he.endIndex))
print(he)

he.remove(at:he.index(before:he.endIndex))
let range = he.index(he.endIndex,offsetBy:-5)..<he.endIndex
he.removeSubrange(range)
print(he)


/** Substrings:子字符串
 *
 *	
 * Inserting and Removing
 *
 */

let me = "louishwh@gmail.com"
let indexMe = me.index(of:"@") ?? me.endIndex
let startIn = me[..<indexMe]
print(startIn)


let newMe = String(startIn)
print(newMe)


/** Comparing Strings:字符串的比较
 *
 *	
 * String and Character Equality
 *
 * Prefix and Suffix Equality
 *
 */

// 字符的比较，本质上是比较的
// https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/Strings/Articles/stringsClusters.html
let quotation = "We're a lot alike, you and I."
let sameQuotation = String("We're a lot alike, you and I.")
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

//MARK - ：
// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
 
// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
 
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}

//MARK - ：字符的形状相同，但是语言含义不同
let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent.")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")


/** Unicode Representations of Strings : Unicode字符串的表示
 *
 *
 *	UTF-8 Representation
 *	
 *	UTF-16 Representation
 *
 *  Unicode Scalar Representation
 * 
 */

let dogString = "Dog‼🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("\r\n")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("\r\n")

for codeUnit in dogString.unicodeScalars{
	print("\(codeUnit) ", terminator: "")	
}
print("\r\n")
