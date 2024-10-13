(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2937 0)
(declare-sort var3496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-const null-var2937 var2937)
(declare-const null-String String)
(declare-const var2097 var2937) ; Statement: r2 := @this: cn.hutool.core.lang.intern.JdkStringInterner 
(assert (not (= var2097 null-var2937)))
(declare-const var2312 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2312 null-String)))
 ; Statement: if null != r0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>() 
(assert (not (= null-String var2312))) ; Cond: null != r0 
(assert true)
(define-const var1999 String (intern/-1326102057 var2312)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String)}
; {var2937=cn.hutool.core.lang.intern.JdkStringInterner, var2097=r2, var2312=r0, var3496=null_type, var1999=$r1}
; {cn.hutool.core.lang.intern.JdkStringInterner=var2937, r2=var2097, r0=var2312, null_type=var3496, $r1=var1999}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r2 := @this: cn.hutool.core.lang.intern.JdkStringInterner;	r0 := @parameter0: java.lang.String;	if null != r0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>();	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String intern()>();	return $r1
;block_num 2