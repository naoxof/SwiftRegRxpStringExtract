import UIKit

var str = """
#Hello, playgro#und
This is test message
"""
var matchStrings:[String] = []
var regex = try? NSRegularExpression(pattern: "^#*.*\n", options: NSRegularExpression.Options())
var matchcount = regex?.numberOfMatches(in: str, options:  NSRegularExpression.MatchingOptions(), range: NSMakeRange(0, str.count))

if matchcount != nil{
    let matches = regex?.matches(in: str, options: NSRegularExpression.MatchingOptions(), range: NSMakeRange(0, str.count))
    let regrange = Range(matches![0].range(at: 0))
    let _ = regrange?.lowerBound
    let startIndex = str.index(str.startIndex, offsetBy: regrange!.lowerBound)
    let length = str.index(startIndex, offsetBy: regrange!.upperBound)
    print(str[startIndex..<length])
}else{
    print("no match!")
}

