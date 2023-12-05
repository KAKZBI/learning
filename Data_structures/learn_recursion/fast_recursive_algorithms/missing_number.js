function misssingNumber(array){
    if (array.length < 3) { return; }
    array.sort((a,b) => a < b ? -1 : 1);
    for(let i = 0; i < array.length; i++) {
        if(i != array[i]) {
        return i;
        }
    }        
}
console.log(misssingNumber([9, 3, 2, 5, 6, 7, 1, 0, 4]))