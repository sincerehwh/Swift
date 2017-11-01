

var groupNum = 0
var array:[[Int]] = [] // 二维数组
var innerArray:[Int] = []

for index in 0...100000{
	groupNum = groupNum>10000 ? 0:groupNum+1 //10000个数分一组
	if groupNum == 10000 {
		array.append(innerArray)
		innerArray = []
	}
	innerArray.append(index)

}

print(array)