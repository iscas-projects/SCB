(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var2828 0)
(declare-sort var2583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var2583) String)
(declare-fun requestMethod/-1859947049 (var3709) String)
(declare-const null-var3709 var3709)
(declare-const null-String String)
(declare-const var2583-ENGLISH var2583)
(declare-const var677 var3709) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http 
(assert (not (= var677 null-var3709)))
(declare-const var245 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var245 null-String)))
 ; Statement: if r1 != null goto $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert (not (= var245 null-String))) ; Cond: r1 != null 
(define-const var0 var2583 var2583-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3275 String (toUpperCase/398655892 var245 var0)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
(assert true) ; Non Conditional
(declare-const var677!1 var3709)
(assert (not (= var677!1 null-var3709)))
(assert (= (requestMethod/-1859947049 var677!1) var3275)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http: java.lang.String requestMethod> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), requestMethod/-1859947049=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http], java.lang.String)}
; {var3709=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http, var677=r0, var245=r1, var2828=null_type, var2583=java.util.Locale, var0=$r2, var3275=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http=var3709, r0=var677, r1=var245, null_type=var2828, java.util.Locale=var2583, $r2=var0, $r3=var3275}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.Http: java.lang.String requestMethod> = $r3;	return
;block_num 3