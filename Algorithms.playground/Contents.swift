import Foundation

// MARK:- MergeSort
/*
    Идея метода: есть массив с числами. Делим его на 2 подмассива, их сортируем,
    а после происходит слияние.
*/

let array = [0,9,7,8,4,3,10,12,14]
var firstHalf = Array(array[0...array.count/2 - 1])
var secondHalf = Array(array[array.count/2...array.count - 1])


func recursiveSort() -> [Int] {
    // sort will be here
    
    return []
}
// return sorted array
func merge(firstArray: [Int], secondArray: [Int], count: Int) -> [Int] {
    var i = 0
    var j = 0
    
    var result = [Int]()
    
    for _ in 0..<count {
    
        if i < firstArray.count {
            if j < secondArray.count {
                if firstArray[i] <= secondArray[j] {
                    result.append(firstArray[i])
                    i += 1
                } else {
                    result.append(secondArray[j])
                    j += 1
                }
            } else {
                // остались элементы только в первом массиве - просто копируем их
                result.append(firstArray[i])
                i += 1
            }
        } else {
        // остались элементы только во втором массивы - просто копируем их
            result.append(secondArray[j])
            j += 1
        }
    }
    
    return result
}

// test merge 
let a = [0, 1, 4, 6]
let b = [2, 3, 5, 9]

merge(firstArray: a, secondArray: b, count: 8)
// 0, 1, 2, 3, 4, 5, 6, 9
