function duplicate_char(array) {
    let hashTable = {};

    for(const value of array) {
        if(hashTable[value]){
            return value;
        }else
    hashTable[value] = true;
    }
}

console.log(duplicate_char( ["a", "b", "c", "d", "c", "e",
"f"]))