(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1573 0)
(declare-sort var3249 0)
(declare-sort var209 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun manager/-156614940 (var1573) String)
(declare-const null-var1573 var1573)
(declare-const null-String String)
(declare-const null-var209 var209)
(declare-const var1678 var1573) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator 
(assert (not (= var1678 null-var1573)))
(declare-const var2622 String) ; Statement: r21 := @parameter0: java.lang.String 
(assert (not (= var2622 null-String)))
(declare-const var1024 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1024 null-String)))
(declare-const var1485 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1485 null-String)))
(define-const var1545 String (manager/-156614940 var1678)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager> 
(assert true)
(define-const var1845 Bool (= var1545 "auto")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("auto") 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager") 
(assert (not (= (ite var1845 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var3146 Bool (= var1024 "org.apache.bsf.BSFManager")) ; Statement: $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager") 
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.ClassLoader scriptLoader> 
(assert (not (= (ite var3146 1 0) 0))) ; Negate: Cond: $z1 == 0  
(declare-const var2788 var209) ; Statement: $r25 := @caughtexception 
(assert (not (= var2788 null-var209)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {manager/-156614940=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator], java.lang.String)}
; {var1573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator, var1678=r0, var2622=r21, var3249=null_type, var1024=r2, var1485=r4, var1545=$r1, var1845=$z0, var3146=$z1, var209=java.lang.Exception, var2788=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator=var1573, r0=var1678, r21=var2622, null_type=var3249, r2=var1024, r4=var1485, $r1=var1545, $z0=var1845, $z1=var3146, java.lang.Exception=var209, $r25=var2788}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator;	r21 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("auto");	if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager");	$z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager");	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.ClassLoader scriptLoader>;	$r25 := @caughtexception;	return null
;block_num 3