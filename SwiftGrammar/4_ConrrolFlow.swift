

/** 控制流 */
// for-in
// while ,repeat-while
// if , guard


// For-In Loops 
for num in 0...10{ // 0..<100
	print(num)
}

let arr = [0,1,2,3,4,5,6,7,8]
for num in arr{
	print(num)
}

for (key,value) in ["a":1,"b":2,"c":3,"d":4]{
	print(key,value)
}

for num in stride(from:0,to:100,by:10){ // 右开区间
	print("stride",num)
}

for num in stride(from:0,through:100,by:10){ // 右闭区间
	print("stride",num)
}

// While Loop

var n = 0
while n < 100 { // 先判断条件再执行一次
	n += 100
}
print(n)


var i = 0
repeat { // 先执行一次再判断条件
  i+=1
} while i < 100
print(i)


// if 
if 10 > 100{

}else if 100<1000{
	
}else {
	
}


/** switch is Powerful 8*/

var name = "Louis"
switch name {

case "Tom","Jim","Kim":
	print("111")
case "Louis","Kingfasher":
	print("222")
case "Kim":
	print("333")
default:
	print("444")

}

// 区间判断
var x = 100
var naturalCount = ""
switch x {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

// 元组判断
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}


// 绑定一定的值，攫取特定的值 
let anotherPoint = (2, 2)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

// where取出值，对值做判断
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


/** 控制流操作语句 */



let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
		break // 结束整个循环 
        continue // 结束当前的循环，开始下一次的循环 
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)


// fallthrough
let integerToDescribe = 2
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {

case 1,3,5,7,9:
	description += " a even number, and also"
	// fallthrough 其后的判断全部会直接通过马上执行
case 2,4,6,8,10:
    description += " a odd number, and also"
    fallthrough
default:
    description += " an real number."
}
print(description)

// 循环控制 + Switch判断
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}


var  intNum = 0
runloop:while intNum < 100{
	intNum += 1
	switch intNum {
	case let n where n%2 == 0:
		print("even number :",intNum)
	case let n where n%2 != 0:
		print("odd number :",intNum)
	default:
		print("....")
	}
}


// guard
func greet(person: [String: String]) {
    guard let name = person["name"] else { // 不满足条件直接退出
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}
 

// 判断API是否可用 
if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}


