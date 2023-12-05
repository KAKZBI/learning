// The task is to write
// a function that accepts an array of numbers and return true or false depending
// on whether there are any two numbers in the array that add up to 10 (or
// another given number).For simplicity, let’s assume there will never be
// duplicate numbers in the array.

function twoSum(array) {
    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++) {
            if(i !== j && array[i] + array[j] === 10) {
                return true;
            }
        }
    }
    return false;
}

function twoSum_optimized(array) {
    let hashTable = {};
    for(let i = 0; i < array.length; i++) {
        // Check if the hash table contains a key which, when added
        // to the current number, would add up to 10:
        if(hashTable[10 - array[i]]) {
            return true;
        }
        // Store each number as a key in the hash table:
        hashTable[array[i]] = true;
    }
    // Return false if we get to the end of the array without
    // finding any number's counterpart:
    return false;
}