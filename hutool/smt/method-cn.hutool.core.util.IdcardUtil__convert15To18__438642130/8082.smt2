(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var384 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var384 null-String)))
(assert true)
(define-const var1711 Int (length/-134980193 var384)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 15 goto $r1 = <cn.hutool.core.lang.PatternPool: java.util.regex.Pattern NUMBERS> 
(assert (not (= var1711 15))) ; Negate: Cond: $i0 == 15  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var384=r0, var1966=null_type, var1711=$i0}
; {r0=var384, null_type=var1966, $i0=var1711}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 15 goto $r1 = <cn.hutool.core.lang.PatternPool: java.util.regex.Pattern NUMBERS>;	return null
;block_num 2