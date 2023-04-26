function stock_picker(list){
    let low_index = 0;
    let high_index = 0;
    let profit = 0;
    for(let i = 0; i<list.length;i++){
      for(let j = i+1; j<list.length;j++){
        if((list[i]-list[j])<profit){
          profit = list[i]-list[j];
          low_index = i;
          high_index = j;
        }
      }
    }
    let good = [low_index, high_index]
    return good
  }
  console.log(stock_picker([17,3,6,9,15,8,6,1,10]))