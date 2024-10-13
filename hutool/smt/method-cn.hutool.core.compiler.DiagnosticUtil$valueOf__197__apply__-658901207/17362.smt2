(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var204 0)
(declare-sort var181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_valueOf/-333372740 (var181) String)
(declare-const null-var204 var204)
(declare-const null-var181 var181)
(declare-const var1070 var204) ; Statement: $r0 := @this: cn.hutool.core.compiler.DiagnosticUtil$valueOf__197 
(assert (not (= var1070 null-var204)))
(declare-const var1301 var181) ; Statement: $r1 := @parameter0: java.lang.Object 
(assert (not (= var1301 null-var181)))
(define-const var3384 String (String_valueOf/-333372740 var1301)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var204=cn.hutool.core.compiler.DiagnosticUtil$valueOf__197, var1070=$r0, var181=java.lang.Object, var1301=$r1, var3384=$r2}
; {cn.hutool.core.compiler.DiagnosticUtil$valueOf__197=var204, $r0=var1070, java.lang.Object=var181, $r1=var1301, $r2=var3384}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts $r0 := @this: cn.hutool.core.compiler.DiagnosticUtil$valueOf__197;	$r1 := @parameter0: java.lang.Object;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1