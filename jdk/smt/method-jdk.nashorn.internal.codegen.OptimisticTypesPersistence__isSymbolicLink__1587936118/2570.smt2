(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1251 0)
(declare-sort var1674 0)
(declare-sort var3616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toPath/-1698179320 (var1251) var1674)
(declare-fun var3616_isSymbolicLink/-1512531317 (var1674) Bool)
(declare-const null-var1251 var1251)
(declare-const var573 var1251) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var573 null-var1251)))
(assert true)
(define-const var2223 var1674 (toPath/-1698179320 var573)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(define-const var1020 Bool (var3616_isSymbolicLink/-1512531317 var2223)) ; Statement: $z0 = staticinvoke <java.nio.file.Files: boolean isSymbolicLink(java.nio.file.Path)>($r1) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var1020 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toPath/-1698179320=([java.io.File], java.nio.file.Path), var3616_isSymbolicLink/-1512531317=([java.nio.file.Path], boolean)}
; {var1251=java.io.File, var573=r0, var1674=java.nio.file.Path, var2223=$r1, var3616=java.nio.file.Files, var1020=$z0}
; {java.io.File=var1251, r0=var573, java.nio.file.Path=var1674, $r1=var2223, java.nio.file.Files=var3616, $z0=var1020}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	$r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$z0 = staticinvoke <java.nio.file.Files: boolean isSymbolicLink(java.nio.file.Path)>($r1);	if $z0 == 0 goto return 0;	return 0
;block_num 2