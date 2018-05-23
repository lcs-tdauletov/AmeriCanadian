//
//  main.swift
//  AmeriCanadian
//

import Foundation

var counterOfExpected = 0

while true {
    
    print("How many words should I translate for you today?")
    guard let givenInput = readLine() else  {
        continue
    }
    guard let intInput = Int(givenInput) else  {
        continue
    }
    if intInput < 0 || intInput > 10 {
        continue
    }
    counterOfExpected = intInput
    break
}


// Collect the words to be translated
for counter in 1...counterOfExpected {
    
    // Prompt for a word
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Add your logic here...
    // Reverse strings was probably an academic way of doing it and would probably get me ready for the culminating more efficienty.
    // But I was itching for a pirate solution since the morning when you lectured me on Boolean Algebra with string: the man's ego shrinked.
    // The boxing bag was at the wrong place at the wrong time...
    var charArray : [Character] = Array(givenInput)
    
    if charArray[charArray.count - 1] == "r" && charArray[charArray.count - 2] == "u" && charArray[charArray.count - 3] == "o" || givenInput.count < 5{
        print("The tranlsation is \(givenInput)")
        
    } else if charArray[charArray.count - 1] == "r" && charArray[charArray.count - 2] == "o" && givenInput.count > 4 {
        charArray.remove(at: charArray.count - 1)
        charArray.append("u")
        charArray.append("r")

        print("The translation is \(String(charArray))")
    }
    
}

