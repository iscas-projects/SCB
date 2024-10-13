(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3847 0)
(declare-sort var2243 0)
(declare-sort var3641 0)
(declare-sort var2619 0)
(declare-sort var3506 0)
(declare-sort var476 0)
(declare-sort var2865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun token/-954945785 (var2243) Int)
(declare-fun cast-from-var3847-to-var2243 (var3847) var2243)
(declare-fun line/-954945785 (var2243) Int)
(declare-fun type/-954945785 (var2243) var3641)
(declare-fun propertyName/586517476 (var3847) var2619)
(declare-fun expect/-414920746 (var2243 var3641) void)
(declare-fun defaultNames/-839157179 (var3847) var3506)
(declare-fun var3506_push/-2122494828 (var3506 var476) void)
(declare-fun cast-from-var2619-to-var476 (var2619) var476)
(declare-fun var3506_pop/-801615857 (var3506) var476)
(declare-const null-var3847 var3847)
(declare-const var3641-IDENT var3641)
(declare-const var3641-COLON var3641)
(declare-const null-var2865 var2865)
(declare-const var104 var3847) ; Statement: r0 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var104 null-var3847)))
(define-const var3580 Int (token/-954945785 (cast-from-var3847-to-var2243 var104))) ; Statement: l0 = r0.<jdk.nashorn.internal.parser.Parser: long token> 
(define-const var3251 Int (line/-954945785 (cast-from-var3847-to-var2243 var104))) ; Statement: i1 = r0.<jdk.nashorn.internal.parser.Parser: int line> 
(define-const var1579 var3641 (type/-954945785 (cast-from-var3847-to-var2243 var104))) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type> 
(define-const var2737 var3641 var3641-IDENT) ; Statement: $r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT> 
 ; Statement: if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(assert (not (= var1579 var2737))) ; Cond: $r2 != $r1 
(assert true)
(define-const var2526 var2619 (propertyName/586517476 var104)) ; Statement: r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>() 
(assert true) ; Non Conditional
(define-const var1573 var3641 var3641-COLON) ; Statement: $r3 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON> 
(assert true)
;(assert (expect/-414920746 (cast-from-var3847-to-var2243 var104) var1573)) ; Statement: virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r3) 

(declare-const var104!1 var3847)
(declare-const var1573!1 var3641)
(define-const var1799 var3506 (defaultNames/-839157179 var104!1)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.Parser: java.util.Deque defaultNames> 
;(assert (var3506_push/-2122494828 var1799 (cast-from-var2619-to-var476 var2526))) ; Statement: interfaceinvoke $r4.<java.util.Deque: void push(java.lang.Object)>(r24) 

(declare-const var1799!1 var3506)
(declare-const var2526!1 var2619)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2592 var2865) ; Statement: $r21 := @caughtexception 
(assert (not (= var2592 null-var2865)))
(assert true) ; Non Conditional
(define-const var3352 var3506 (defaultNames/-839157179 var104!1)) ; Statement: $r22 = r0.<jdk.nashorn.internal.parser.Parser: java.util.Deque defaultNames> 
;(assert (var3506_pop/-801615857 var3352)) ; Statement: interfaceinvoke $r22.<java.util.Deque: java.lang.Object pop()>() 

(declare-const var3352!1 var3506)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {token/-954945785=([jdk.nashorn.internal.parser.AbstractParser], long), cast-from-var3847-to-var2243=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.parser.AbstractParser), line/-954945785=([jdk.nashorn.internal.parser.AbstractParser], int), type/-954945785=([jdk.nashorn.internal.parser.AbstractParser], jdk.nashorn.internal.parser.TokenType), propertyName/586517476=([jdk.nashorn.internal.parser.Parser], jdk.nashorn.internal.ir.PropertyKey), expect/-414920746=([jdk.nashorn.internal.parser.AbstractParser, jdk.nashorn.internal.parser.TokenType], void), defaultNames/-839157179=([jdk.nashorn.internal.parser.Parser], java.util.Deque), var3506_push/-2122494828=([java.util.Deque, java.lang.Object], void), cast-from-var2619-to-var476=([jdk.nashorn.internal.ir.PropertyKey], java.lang.Object), var3506_pop/-801615857=([java.util.Deque], java.lang.Object)}
; {var3847=jdk.nashorn.internal.parser.Parser, var104=r0, var2243=jdk.nashorn.internal.parser.AbstractParser, var3580=l0, var3251=i1, var3641=jdk.nashorn.internal.parser.TokenType, var1579=$r2, var2737=$r1, var2619=jdk.nashorn.internal.ir.PropertyKey, var2526=r24, var1573=$r3, var3506=java.util.Deque, var1799=$r4, var476=java.lang.Object, var2865=java.lang.Throwable, var2592=$r21, var3352=$r22}
; {jdk.nashorn.internal.parser.Parser=var3847, r0=var104, jdk.nashorn.internal.parser.AbstractParser=var2243, l0=var3580, i1=var3251, jdk.nashorn.internal.parser.TokenType=var3641, $r2=var1579, $r1=var2737, jdk.nashorn.internal.ir.PropertyKey=var2619, r24=var2526, $r3=var1573, java.util.Deque=var3506, $r4=var1799, java.lang.Object=var476, java.lang.Throwable=var2865, $r21=var2592, $r22=var3352}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.parser.Parser;	l0 = r0.<jdk.nashorn.internal.parser.Parser: long token>;	i1 = r0.<jdk.nashorn.internal.parser.Parser: int line>;	$r2 = r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.parser.TokenType type>;	$r1 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType IDENT>;	if $r2 != $r1 goto r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	r24 = specialinvoke r0.<jdk.nashorn.internal.parser.Parser: jdk.nashorn.internal.ir.PropertyKey propertyName()>();	$r3 = <jdk.nashorn.internal.parser.TokenType: jdk.nashorn.internal.parser.TokenType COLON>;	virtualinvoke r0.<jdk.nashorn.internal.parser.Parser: void expect(jdk.nashorn.internal.parser.TokenType)>($r3);	$r4 = r0.<jdk.nashorn.internal.parser.Parser: java.util.Deque defaultNames>;	interfaceinvoke $r4.<java.util.Deque: void push(java.lang.Object)>(r24);	$r21 := @caughtexception;	$r22 = r0.<jdk.nashorn.internal.parser.Parser: java.util.Deque defaultNames>;	interfaceinvoke $r22.<java.util.Deque: java.lang.Object pop()>();	throw $r21
;block_num 5