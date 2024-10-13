(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var852 0)
(declare-sort var1724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var852 var852)
(declare-const null-String String)
(declare-const var396 var852) ; Statement: r1 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var396 null-var852)))
(declare-const var2464 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2464 null-String)))
(assert true)
(define-const var1151 Int (length/-134980193 var2464)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 2 goto $z0 = 0 
(assert (<= var1151 2)) ; Cond: $i0 <= 2 
(define-const var3379 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var852=freemarker.core.FMParserTokenManager, var396=r1, var2464=r0, var1724=null_type, var1151=$i0, var3379=$z0}
; {freemarker.core.FMParserTokenManager=var852, r1=var396, r0=var2464, null_type=var1724, $i0=var1151, $z0=var3379}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.FMParserTokenManager;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 2 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3