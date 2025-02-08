import Foundation

//eat, tea > a1e1t1
//k = 26 * 100
//n
//
//n*k

func getKey(_ str: String) -> String {
    var dic: [Character: Int] = [:]
    for c in str {
        if let value = dic[c] {
            dic[c] = value + 1
        } else {
            dic[c] = 1
        }
    }
    
    var result = ""
    for key in dic.keys.sorted() {
        result += key.description
        result += dic[key]!.description
    }
    return result
}

func groupAnagrams1(_ strs: [String]) -> [[String]] {
    var dic: [String: [String]] = [:]
    for str in strs {
        let key = getKey(str)
        if let value = dic[key] {
            dic[key] = value + [str]
        } else {
            dic[key] = [str]
        }
    }
    return Array(dic.values)
}

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var ans: [String: [String]] = [:]
    for str in strs {
        let key = String(str.sorted())
        ans[key, default: []].append(str)
    }
    return Array(ans.values)
}

print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
print(groupAnagrams(["ddddddddddg","dgggggggggg"]))

