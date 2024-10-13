(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var2598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var2598) String)
(declare-const null-var1904 var1904)
(declare-const null-var2598 var2598)
(declare-const var3880 var1904) ; Statement: $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils$valueOf__162 
(assert (not (= var3880 null-var1904)))
(declare-const var3244 var2598) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var3244 null-var2598)))
(define-const var2680 String (String_valueOf/-333372740 var3244)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1904=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils$valueOf__162, var3880=$r0, var2598=java.lang.Object, var3244=$r1, var2680=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils$valueOf__162=var1904, $r0=var3880, java.lang.Object=var2598, $r1=var3244, $r2=var2680}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts $r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils$valueOf__162;	$r1 := @parameter0: java.lang.Object;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1