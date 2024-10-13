(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3240 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3240 var3240)
(declare-const null-String String)
(declare-const var1875 var3240) ; Statement: r1 := @this: com.google.javascript.jscomp.DefaultNameGenerator 
(assert (not (= var1875 null-var3240)))
(declare-const var1107 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1107 null-String)))
(assert true)
(define-const var3165 Int (length/-134980193 var1107)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var3165 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3240=com.google.javascript.jscomp.DefaultNameGenerator, var1875=r1, var1107=r0, var537=null_type, var3165=$i0}
; {com.google.javascript.jscomp.DefaultNameGenerator=var3240, r1=var1875, r0=var1107, null_type=var537, $i0=var3165}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.DefaultNameGenerator;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 2