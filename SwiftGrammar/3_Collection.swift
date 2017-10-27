/** Collection 收集类型 
 *
 * 
 *	Array：有序的数据集合类型
 * 
 *	Set：无序的唯一值集合类型
 *
 *	Dictionary：无序的键值对（键唯一）集合类型
 *
 */


/* ---------------------------------------- */
/** Array: */

// 1.有序的数据结构
// 2.元素值不唯一

/* ---------------------------------------- */


/** ---------- 数组的声明 ---------- */
let array = [1,2,3,4,5]
// let声明的是常量数组，无法做增删操作
// array.removeFirst()
// array.insert(6) 

var newArray = [1,2,3,4,5,6]
newArray.removeFirst()
newArray.insert(100,at:4) 
print(newArray)

/** ---------- 创建数组 ---------- */
// 创建空数组 : 存储的值为Int类型
var names = [Int]()
var elemArray:Array<String> = []
var nelemArray:[String] = []

// 创建有初始值的数组 :  
var intArray = Array(repeating:2.5,count:10)
print(intArray)

// 创建数组：通过合并两个数组 （ ⚠️ 合并数组的前提是两个数组的元素类型相同）
var combineArray = intArray + [1,2,3,4]

// 创建数组：通过数组标识符
var newNames:[String] = ["",""]

/** ---------- 访问和修改数组 ---------- */
var a = ["a","b","c","d","e"]

// 判断是否为空
if a.isEmpty { print("a is empty!") }

// 增加元素
a.append("newElement") // 拼接元素

a += ["new"] // 拼接数组

a.insert("newEl",at:0) // 插入元素

// 访问数组
var index0 = a[0]

// 修改元素
a[0] = "changed A" // 单个替换

a[0...3] = ["ccccc"] // 切片替换

// 删除元素

a.remove(at:0)

a.removeFirst()

a.removeLast()


/** ---------- 迭代数组 ---------- */

for item in [1,2,3,4,5,6,7,8,9]{
	print(item)
}

for (index,item) in [1,2,3,4,5].enumerated(){
	print("Item \(index + 1): \(item)")
}


/* ---------------------------------------- */
/* ---------------------------------------- */
/**  Set 集合 *
 *
 * 1.无序的数据结构
 * 
 * 2.元素值唯一
 * 
 */


/** ---------- 创建集合 ---------- */

// 创建集合
var aSet = Set<String>()

// 创建集合：通过数组
var unqueNumSet:Set<Int> = [1,1,1,2,3,4,5,6,7,8]

/** ---------- 集合操作 ---------- */

// 判断是否为空
if unqueNumSet.isEmpty{
	print(" unqueNumSet is Empty ")
}

// 插入元素
unqueNumSet.insert(1000000)

// 删除元素
if let removedNumSet = unqueNumSet.remove(1){
	print(removedNumSet)
}

// 判断是否包含元素
if unqueNumSet.contains(5){

}

// 集合的迭代
for item in unqueNumSet{
	print(item)
}
print("---")

// 集合的按照顺序迭代
for item in unqueNumSet.sorted(){
	print(item)
}

/* 集合的运算 */

let A:Set = [0,1,2,3,4,5]
let B:Set = [5,6,7,8,9,10]

// A ∪ B 
let AunionB = A.union(B).sorted() 

// A ∩ B
let AintersectionB = A.intersection(B).sorted() 

// (A U B) - (A ∩ B)
let AsymmetricDifferenceB = A.symmetricDifference(B).sorted() 

// A - B 
let AsubtractingB = A.subtracting(B).sorted() 

print("A: ",A.sorted(),"  B: ",B.sorted() )
print("A∪B: ",AunionB)
print("A∩B: ",AintersectionB)
print("(AUB)_(A∩B): ",AsymmetricDifferenceB)
print("A_B: ",AsubtractingB)

/* 集合的判断 */

if A == B { // 判断集合内是不是包含完全相同的元素

}

if A.isSubset(of:B){ // A包含于B内部

}

if A.isSuperset(of:B){ // B包含于A内部

}

if A.isStrictSubset(of:B){ // A包含于B,但是A不等于B

}

if A.isStrictSuperset(of:B){ // A包含B,但是A不等于B

}

if A.isDisjoint(with:B){ // A和B有没用共同的值

}


/* ---------------------------------------- */
/* ---------------------------------------- */

/**  Dictionaries 字典 
 *
 * 1.无序的数据结构
 *
 * 2.键唯一
 * 
 */


/** 创建字典 */
var dic1 = [Int:String]()

var dic2:[String:Int] = ["":123]

var dic3 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//  字典的判断
if dic1.isEmpty{

}

// 字典的对数
print(dic1.count)

// 修改元素 1
if let oldValue = dic3.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// 修改元素 2
dic3["LHR"] = "London Heathrow"

// 查找元素
if let s = dic3["DUB"] {
    print("The name of the airport is \(s).")
} else {
    print("That airport is not in the airports dictionary.")
}

// 删除元素
if let remove = dic3.removeValue(forKey:"LHR"){
	print(remove)
}

// 遍历字典的Key和Value
for (key, value) in dic3 {
	print("Key:",key," value:",value)

}

// 遍历字典的Key
for  key in dic3.keys{
	print("key: ",key)
}

// 遍历字典的Values
for value in dic3.values{
	print("values:",value)
}

// 获取所有的Key || values
let keys = [String](dic3.keys).sorted()
let values = [String](dic3.values).sorted()

print(keys)











