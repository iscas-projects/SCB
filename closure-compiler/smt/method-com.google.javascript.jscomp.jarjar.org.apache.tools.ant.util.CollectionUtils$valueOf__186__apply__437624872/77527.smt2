(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var2420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2420) String)
(declare-const null-var150 var150)
(declare-const null-var2420 var2420)
(declare-const var1283 var150) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.CollectionUtils$valueOf__186 
(assert (not (= var1283 null-var150)))
(declare-const var3676 var2420) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3676 null-var2420)))
(define-const var2070 String (String_valueOf/-333372740 var3676)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var150=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.CollectionUtils$valueOf__186, var1283=$r0, var2420=java.lang.Object, var3676=$r1, var2070=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.CollectionUtils$valueOf__186=var150, $r0=var1283, java.lang.Object=var2420, $r1=var3676, $r2=var2070}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.CollectionUtils$valueOf__186;	$r1 := @parameter0: java.lang.Object;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1