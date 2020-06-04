import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation m |
        m.getMacro().getName() = "ntohs"
        or m.getMacro().getName() = "ntohl"
        or m.getMacro().getName() = "ntohll"
    and this = m.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
