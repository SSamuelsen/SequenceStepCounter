import Foundation

//you are given a sequence of points and the order in which you need to cover the points.
//give the minimum number of steps in which you can achieve it.
//example: [(0,0),(1,1),(1,2)]
//output: 2
//it takes two steps, 1,1,to 1,2, to get from 0,0 to 1,2

                        // 0 1
let points = [(0,0),(1,1),(1,2)]

func steps(sequence: [(Int,Int)]) -> Int {
    //add 1 to this for number of steps to take
    var number = 0
    var reversed = sequence.enumerated().reversed()
    var extraSteps = 0
    //iterate through each point in the sequence
    //iterate backwards
    
    for point in 0..<sequence.count-1 {
        if(((reversed[point].element.0)-(reversed[point+1].element.0)==1)||((reversed[point].element.0)-(reversed[point+1].element.0)==0)){
            if(((reversed[point].element.1)-(reversed[point+1].element.1)==1)||((reversed[point].element.1)-(reversed[point+1].element.1)==0)){
                
                number += 1
                
                
            }//end if
            else {
                extraSteps = ((reversed[point].element.1)-(reversed[point+1].element.1))
                number += extraSteps
            }
        }//end if
        else {
            extraSteps = ((reversed[point].element.0)-(reversed[point+1].element.0))
            number += extraSteps
        }
    }//end for
        
    
    
    print(number)
    
    return number
    
}


steps(sequence: points)
