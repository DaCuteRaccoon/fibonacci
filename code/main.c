int fib(int n)
{
  int i, prevPrev, prev, current;
  
  // edge cases:
  assert(n >= 0);  // index must not be negative
  if (n == 0 || n == 1) {
    return n;
  }
  
  // we'll be building the fibonacci series from the bottom up
  // so we'll need to track the previous 2 numbers at each step
  prevPrev = 0;  // 0th fibonacci
  prev = 1;      // 1st fibonacci
  current = 0;   // Declare and initialize current
  
  for (i = 1; i < n; i++) {
    
    // Iteration 1: current = 2nd fibonacci
    // Iteration 2: current = 3rd fibonacci
    // Iteration 3: current = 4th fibonacci
    // To get nth fibonacci ... do n-1 iterations.
    current = prev + prevPrev;
    prevPrev = prev;
    prev = current;
  }
  
  return current;
}
