(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1987 0)
(declare-sort var2779 0)
(declare-sort var2604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getValue/-1445752687 (var2604) String)
(declare-fun cast-from-var2779-to-var2604 (var2779) var2604)
(declare-fun targetOS/-1795126542 (var1987) String)
(declare-fun targetWindows/-1795126542 (var1987) Bool)
(declare-const null-var1987 var1987)
(declare-const null-var2779 var2779)
(declare-const var2045 var1987) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert 
(assert (not (= var2045 null-var1987)))
(declare-const var3170 var2779) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs 
(assert (not (= var3170 null-var2779)))
(assert true)
(define-const var2071 String (getValue/-1445752687 (cast-from-var2779-to-var2604 var3170))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs: java.lang.String getValue()>() 
(declare-const var2045!1 var1987)
(assert (not (= var2045!1 null-var1987)))
(assert (= (targetOS/-1795126542 var2045!1) var2071)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: java.lang.String targetOS> = $r2 
(define-const var3422 String "unix") ; Statement: $r4 = "unix" 
(define-const var74 String (targetOS/-1795126542 var2045!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: java.lang.String targetOS> 
(assert true)
(define-const var3716 Bool (= var3422 var74)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3716 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2546 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(declare-const var2045!2 var1987)
(assert (not (= var2045!2 null-var1987)))
(assert (= (targetWindows/-1795126542 var2045!2) var2546)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: boolean targetWindows> = $z2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2779-to-var2604=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), targetOS/-1795126542=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert], java.lang.String), targetWindows/-1795126542=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert], boolean)}
; {var1987=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert, var2045=r0, var2779=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs, var3170=r1, var2604=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var2071=$r2, var3422=$r4, var74=$r3, var3716=$z0, var2546=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert=var1987, r0=var2045, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs=var2779, r1=var3170, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2604, $r2=var2071, $r4=var3422, $r3=var74, $z0=var3716, $z2=var2546}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert$TargetOs: java.lang.String getValue()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: java.lang.String targetOS> = $r2;	$r4 = "unix";	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: java.lang.String targetOS>;	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.PathConvert: boolean targetWindows> = $z2;	return
;block_num 3