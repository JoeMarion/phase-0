function sum(numbers) {
  var answer = 0;
  for (var i = 0; i < numbers.length; i++) {
     answer += numbers[i];
  }
  return answer
}

function mean(numbers) {
  return sum(numbers) / numbers.length;
}


function median(numbers) {
  var sortedNum = numbers.sort(function(a,b){return a - b});
  var half = (Math.floor(sortedNum.length / 2.0));
  if (sortedNum.length % 2 === 0) {
    return (sortedNum[half] + sortedNum[half - 1]) / 2;
  } else {
    return sortedNum[half];
  }
}




var ranArray = [10, 11, 12, 13, 14]

console.log(median(ranArray))