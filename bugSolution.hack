function foo(x: int): int {
  if (x < 0) {
    return -1; // Handle negative input
  } else if (x == 0) {
    return 1;
  } else if (x > 20) { //Add input limit to prevent stack overflow for extremely large inputs
    return -1; //Or throw an exception
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(21);
  echo foo(-1);
}
