class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let s1Arr = Array(s1)
        let s2Arr = Array(s2)

        var s1Map = [Character: Int]()
        var s2Map = [Character: Int]()

        if s1.count > s2.count{
            return false
        }

        for i in 0..<s1Arr.count{
            s1Map[s1Arr[i], default: 0] += 1
        } 

        for i in 0..<s1Arr.count {
            s2Map[s2Arr[i], default: 0] += 1
        }

        if s1Map == s2Map {
            return true
        }

        for right in s1Arr.count..<s2Arr.count {

            s2Map[s2Arr[right], default: 0] += 1
            
            let left = right - s1Arr.count 
            s2Map[s2Arr[left]]! -= 1

            if s2Map[s2Arr[left]] == 0 {
                s2Map.removeValue(forKey: s2Arr[left])
            }

            if s1Map == s2Map {
                return true
            }
        }

        return false
    }
}
