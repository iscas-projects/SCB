(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort var3604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3604-EMPTY_NAME String)
(declare-const var2593 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2593 null-String)))
(assert true)
(define-const var1017 Int (length/-134980193 var2593)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto r10 = null 
(assert (not (not (= var1017 0)))) ; Negate: Cond: i0 != 0  
(define-const var3415 String var3604-EMPTY_NAME) ; Statement: $r9 = <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME> 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2593=r0, var1866=null_type, var1017=i0, var3604=jdk.internal.dynalink.support.NameCodec, var3415=$r9}
; {r0=var2593, null_type=var1866, i0=var1017, jdk.internal.dynalink.support.NameCodec=var3604, $r9=var3415}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto r10 = null;	$r9 = <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME>;	return $r9
;block_num 2