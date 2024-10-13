(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var3650 0)
(declare-sort var1756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var1756) String)
(declare-fun algorithm/2026157971 (var426) String)
(declare-const null-var426 var426)
(declare-const null-String String)
(declare-const var1756-ENGLISH var1756)
(declare-const var3304 var426) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm 
(assert (not (= var3304 null-var426)))
(declare-const var1743 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1743 null-String)))
 ; Statement: if r1 == null goto $r3 = null 
(assert (not (= var1743 null-String))) ; Negate: Cond: r1 == null  
(define-const var1057 var1756 var1756-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var2093 String (toUpperCase/398655892 var1743 var1057)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3] 
(assert true) ; Non Conditional
(declare-const var3304!1 var426)
(assert (not (= var3304!1 null-var426)))
(assert (= (algorithm/2026157971 var3304!1) var2093)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), algorithm/2026157971=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm], java.lang.String)}
; {var426=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm, var3304=r0, var1743=r1, var3650=null_type, var1756=java.util.Locale, var1057=$r2, var2093=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm=var426, r0=var3304, r1=var1743, null_type=var3650, java.util.Locale=var1756, $r2=var1057, $r3=var2093}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm;	r1 := @parameter0: java.lang.String;	if r1 == null goto $r3 = null;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> = $r3;	return
;block_num 3