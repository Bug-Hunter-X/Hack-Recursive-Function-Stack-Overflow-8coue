function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if the input is too large because the function is recursively calling itself without a base case.  The base case x == 0 correctly handles the termination condition for the recursion. However, extremely large inputs will exceed the program's call stack depth limit. 