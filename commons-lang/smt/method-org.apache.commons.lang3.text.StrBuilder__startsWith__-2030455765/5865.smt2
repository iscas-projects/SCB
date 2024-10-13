(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var557 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var557 var557)
(declare-const null-String String)
(declare-const var2806 var557) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2806 null-var557)))
(declare-const var3273 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3273 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3273 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var436 Int (length/-134980193 var3273)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (not (= var436 0)))) ; Negate: Cond: i0 != 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var557=org.apache.commons.lang3.text.StrBuilder, var2806=r1, var3273=r0, var1375=null_type, var436=i0}
; {org.apache.commons.lang3.text.StrBuilder=var557, r1=var2806, r0=var3273, null_type=var1375, i0=var436}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	return 1
;block_num 3