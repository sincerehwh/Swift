
/** 沙盒的文件结构                         iTunes同步？
 *
 *  /AppName.app -------------------------- 是
 *
 *  /Documents ---------------------------- 是
 *
 *  /Library
 *
 *      /Library/Caches ------------------- 否
 *
 *      /Library/Perference --------------- 是
 *
 *  /tmp:  -------------------------------- 否
 *
 *  /Documents: 重要数据文件和用户数据文件
 *  /Library/Caches: 程序使用时产生的支持文件和缓存文件，日志文件最好也放在这个目录
 *  /Library/Perference: 保存应用程序的偏好设置文件
 *  /tmp: 保存应用运行时所需要的临时数据，iPhone重启时，会清除该目录下所有文件
 *
 */


import UIKit

/// 沙盒路径的类型
enum HWHPath:String {
    case home = ""
    case documents = "/Documents"
    case library = "/Library"
    case caches = "/Library/Caches"
    case preference = "/Library/Perference"
    case tmp = "/tmp"
}

/// 获取沙盒路径
func filePath(dir:HWHPath)->String{
    return NSHomeDirectory()+dir.rawValue
}

/** 获取：
 *    文件夹下的文件
 *    文件夹下的文件夹
 */
class HWHFile: NSObject {
    
    /// 路径下的所有文件
    class func filesIn(path:String)->[String]{
        var filesPath = [String]()
        do{
            let array = try FileManager.default.contentsOfDirectory(atPath: path)
            for fileName in array{
                var isDir:ObjCBool = true
                let fPath = "\(path)/\(fileName)"
                if FileManager.default.fileExists(atPath: fPath, isDirectory: &isDir){
                    if !isDir.boolValue{
                        filesPath.append(fPath)
                    }
                }
            }
            
        }catch let error as NSError{
            print("Get file path Error: ",error)
        }
        return filesPath
    }
    
    /// 路径下的所有文件夹
    class func directoryIn(path:String)->[String]{
        var filesPath = [String]()
        do{
            let array = try FileManager.default.contentsOfDirectory(atPath: path)
            for fileName in array{
                var isDir:ObjCBool = true
                let fPath = "\(path)/\(fileName)"
                if FileManager.default.fileExists(atPath: fPath, isDirectory: &isDir){
                    if isDir.boolValue{
                        filesPath.append(fPath)
                    }
                }
            }
            
        }catch let error as NSError{
            print("Get file path Error: ",error)
        }
        return filesPath
    }
    
}
