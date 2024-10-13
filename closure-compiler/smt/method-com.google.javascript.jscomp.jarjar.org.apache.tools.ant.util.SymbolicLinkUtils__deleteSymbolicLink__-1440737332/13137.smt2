(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1608 0)
(declare-sort var3773 0)
(declare-sort var3833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDanglingSymbolicLink/-1038589607 (var1608 var3773) Bool)
(declare-fun delete/2092983584 (var3773) Bool)
(declare-const null-var1608 var1608)
(declare-const null-var3773 var3773)
(declare-const null-var3833 var3833)
(declare-const var477 var1608) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var477 null-var1608)))
(declare-const var2470 var3773) ; Statement: r70 := @parameter0: java.io.File 
(assert (not (= var2470 null-var3773)))
(declare-const var3431 var3833) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var3431 null-var3833)))
(assert true)
(define-const var475 Bool (isDanglingSymbolicLink/-1038589607 var477 var2470)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70) 
(assert (not (= (ite var475 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2369 Bool (delete/2092983584 var2470)) ; Statement: $z6 = virtualinvoke r70.<java.io.File: boolean delete()>() 
 ; Statement: if $z6 != 0 goto return 
(assert (not (= (ite var2369 1 0) 0))) ; Cond: $z6 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isDanglingSymbolicLink/-1038589607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, java.io.File], boolean), delete/2092983584=([java.io.File], boolean)}
; {var1608=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var477=r0, var3773=java.io.File, var2470=r70, var3833=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3431=r2, var475=$z0, var2369=$z6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var1608, r0=var477, java.io.File=var3773, r70=var2470, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3833, r2=var3431, $z0=var475, $z6=var2369}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r70 := @parameter0: java.io.File;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70);	$z6 = virtualinvoke r70.<java.io.File: boolean delete()>();	if $z6 != 0 goto return;	return
;block_num 3