class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var maxLength = 0
        let uniqueCharacters = Set(s)
        let characters = Array(s)

        for character in uniqueCharacters {
            var l = 0, r = 0, characterFrequency = 0

            while r < characters.count {
                if characters[r] == character {
                    characterFrequency += 1
                }

                while (r - l + 1) - characterFrequency > k {
                    if characters[l] == character {
                        characterFrequency -= 1
                    }
                    l += 1
                }
                maxLength = max(maxLength, r - l + 1)
                r += 1
            }
        }
        return maxLength
        /*
        start w fast and slow ptrs
        keep track of num replacements
        check if char at fast is equal to char at slow
        set new max
        if equal increment fast
        */
        // var res = 0
        // let charSet = Set(s)
        // let chars = Array(s)

        // for char in charSet {
        //     var l = 0, count = 0
        //     for r in 0..<chars.count {
        //         // find the number of characters that match c
        //         if chars[r] == char {
        //             count += 1
        //         }

        //         // if characters that don't match c > k, shrink from left
        //         while (r - l + 1) - count > k {
        //             // if we remove a c character from window decrease our count
        //             if chars[l] == char {
        //                 count -= 1
        //             }
        //             l += 1
        //         }

        //         res = max(res, r - l + 1)
        //     }
        // }

        // return res
    }
}
