import Foundation


class Father:NSObject{
    
    private var DNA:[[String]] = []
    init(DNA:[[String]]) {
        self.DNA = DNA
    }
    
    func resignDNA()->[[String]]{
        return productHalfDNA()
    }
    
    private func productHalfDNA()->[[String]]{
        var allSeeds:[[String]] = []
        // 产生一批种子
        for _ in 0...10{
            // 随机产生一颗种子
            var aSeed:[String] = []
            for h in DNA {
                // 随机获取种子子基因的类型
                let index = Int(arc4random()%1)
                aSeed.append(h[index])
            }
            allSeeds.append(aSeed)
        }
        return allSeeds
    }
    
}

class Mother:NSObject{
    
    private var DNA:[[String]] = []
    
    init(DNA:[[String]]) {
        self.DNA = DNA
    }
    
    func receiveDNA(halfDNAs:[[String]]){
        // 获取一颗随机种子
        let seedCount = halfDNAs.count
        let findex:Int = Int(arc4random()%UInt32(seedCount))
        let mindx:Int = Int(arc4random()%UInt32(seedCount))
        // 遍历种子
        let new = combineDNA(mhalfDNA:halfDNAs[findex],fhalfDNA:productHalfDNA()[mindx])
        birth(newDNA: new)
    }
    
    private func productHalfDNA()->[[String]]{
        var allSeeds:[[String]] = []
        // 产生一批种子
        for _ in 0...10{
            // 随机产生一颗种子
            var aSeed:[String] = []
            for h in DNA {
                // 随机获取种子子基因的类型
                let index = Int(arc4random()%1)
                aSeed.append(h[index])
            }
            allSeeds.append(aSeed)
        }
        return allSeeds
    }
    
    
    private func combineDNA(mhalfDNA:[String],fhalfDNA:[String])->[[String]]{
        
        var newDNA:[[String]] = []
        for x in 0..<mhalfDNA.count{
            let fpart = fhalfDNA[x]
            let mpart = mhalfDNA[x]
            newDNA.append([fpart,mpart])
        }
        return newDNA
    }
    
    private func birth(newDNA:[[String]]){
        print(newDNA)
    }
    
}

let f = Father(DNA: [["5","5"],["6","6"],["7","7"],["8","8"]])
let seeds = f.resignDNA()

let m = Mother(DNA: [["1","1"],["2","2"],["3","3"],["4","4"]])
m.receiveDNA(halfDNAs: seeds)

