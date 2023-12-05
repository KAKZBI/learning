function intersection_array(array1, array2) {
    let largerArray;
    let smallerArray;
    let hashTable = {};
    let intersection_array = [];
    // Determine which array is smaller:
    if(array1.length > array2.length) {
    largerArray = array1;
    smallerArray = array2;
    } else {
    largerArray = array2;
    smallerArray = array1;
    }
    // Store all items from largerArray inside hashTable:
    for(const value of largerArray) {
    hashTable[value] = true;
    }
    // Iterate through each item in smallerArray add it to the intersection
    // array if it 
    // if we encounter an item not inside hashTable:
    for(const value of smallerArray) {
    if(hashTable[value]) { intersection_array.push(value) }
    }

return intersection_array;
}

console.log(intersection_array([1, 2, 3, 4, 5], [0, 2, 4, 6, 8]))