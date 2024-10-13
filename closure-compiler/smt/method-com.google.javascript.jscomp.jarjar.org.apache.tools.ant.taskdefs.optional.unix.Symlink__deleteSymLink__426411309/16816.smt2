(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var1006 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2305_toFile/125407505 (var2305) var1006)
(declare-fun delete/2092983584 (var1006) Bool)
(declare-const null-var2305 var2305)
(declare-const var1793 var2305) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var1793 null-var2305)))
(define-const var962 var1006 (var2305_toFile/125407505 var1793)) ; Statement: $r1 = interfaceinvoke r0.<java.nio.file.Path: java.io.File toFile()>() 
(assert true)
(define-const var2640 Bool (delete/2092983584 var962)) ; Statement: z0 = virtualinvoke $r1.<java.io.File: boolean delete()>() 
 ; Statement: if z0 != 0 goto return 
(assert (not (= (ite var2640 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2305_toFile/125407505=([java.nio.file.Path], java.io.File), delete/2092983584=([java.io.File], boolean)}
; {var2305=java.nio.file.Path, var1793=r0, var1006=java.io.File, var962=$r1, var2640=z0}
; {java.nio.file.Path=var2305, r0=var1793, java.io.File=var1006, $r1=var962, z0=var2640}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.nio.file.Path;	$r1 = interfaceinvoke r0.<java.nio.file.Path: java.io.File toFile()>();	z0 = virtualinvoke $r1.<java.io.File: boolean delete()>();	if z0 != 0 goto return;	return
;block_num 2