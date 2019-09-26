import Foundation

// Find the most frequently occurring character in a given string

func mostFrequentlyOccurringChar(in str: String) -> Character {
    
    var dict = [Character: Int]()
    
    for char in str {
        if let counter = dict[char] {
            dict[char] = counter + 1
        } else {
            dict[char] = 1
        }
    }
    
    let sortedDictArr = dict.sorted{$0.value > $1.value}
    return sortedDictArr[0].key
}

// Find the first indicies whose values sum to a given number

func pairSum(arr: [Int], target: Int) -> (Int, Int) {
    var dict = [Int: Int]()

    for num in arr {
        if let _ = dict[num] {
            continue
        } else {
            dict[num] = target - num
        }
    }

    let arrOfValues = Array(dict.values)

    var indexArr = [Int]()

    for (index, numX) in arr.enumerated() {
        for numY in arrOfValues where numX == numY {
            indexArr.append(index)
        }
    }



    return (indexArr[0], indexArr[1])
}




// Find the second most frequently occurring character in a given string

func secondMostFrequentlyOccurringChar(in str: String) -> Character {
        
        var dict = [Character: Int]()
        
        for char in str {
            if let counter = dict[char] {
                dict[char] = counter + 1
            } else {
                dict[char] = 1
            }
        }
        
        let sortedDictArr = dict.sorted{$0.value > $1.value}
        return sortedDictArr[1].key
}

// https://leetcode.com/problems/ransom-note/

// Given an arbitrary ransom note string and another string containing letters from all
// the magazines, write a function that will return true if the ransom note can be
// constructed from the magazines ; otherwise, it will return false.

// Each letter in the magazine string can only be used once in your ransom note.

// Submit to the leetcode link for more tests

func canConstruct(note: String, from originalLetters: String) -> Bool {
    return false
}


// Return whether or not an input array contains duplicates

func containsDuplicates(arr: [Int]) -> Bool {
    return false
}

// Find all values that appear exactly once in a given array of Strings

func uniqueValues(in arr: [String]) -> [String] {
    return []
}

// Sort a given array by how often each term appears

func sortByFrequency(arr: [Int]) -> [Int] {
    var dict = [Int: Int]()
    
    for num in arr {
        if let counter = dict[num] {
            dict[num] = counter + 1
        } else {
            dict[num] = 1
        }
    }
    
    let sortedDictArr = dict.sorted{$0.value > $1.value}

    return sortByFrequency(arr: [sortedDictArr[0].key])
    
    
}

