function greatestProductOf3(array){
    if (array.length < 3) { return; }
    array.sort((a,b) => a < b ? -1 : 1);
    let length = array.length;
    return array[length - 1]*array[length-2]*array[length-3];
}
console.log(greatestProductOf3([1, 2, 3, 8, 4, 12, 10, 4]))