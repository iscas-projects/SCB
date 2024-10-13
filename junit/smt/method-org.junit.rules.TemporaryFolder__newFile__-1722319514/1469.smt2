(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3302 0)
(declare-sort var2974 0)
(declare-sort var2786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2786-init () var2786)
(declare-fun getRoot/1879586981 (var3302) var2786)
(declare-fun <init>/-1833447926 (var2786 var2786 String) void)
(declare-fun createNewFile/-1713059409 (var2786) Bool)
(declare-const null-var3302 var3302)
(declare-const null-String String)
(declare-const var1253 var3302) ; Statement: r1 := @this: org.junit.rules.TemporaryFolder 
(assert (not (= var1253 null-var3302)))
(declare-const var1390 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1390 null-String)))
(define-const var3460 var2786 var2786-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var996 var2786 (getRoot/1879586981 var1253)) ; Statement: $r3 = virtualinvoke r1.<org.junit.rules.TemporaryFolder: java.io.File getRoot()>() 
(assert true)
;(assert (<init>/-1833447926 var3460 var996 var1390)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, r2) 

(declare-const var3460!1 var2786)
(declare-const var996!1 var2786)
(declare-const var1390!1 String)
(assert true)
(define-const var3665 Bool (createNewFile/-1713059409 var3460!1)) ; Statement: $z0 = virtualinvoke $r0.<java.io.File: boolean createNewFile()>() 
 ; Statement: if $z0 != 0 goto return $r0 
(assert (not (= (ite var3665 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2786-init=([], java.io.File), getRoot/1879586981=([org.junit.rules.TemporaryFolder], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), createNewFile/-1713059409=([java.io.File], boolean)}
; {var3302=org.junit.rules.TemporaryFolder, var1253=r1, var1390=r2, var2974=null_type, var2786=java.io.File, var3460=$r0, var996=$r3, var3665=$z0}
; {org.junit.rules.TemporaryFolder=var3302, r1=var1253, r2=var1390, null_type=var2974, java.io.File=var2786, $r0=var3460, $r3=var996, $z0=var3665}
;seq 
;cnt {}
;stmts r1 := @this: org.junit.rules.TemporaryFolder;	r2 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r3 = virtualinvoke r1.<org.junit.rules.TemporaryFolder: java.io.File getRoot()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r3, r2);	$z0 = virtualinvoke $r0.<java.io.File: boolean createNewFile()>();	if $z0 != 0 goto return $r0;	return $r0
;block_num 2