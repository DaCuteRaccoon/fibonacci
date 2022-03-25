func fib(_ n: UInt) -> UInt {
  
  // edge cases:
  guard n != 0 && n != 1 else {
    return n
  }
  
  // we'll be building the fibonacci series from the bottom up
  // so we'll need to track the previous 2 numbers at each step
  var prevPrev: UInt = 0  // 0th fibonacci
  var prev: UInt = 1      // 1st fibonacci
  var current: UInt = 0   // Declare and initialize current
  
  for _ in 1..<n {
    
    // Iteration 1: current = 2nd fibonacci
    // Iteration 2: current = 3rd fibonacci
    // Iteration 3: current = 4th fibonacci
    // To get nth fibonacci ... do n-1 iterations.
    current = prev + prevPrev
    prevPrev = prev
    prev = current
  }
  
  return current
}
