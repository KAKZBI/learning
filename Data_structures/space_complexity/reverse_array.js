function reverse_array(array) {
    for(let i=0; i<array.length/2; i++) {
        let temp = array[i];
        array[i] = array[array.length-1-i];
        array[array.length-1-i] = temp;
    }
    return array;
}
console.log(reverse_array([1,2,3,4,5]))