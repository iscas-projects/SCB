(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort var1897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1897-init () (Array Int var1897))
(declare-fun x/-859216448 (var125) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var1897 (Float64) var1897)
(declare-fun String_format/1339386452 (String (Array Int var1897)) String)
(declare-const null-var125 var125)
(declare-const null-__Array__Int__var1897__ (Array Int var1897))
(declare-const var1647 var125) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation 
(assert (not (= var1647 null-var125)))
(define-const var2747 (Array Int var1897) arr-var1897-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(define-const var1779 Float64 (x/-859216448 var1647)) ; Statement: $d0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation: double x> 
(define-const var1871 Float64 (Float64_valueOf/679560954 var1779)) ; Statement: $r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
(declare-const var2747!1 (Array Int var1897))
(assert (not (= var2747!1 null-__Array__Int__var1897__)))
(assert (= (select var2747!1 0) (cast-from-Float64-to-var1897 var1871))) ; Statement: $r0[0] = $r2 
(define-const var665 String (String_format/1339386452 "x = %g" var2747!1)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("x = %g", $r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1897-init=([], java.lang.Object[]), x/-859216448=([com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var1897=([java.lang.Double], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var125=com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation, var1647=r1, var1897=java.lang.Object, var2747=$r0, var1779=$d0, var1871=$r2, var665=$r3}
; {com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation=var125, r1=var1647, java.lang.Object=var1897, $r0=var2747, $d0=var1779, $r2=var1871, $r3=var665}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation;	$r0 = newarray (java.lang.Object)[1];	$d0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.math.LinearTransformation$VerticalLinearTransformation: double x>;	$r2 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	$r0[0] = $r2;	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("x = %g", $r0);	return $r3
;block_num 1