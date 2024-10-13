(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3416 0)
(declare-sort var899 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3416 var3416)
(declare-const null-String String)
(declare-const var2606 var3416) ; Statement: r2 := @this: com.google.javascript.jscomp.PolymerBehaviorExtractor 
(assert (not (= var2606 null-var3416)))
(declare-const var683 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var683 null-String)))
(assert true)
(define-const var1944 Int (length/-134980193 var683)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto return null 
(assert (< var1944 0)) ; Cond: i2 < 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3416=com.google.javascript.jscomp.PolymerBehaviorExtractor, var2606=r2, var683=r0, var899=null_type, var1944=i2}
; {com.google.javascript.jscomp.PolymerBehaviorExtractor=var3416, r2=var2606, r0=var683, null_type=var899, i2=var1944}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.PolymerBehaviorExtractor;	r0 := @parameter0: java.lang.String;	i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 < 0 goto return null;	return null
;block_num 3