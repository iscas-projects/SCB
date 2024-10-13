(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1154 0)
(declare-sort var2779 0)
(declare-sort var3122 0)
(declare-sort var1433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isFile/1016913701 (var1154) Bool)
(declare-fun toPath/-1698179320 (var1154) var2779)
(declare-fun var3122_readAllBytes/955470509 (var2779) (Array Int Int))
(declare-fun var1433_byteToCharArray/1200509419 ((Array Int Int)) (Array Int Int))
(declare-const null-var1154 var1154)
(declare-const var1386 var1154) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var1386 null-var1154)))
(assert true)
(define-const var2218 Bool (isFile/1016913701 var1386)) ; Statement: $z0 = virtualinvoke r0.<java.io.File: boolean isFile()>() 
 ; Statement: if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(assert (not (= (ite var2218 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3879 var2779 (toPath/-1698179320 var1386)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>() 
(define-const var1416 (Array Int Int) (var3122_readAllBytes/955470509 var3879)) ; Statement: $r2 = staticinvoke <java.nio.file.Files: byte[] readAllBytes(java.nio.file.Path)>($r1) 
(define-const var2998 (Array Int Int) (var1433_byteToCharArray/1200509419 var1416)) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] byteToCharArray(byte[])>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isFile/1016913701=([java.io.File], boolean), toPath/-1698179320=([java.io.File], java.nio.file.Path), var3122_readAllBytes/955470509=([java.nio.file.Path], byte[]), var1433_byteToCharArray/1200509419=([byte[]], char[])}
; {var1154=java.io.File, var1386=r0, var2218=$z0, var2779=java.nio.file.Path, var3879=$r1, var3122=java.nio.file.Files, var1416=$r2, var1433=jdk.nashorn.internal.runtime.Source, var2998=$r3}
; {java.io.File=var1154, r0=var1386, $z0=var2218, java.nio.file.Path=var2779, $r1=var3879, java.nio.file.Files=var3122, $r2=var1416, jdk.nashorn.internal.runtime.Source=var1433, $r3=var2998}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.io.File;	$z0 = virtualinvoke r0.<java.io.File: boolean isFile()>();	if $z0 != 0 goto $r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r1 = virtualinvoke r0.<java.io.File: java.nio.file.Path toPath()>();	$r2 = staticinvoke <java.nio.file.Files: byte[] readAllBytes(java.nio.file.Path)>($r1);	$r3 = staticinvoke <jdk.nashorn.internal.runtime.Source: char[] byteToCharArray(byte[])>($r2);	return $r3
;block_num 2