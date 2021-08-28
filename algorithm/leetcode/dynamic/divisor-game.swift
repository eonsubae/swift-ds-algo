/*
  Alice and Bob take turns playing a game, with Alice starting first.

  Initially, there is a number n on the chalkboard. 
  On each player's turn, that player makes a move consisting of:

  Choosing any x with 0 < x < n and n % x == 0.
  Replacing the number n on the chalkboard with n - x.
  Also, if a player cannot make a move, they lose the game.
  
  Return true if and only if Alice wins the game, assuming both players play optimally.
*/

/*
  Example 1:
  Input: n = 2
  Output: true
  Explanation: Alice chooses 1, and Bob has no more moves.
  
  Example 2:
  Input: n = 3
  Output: false
  Explanation: Alice chooses 1, Bob chooses 1, and Alice has no more moves.
   
  Constraints:
  1 <= n <= 1000
*/

func divisorGame(_ n: Int) -> Bool {
    /*
      Lets say n = 4
      The question says Alice starts the game first 
      Alice picks number 1 (4%1) == 0 AmountLeft : 3
      Bob picks number 1 (3%1) == 0   AmountLeft : 2
      Alice picks number 1 (2%1) == 0 AmountLeft : 1
      Since we have to pick the number in the range of 0<x<N; we cannot pick any number. 
      Bob looses, Alice wins
        
      For n = 3
      Alice picks number 1 (3%1) == 0 AmountLeft : 2
      Bob picks number 1 (2%1) == 0   AmountLeft : 1
      Since we have to pick the number in the range of 0<x<N; Alice cannot pick any number. 
      Alice looses.
        
      Hence the deduction, Alice wins when the number is even, Alice looses when number is odd
    */
    return n % 2 == 0
}

print(divisorGame(2)) // true
print(divisorGame(3)) // false
