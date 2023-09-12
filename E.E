 println("Hello, world!")

  def factorial(n :int) :int {
   if (n == 1) {
     return 1
   } else if (n > 0) {
     return n * factorial(n-1)
   } else {
     throw("invalid argument to factorial: "+n)
   }
 }

  def makeMint(name) :any {
   def [sealer, unsealer] := makeBrandPair(name)
   def mint {
     to makePurse(var balance :(int >= 0)) :any {
       def decr(amount :(0..balance)) :void {
         balance -= amount
       }
       def purse {
         to getBalance() :int { return balance }
         to sprout() :any { return mint.makePurse(0) }
         to getDecr() :any { return sealer.seal(decr) }
         to deposit(amount :int, src) :void {
           unsealer.unseal(src.getDecr())(amount)
           balance += amount
         }
       }
       return purse
     }
   }
   return mint
 }

 
