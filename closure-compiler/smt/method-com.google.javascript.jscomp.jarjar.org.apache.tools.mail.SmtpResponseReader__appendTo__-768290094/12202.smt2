(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3222 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3222 null-String)))
(declare-const var1454 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1454 null-String)))
(assert true)
(define-const var1059 Int (length/-134980193 var1454)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 4 goto return 
(assert (<= var1059 4)) ; Cond: $i0 <= 4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3222=r1, var1454=r0, var3197=null_type, var1059=$i0}
; {r1=var3222, r0=var1454, null_type=var3197, $i0=var1059}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 4 goto return;	return
;block_num 2