

/** Assignment Operator: 赋值运算
 *
 *
 */

 let name = "my name"
 var newName = "new name"

 let (x,y) = (1,2)
 var array:[String] = []
print(name)

/** Arithmetic Operators: 数学运算
 *
 *	Remainder Operator 取余
 *
 *	Unary Minus Operator 一元负值运算
 *	
 *	Unary Plus Operator 一元正值运算
 *	
 */

let a = 9 % 4 
print(a)

var b = 9 % 3
print(b)

let c = -9 % 10
print(c)


/** Compound Assignment Operators: 复合赋值运算
 *
 *
 */
var comNum = 0

comNum += 10
print(comNum)
comNum -= 1
print(comNum)
comNum *= 10
print(comNum)
comNum /= 10
print(comNum)


/** Comparison Operators: 比较运算
 *
 *
 */
 if "sign" == "name"{

 }

 if 0 != 1{

 }

 if 10 > 9 || 9 < 10 {

 }

 if 100 >= 10 || 10 <= 100{

 }

 print((1,"name") < (3,"goback"))
 print(("blue",10) < ("p",100))


/** Ternary Conditional Operator: 三目运算
 */

let cost = 10
let total = 100
var remain = total>cost ? (total-cost):cost
print(remain)

/**  Nil-Coalescing Operator: 非空操作
 */
var date:String?

var newDate = date==nil ? "":date!

var anDate = date ?? ""


/**  Range Operators:切片操作
 *
 *	Closed Range Operator 闭区间
 *	
 *	Half-Open Range Operator 左闭右开区间
 *	
 *	One-Sided Ranges 一边区间
 *
 */

 for index in 1...5{
 	print(index)
 }

for index in 1..<10{
	print(index)
}

var narray = ["a","b","c","d"]
for name in narray[2...]{
	print(name)
}

for name in narray[...2]{
	print(name)
}



/** Logical Operators: 逻辑判断
 *
 *  Logical NOT Operator
 *
 *	Logical AND Operator
 *
 *	Logical OR Operator
 *
 *	Combining Logical Operators
 *
 *	Explicit Parentheses 明确的括号
 *
 */

let t = true

let f = !true

let tANDf = t && f

let tORf = t || f

let tCOMf = (tANDf || tORf) || (tORf && tORf )



