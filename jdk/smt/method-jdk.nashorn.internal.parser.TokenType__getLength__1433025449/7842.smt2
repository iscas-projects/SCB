(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-648060691 (var3344) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3344 var3344)
(declare-const var3344-$assertionsDisabled Bool)
(declare-const var1341 var3344) ; Statement: r0 := @this: jdk.nashorn.internal.parser.TokenType 
(assert (not (= var1341 null-var3344)))
(define-const var2684 Bool var3344-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.parser.TokenType: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
(assert (not (= (ite var2684 1 0) 0))) ; Cond: $z0 != 0 
(define-const var349 String (name/-648060691 var1341)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
(assert true)
(define-const var3501 Int (length/-134980193 var349)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-648060691=([jdk.nashorn.internal.parser.TokenType], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3344=jdk.nashorn.internal.parser.TokenType, var1341=r0, var2684=$z0, var349=$r1, var3501=$i0}
; {jdk.nashorn.internal.parser.TokenType=var3344, r0=var1341, $z0=var2684, $r1=var349, $i0=var3501}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.TokenType;	$z0 = <jdk.nashorn.internal.parser.TokenType: boolean $assertionsDisabled>;	if $z0 != 0 goto $r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	$r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	return $i0
;block_num 2