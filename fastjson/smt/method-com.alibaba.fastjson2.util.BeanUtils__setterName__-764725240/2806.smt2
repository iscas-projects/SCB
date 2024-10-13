(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1283 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1283 null-String)))
(declare-const var3770 String) ; Statement: r10 := @parameter1: java.lang.String 
(assert (not (= var3770 null-String)))
 ; Statement: if r10 != null goto $i13 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3770 null-String))) ; Cond: r10 != null 
(assert true)
(define-const var1064 Int (length/-134980193 var1283)) ; Statement: $i13 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i13 > 3 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
(assert (not (> var1064 3))) ; Negate: Cond: $i13 > 3  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1283=r0, var1277=null_type, var3770=r10, var1064=$i13}
; {r0=var1283, null_type=var1277, r10=var3770, $i13=var1064}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r10 := @parameter1: java.lang.String;	if r10 != null goto $i13 = virtualinvoke r0.<java.lang.String: int length()>();	$i13 = virtualinvoke r0.<java.lang.String: int length()>();	if $i13 > 3 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("set");	return r0
;block_num 3