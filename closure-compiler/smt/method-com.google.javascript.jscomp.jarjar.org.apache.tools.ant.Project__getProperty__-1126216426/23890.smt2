(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var3726 0)
(declare-sort var2468 0)
(declare-sort var1445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2468_getPropertyHelper/-1365933400 (var1643) var2468)
(declare-fun getProperty/1683587128 (var2468 String) var1445)
(declare-fun String_valueOf/-333372740 (var1445) String)
(declare-const null-var1643 var1643)
(declare-const null-String String)
(declare-const null-var1445 var1445)
(declare-const var827 var1643) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var827 null-var1643)))
(declare-const var2065 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2065 null-String)))
(define-const var425 var2468 (var2468_getPropertyHelper/-1365933400 var827)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getPropertyHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0) 
(assert true)
(define-const var974 var1445 (getProperty/1683587128 var425 var2065)) ; Statement: r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: java.lang.Object getProperty(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3) 
(assert (not (= var974 null-var1445))) ; Cond: r3 != null 
(define-const var343 String (String_valueOf/-333372740 var974)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2468_getPropertyHelper/-1365933400=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper), getProperty/1683587128=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, java.lang.String], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1643=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var827=r0, var2065=r1, var3726=null_type, var2468=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper, var425=$r2, var1445=java.lang.Object, var974=r3, var343=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1643, r0=var827, r1=var2065, null_type=var3726, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper=var2468, $r2=var425, java.lang.Object=var1445, r3=var974, $r4=var343}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.lang.String;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper getPropertyHelper(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>(r0);	r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PropertyHelper: java.lang.Object getProperty(java.lang.String)>(r1);	if r3 != null goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r3);	return $r4
;block_num 3