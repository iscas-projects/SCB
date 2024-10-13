(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1298 0)
(declare-sort var1559 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun manager/-156614940 (var1298) String)
(declare-const null-var1298 var1298)
(declare-const null-String String)
(declare-const var396 var1298) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator 
(assert (not (= var396 null-var1298)))
(declare-const var2474 String) ; Statement: r21 := @parameter0: java.lang.String 
(assert (not (= var2474 null-String)))
(declare-const var1141 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1141 null-String)))
(declare-const var1644 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1644 null-String)))
(define-const var3856 String (manager/-156614940 var396)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager> 
(assert true)
(define-const var235 Bool (= var3856 "auto")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("auto") 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager") 
(assert (not (not (= (ite var235 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1932 String (manager/-156614940 var396)) ; Statement: $r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager> 
(assert true)
(define-const var2035 Bool (= var1932 var2474)) ; Statement: $z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>(r21) 
 ; Statement: if $z2 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager") 
(assert (not (not (= (ite var2035 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {manager/-156614940=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator], java.lang.String)}
; {var1298=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator, var396=r0, var2474=r21, var1559=null_type, var1141=r2, var1644=r4, var3856=$r1, var235=$z0, var1932=$r22, var2035=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator=var1298, r0=var396, r21=var2474, null_type=var1559, r2=var1141, r4=var1644, $r1=var3856, $z0=var235, $r22=var1932, $z2=var2035}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator;	r21 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("auto");	if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager");	$r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerCreator: java.lang.String manager>;	$z2 = virtualinvoke $r22.<java.lang.String: boolean equals(java.lang.Object)>(r21);	if $z2 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>("org.apache.bsf.BSFManager");	return null
;block_num 3