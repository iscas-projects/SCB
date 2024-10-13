(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var331 0)
(declare-sort var583 0)
(declare-sort var2859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isDanglingSymbolicLink/-1038589607 (var331 var583) Bool)
(declare-fun isSymbolicLink/-407782171 (var331 var583) Bool)
(declare-const null-var331 var331)
(declare-const null-var583 var583)
(declare-const null-var2859 var2859)
(declare-const var2438 var331) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils 
(assert (not (= var2438 null-var331)))
(declare-const var252 var583) ; Statement: r70 := @parameter0: java.io.File 
(assert (not (= var252 null-var583)))
(declare-const var1053 var2859) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var1053 null-var2859)))
(assert true)
(define-const var2117 Bool (isDanglingSymbolicLink/-1038589607 var2438 var252)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70) 
(assert (= (ite var2117 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1124 Bool (isSymbolicLink/-407782171 var2438 var252)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70) 
 ; Statement: if $z1 != 0 goto $z2 = virtualinvoke r70.<java.io.File: boolean exists()>() 
(assert (not (not (= (ite var1124 1 0) 0)))) ; Negate: Cond: $z1 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isDanglingSymbolicLink/-1038589607=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, java.io.File], boolean), isSymbolicLink/-407782171=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, java.io.File], boolean)}
; {var331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils, var2438=r0, var583=java.io.File, var252=r70, var2859=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1053=r2, var2117=$z0, var1124=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils=var331, r0=var2438, java.io.File=var583, r70=var252, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2859, r2=var1053, $z0=var2117, $z1=var1124}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils;	r70 := @parameter0: java.io.File;	r2 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isDanglingSymbolicLink(java.io.File)>(r70);	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70);	$z1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.SymbolicLinkUtils: boolean isSymbolicLink(java.io.File)>(r70);	if $z1 != 0 goto $z2 = virtualinvoke r70.<java.io.File: boolean exists()>();	return
;block_num 3