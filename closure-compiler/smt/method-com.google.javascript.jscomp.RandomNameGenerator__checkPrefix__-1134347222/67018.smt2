(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1709 0)
(declare-sort var1615 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1709 var1709)
(declare-const null-String String)
(declare-const var1676 var1709) ; Statement: r1 := @this: com.google.javascript.jscomp.RandomNameGenerator 
(assert (not (= var1676 null-var1709)))
(declare-const var2517 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2517 null-String)))
(assert true)
(define-const var3002 Int (length/-134980193 var2517)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var3002 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1709=com.google.javascript.jscomp.RandomNameGenerator, var1676=r1, var2517=r0, var1615=null_type, var3002=$i0}
; {com.google.javascript.jscomp.RandomNameGenerator=var1709, r1=var1676, r0=var2517, null_type=var1615, $i0=var3002}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.RandomNameGenerator;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto return;	return
;block_num 2