//
//  main.swift
//  AmeriCanadian
//

import Foundation

// INPUT

// Global variable, tracks how many words we can expect to have to translate
var countOfExpectedWordsToTranslate = 3

// Write a loop to actually collect the expected count of words to be translated from user
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT

// NOTE:
//
// Some example code that may be useful

// Start with a word
var word = "tour"

// Check to see if the word is "American" or not
let isAmerican = word.hasSuffix("or")
print("Is this word American? \(isAmerican)")

// Reverse the letters of the word
var reversedWord = String(word.reversed())
print("The reversed word is: \(reversedWord)")

// Now put things back the way they were to start
var originalWord = String(reversedWord.reversed())
print("The reversed word, reversed again is: \(originalWord)")

// Collect the words to be translated
for counter in 1...countOfExpectedWordsToTranslate {
    
    // Prompt for a word
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Add your logic here...
    // Determine if word is "American" and translate if necessary
    print(givenInput)
    
}

