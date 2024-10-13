(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/-1112840705 (String) Int)
(declare-const null-String String)
(declare-const var38 String) ; Statement: r1 := @parameter0: java.lang.StringBuffer 
(assert (not (= var38 null-String)))
(declare-const var924 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var924 null-String)))
(assert true)
(define-const var1212 Int (length/-134980193 var924)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3963 Int (length/-1112840705 var38)) ; Statement: $i0 = virtualinvoke r1.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i1 <= $i0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (<= var1212 var3963))) ; Negate: Cond: $i1 <= $i0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), length/-1112840705=([java.lang.StringBuffer], int)}
; {var38=r1, var924=r0, var2076=null_type, var1212=$i1, var3963=$i0}
; {r1=var38, r0=var924, null_type=var2076, $i1=var1212, $i0=var3963}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: int length()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.StringBuffer: int length()>();	if $i1 <= $i0 goto $i2 = virtualinvoke r0.<java.lang.String: int length()>();	return 0
;block_num 2