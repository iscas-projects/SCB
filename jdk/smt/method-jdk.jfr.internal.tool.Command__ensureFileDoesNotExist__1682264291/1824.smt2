(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1534 0)
(declare-sort var3991 0)
(declare-sort var774 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var774-init () (Array Int var774))
(declare-fun var1761_exists/964052014 (var3991 (Array Int var774)) Bool)
(declare-const null-var1534 var1534)
(declare-const null-var3991 var3991)
(declare-const var2567 var1534) ; Statement: r8 := @this: jdk.jfr.internal.tool.Command 
(assert (not (= var2567 null-var1534)))
(declare-const var1226 var3991) ; Statement: r0 := @parameter0: java.nio.file.Path 
(assert (not (= var1226 null-var3991)))
(define-const var2911 (Array Int var774) arr-var774-init) ; Statement: $r1 = newarray (java.nio.file.LinkOption)[0] 
(define-const var1779 Bool (var1761_exists/964052014 var1226 var2911)) ; Statement: $z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, $r1) 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var1779 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var774-init=([], java.nio.file.LinkOption[]), var1761_exists/964052014=([java.nio.file.Path, java.nio.file.LinkOption[]], boolean)}
; {var1534=jdk.jfr.internal.tool.Command, var2567=r8, var3991=java.nio.file.Path, var1226=r0, var774=java.nio.file.LinkOption, var2911=$r1, var1761=java.nio.file.Files, var1779=$z0}
; {jdk.jfr.internal.tool.Command=var1534, r8=var2567, java.nio.file.Path=var3991, r0=var1226, java.nio.file.LinkOption=var774, $r1=var2911, java.nio.file.Files=var1761, $z0=var1779}
;seq 
;cnt {}
;stmts r8 := @this: jdk.jfr.internal.tool.Command;	r0 := @parameter0: java.nio.file.Path;	$r1 = newarray (java.nio.file.LinkOption)[0];	$z0 = staticinvoke <java.nio.file.Files: boolean exists(java.nio.file.Path,java.nio.file.LinkOption[])>(r0, $r1);	if $z0 == 0 goto return r0;	return r0
;block_num 2