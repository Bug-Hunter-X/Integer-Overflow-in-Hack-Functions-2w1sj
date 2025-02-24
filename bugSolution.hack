```hack
function foo(x: int): int {
  if (x >= 2147483647) { //Check for potential overflow 
    return 2147483647;  //Handle overflow by returning the max int
  }
  return x + 1;
}

function bar(x: int): int {
  if (x >= 1073741823) { //Check for potential overflow
    return 2147483647; //Handle overflow by returning the max int
  }
  return foo(x) * 2;
}

function main(): void {
  var x = 10;
  var y = bar(x);
  echo y; // Outputs 22 as expected
}
```