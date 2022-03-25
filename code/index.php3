function fib($n)
{
  // edge cases:
  if ($n < 0) {
    throw new Exception('Index was negative. No such thing as a negative index in a series.');
  }
  
  if ($n === 0 || $n === 1) {
    return $n;
  }
  
  // we'll be building the fibonacci series from the bottom up
  // so we'll need to track the previous 2 numbers at each step
  // 0th fibonacci
  $prevPrev = 0;
  
  // 1st fibonacci
  $prev = 1;
  
  // Declare current
  $current = 0;
  
  for ($i = 1; $i < $n; $i++) {
    
    // Iteration 1: current = 2nd fibonacci
    // Iteration 2: current = 3rd fibonacci
    // Iteration 3: current = 4th fibonacci
    // To get nth fibonacci ... do n-1 iterations.
    $current = $prev + $prevPrev;
    $prevPrev = $prev;
    $prev = $current;
  }
  
  return $current;
}
