function greatest(array){
    let greatest = array[0];
    for(let i = 1; i < array.length; i++){
        if (array[i] > greatest){
            greatest = array[i];
        }
    }
    return greatest;
}

function greatest2(array){
    array.sort((a,b) => a < b ? -1 : 1);
    return array[array.length - 1];
}
