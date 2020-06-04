import cpp


from MacroInvocation m
where m.getMacro().getName() = "ntohs"
    or m.getMacro().getName() = "ntohl"
    or m.getMacro().getName() = "ntohll"
select m.getExpr(), "macro expr"