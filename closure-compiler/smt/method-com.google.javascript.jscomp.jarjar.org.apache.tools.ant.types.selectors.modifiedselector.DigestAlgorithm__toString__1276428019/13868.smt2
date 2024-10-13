(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var3392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var3392-init () (Array Int var3392))
(declare-fun algorithm/2026157971 (var1969) String)
(declare-fun cast-from-String-to-var3392 (String) var3392)
(declare-fun provider/2026157971 (var1969) String)
(declare-fun String_format/1339386452 (String (Array Int var3392)) String)
(declare-const null-var1969 var1969)
(declare-const null-__Array__Int__var3392__ (Array Int var3392))
(declare-const var1291 var1969) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm 
(assert (not (= var1291 null-var1969)))
(define-const var938 (Array Int var3392) arr-var3392-init) ; Statement: $r0 = newarray (java.lang.Object)[2] 
(define-const var2392 String (algorithm/2026157971 var1291)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm> 
(declare-const var938!1 (Array Int var3392))
(assert (not (= var938!1 null-__Array__Int__var3392__)))
(assert (= (select var938!1 0) (cast-from-String-to-var3392 var2392))) ; Statement: $r0[0] = $r2 
(define-const var3168 String (provider/2026157971 var1291)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String provider> 
(declare-const var938!2 (Array Int var3392))
(assert (not (= var938!2 null-__Array__Int__var3392__)))
(assert (= (select var938!2 1) (cast-from-String-to-var3392 var3168))) ; Statement: $r0[1] = $r3 
(define-const var174 String (String_format/1339386452 "<DigestAlgorithm:algorithm=%s;provider=%s>" var938!2)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<DigestAlgorithm:algorithm=%s;provider=%s>", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var3392-init=([], java.lang.Object[]), algorithm/2026157971=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm], java.lang.String), cast-from-String-to-var3392=([java.lang.String], java.lang.Object), provider/2026157971=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1969=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm, var1291=r1, var3392=java.lang.Object, var938=$r0, var2392=$r2, var3168=$r3, var174=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm=var1969, r1=var1291, java.lang.Object=var3392, $r0=var938, $r2=var2392, $r3=var3168, $r4=var174}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm;	$r0 = newarray (java.lang.Object)[2];	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String algorithm>;	$r0[0] = $r2;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.DigestAlgorithm: java.lang.String provider>;	$r0[1] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("<DigestAlgorithm:algorithm=%s;provider=%s>", $r0);	return $r4
;block_num 1