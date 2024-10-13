(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var247 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var247 var247)
(declare-const null-String String)
(declare-const var164 var247) ; Statement: r1 := @this: jdk.jfr.internal.tool.JSONWriter 
(assert (not (= var164 null-var247)))
(declare-const var1055 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1055 null-String)))
(define-const var3611 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3538 Int (length/-134980193 var1055)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto return 
(assert (>= var3611 var3538)) ; Cond: i2 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var247=jdk.jfr.internal.tool.JSONWriter, var164=r1, var1055=r0, var3285=null_type, var3611=i2, var3538=$i0}
; {jdk.jfr.internal.tool.JSONWriter=var247, r1=var164, r0=var1055, null_type=var3285, i2=var3611, $i0=var3538}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: jdk.jfr.internal.tool.JSONWriter;	r0 := @parameter0: java.lang.String;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto return;	return
;block_num 3