(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const var2693 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2693 null-String)))
(define-const var3705 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var737 Int (length/-171891354 var2693)) ; Statement: $i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i3 >= $i0 goto return 
(assert (>= var3705 var737)) ; Cond: i3 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int)}
; {var2693=r0, var3705=i3, var737=$i0}
; {r0=var2693, i3=var3705, $i0=var737}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if i3 >= $i0 goto return;	return
;block_num 3