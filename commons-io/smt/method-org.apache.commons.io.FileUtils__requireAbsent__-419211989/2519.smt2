(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3022 0)
(declare-sort var1016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exists/1072868559 (var3022) Bool)
(declare-const null-var3022 var3022)
(declare-const null-String String)
(declare-const var3656 var3022) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var3656 null-var3022)))
(declare-const var3212 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3212 null-String)))
(assert true)
(define-const var280 Bool (exists/1072868559 var3656)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var280 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exists/1072868559=([java.io.File], boolean)}
; {var3022=java.io.File, var3656=r0, var3212=r3, var1016=null_type, var280=$z0}
; {java.io.File=var3022, r0=var3656, r3=var3212, null_type=var1016, $z0=var280}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	r3 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.io.File: boolean exists()>();	if $z0 == 0 goto return;	return
;block_num 2