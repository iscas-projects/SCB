(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2051 0)
(declare-sort var312 0)
(declare-sort var2926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var2926) String)
(declare-fun algorithm/-232008204 (var2051) String)
(declare-const null-var2051 var2051)
(declare-const null-String String)
(declare-const var2926-ENGLISH var2926)
(declare-const var2584 var2051) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm 
(assert (not (= var2584 null-var2051)))
(declare-const var359 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var359 null-String)))
 ; Statement: if r1 == null goto $r3 = null 
(assert (not (= var359 null-String))) ; Negate: Cond: r1 == null  
(define-const var63 var2926 var2926-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var1017 String (toUpperCase/398655892 var359 var63)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3] 
(assert true) ; Non Conditional
(declare-const var2584!1 var2051)
(assert (not (= var2584!1 null-var2051)))
(assert (= (algorithm/-232008204 var2584!1) var1017)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), algorithm/-232008204=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm], java.lang.String)}
; {var2051=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm, var2584=r0, var359=r1, var312=null_type, var2926=java.util.Locale, var63=$r2, var1017=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm=var2051, r0=var2584, r1=var359, null_type=var312, java.util.Locale=var2926, $r2=var63, $r3=var1017}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm;	r1 := @parameter0: java.lang.String;	if r1 == null goto $r3 = null;	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	goto [?= r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3];	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ChecksumAlgorithm: java.lang.String algorithm> = $r3;	return
;block_num 3