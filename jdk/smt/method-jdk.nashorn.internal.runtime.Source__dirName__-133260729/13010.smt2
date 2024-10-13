(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2048 0)
(declare-sort var2719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getParent/-1549881890 (var2048) String)
(declare-const null-var2048 var2048)
(declare-const null-String String)
(declare-const var3299 var2048) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3299 null-var2048)))
(declare-const var836 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var836 null-String)))
(assert true)
(define-const var1532 String (getParent/-1549881890 var3299)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.lang.String getParent()>() 
 ; Statement: if r1 == null goto $r7 = r2 
(assert (= var1532 null-String)) ; Cond: r1 == null 
(define-const var2726 String var836) ; Statement: $r7 = r2 
(assert true) ; Non Conditional
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getParent/-1549881890=([java.io.File], java.lang.String)}
; {var2048=java.io.File, var3299=r0, var836=r2, var2719=null_type, var1532=r1, var2726=$r7}
; {java.io.File=var2048, r0=var3299, r2=var836, null_type=var2719, r1=var1532, $r7=var2726}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	r2 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.io.File: java.lang.String getParent()>();	if r1 == null goto $r7 = r2;	$r7 = r2;	return $r7
;block_num 3