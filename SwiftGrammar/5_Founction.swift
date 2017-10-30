
/** 函数 
 *
 * 
 *  声明
 *
 *  不带参数
 *
 *  带参数： 单参数 ，多参数
 *
 *  带返回值：
 *
 *	不带返回值：
 *	
 */

 /* 个人的理解：

 	函数的本质是一段处理相应事务的逻辑：

 	Input -> Output
	Input： 输入可以是事件（即函数调用本身这件事），也可以是数据（即函数的参数，参数可以再细化为，具体的数据类型）
	Output: 输入可以是事件（即函数调用本身这件事），也可以是数据（即函数的参数，参数可以再细化为，具体的数据类型）

	Input -> Output -> Input -> Output 简单的输入输出流循环交替构成复杂的逻辑体系
	
	程序的本质也就是输入与输出，而我我们构建的就是这输入与输出之间庞大逻辑网路
	
	如果说世界的的本质，也是这个输入与输出的关系
  */


func sayHelloWorld() -> String { // 无参数
    return "hello, world"
}

func sayHelloWorld(person: String) { // 无返回值
    print("Hello, \(person)!")
}


func sayHelloWorld(person: String, say: String) -> String { // Functions With Multiple Parameters
    return "Hello " + say
}


func minMax(array: [Int]) -> (min: Int, max: Int) { // 返回元组
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

func minMax(array: [Int]) -> (min: Int, max: Int)? { // 返回可选类型
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

func fu0(内外同参数名:String){ // 外部内部参数名不一致
	print(内外同参数名)
}

func fu1(外部参数名 内部参数名:String){ // 外部内部参数名不一致
	print(内部参数名)
}

func fu2(_ 内部参数名:String){ // 无外部参数名
	print(内部参数名)
}

func fu3(参数名:String="perfect"){ // 默认参数
	print(参数名)
}

func fu4(_ numbers:Int... ){ // 可变个数参数
	var total = 0
	for num in numbers{
		total+=num
	}
	print("Total is :",total)
}

fu0(内外同参数名:"0000")
fu1(外部参数名:"1111")
fu2("3333")
fu3()
fu4(1,2,3,4,5,6,7,8,9)


func swapTwoInts(_ a: inout Int, _ b: inout Int) { // 可以修改外部参数的真实值
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")



func addTwoInts(_ a: Int, _ b: Int) -> Int { // 声明一个函数
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts // 声明一个函数类型
print("Result: \(mathFunction(2, 3))") // 使用一个声明的函数类型

// 函数作为参数传递
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) { 
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
// 函数作为返回值
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}


// 嵌套函数
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}







