(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2625 0)
(declare-sort var3513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-648060691 (var2625) String)
(declare-const null-var2625 var2625)
(declare-const null-String String)
(declare-const var431 var2625) ; Statement: r0 := @this: jdk.nashorn.internal.parser.TokenType 
(assert (not (= var431 null-var2625)))
(define-const var3002 String (name/-648060691 var431)) ; Statement: $r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
 ; Statement: if $r1 != null goto $r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
(assert (not (= var3002 null-String))) ; Cond: $r1 != null 
(define-const var2132 String (name/-648060691 var431)) ; Statement: $r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name> 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-648060691=([jdk.nashorn.internal.parser.TokenType], java.lang.String)}
; {var2625=jdk.nashorn.internal.parser.TokenType, var431=r0, var3002=$r1, var3513=null_type, var2132=$r4}
; {jdk.nashorn.internal.parser.TokenType=var2625, r0=var431, $r1=var3002, null_type=var3513, $r4=var2132}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.parser.TokenType;	$r1 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	if $r1 != null goto $r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	$r4 = r0.<jdk.nashorn.internal.parser.TokenType: java.lang.String name>;	return $r4
;block_num 3