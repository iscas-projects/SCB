(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1044 0)
(declare-sort var2205 0)
(declare-sort var2363 0)
(declare-sort var1043 0)
(declare-sort var166 0)
(declare-sort var132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var132_castToRuntime/315756906 (var1043) var166)
(declare-const null-var1044 var1044)
(declare-const null-var2205 var2205)
(declare-const null-var2363 var2363)
(declare-const null-var1043 var1043)
(declare-const var2598 var1044) ; Statement: r1 := @this: org.apache.ibatis.ognl.NumericExpression 
(assert (not (= var2598 null-var1044)))
(declare-const var3184 var2205) ; Statement: r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext 
(assert (not (= var3184 null-var2205)))
(declare-const var221 var2363) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var221 null-var2363)))
(define-const var3699 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3699)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3699!1 String)
(assert (= var3699!1 ""))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1139 var1043) ; Statement: $r16 := @caughtexception 
(assert (not (= var1139 null-var1043)))
(define-const var2382 var166 (var132_castToRuntime/315756906 var1139)) ; Statement: $r17 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r16) 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var132_castToRuntime/315756906=([java.lang.Throwable], java.lang.RuntimeException)}
; {var1044=org.apache.ibatis.ognl.NumericExpression, var2598=r1, var2205=org.apache.ibatis.ognl.OgnlContext, var3184=r2, var2363=java.lang.Object, var221=r3, var3699=$r0, var1043=java.lang.Throwable, var1139=$r16, var166=java.lang.RuntimeException, var132=org.apache.ibatis.ognl.OgnlOps, var2382=$r17}
; {org.apache.ibatis.ognl.NumericExpression=var1044, r1=var2598, org.apache.ibatis.ognl.OgnlContext=var2205, r2=var3184, java.lang.Object=var2363, r3=var221, $r0=var3699, java.lang.Throwable=var1043, $r16=var1139, java.lang.RuntimeException=var166, org.apache.ibatis.ognl.OgnlOps=var132, $r17=var2382}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.apache.ibatis.ognl.NumericExpression;	r2 := @parameter0: org.apache.ibatis.ognl.OgnlContext;	r3 := @parameter1: java.lang.Object;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r16 := @caughtexception;	$r17 = staticinvoke <org.apache.ibatis.ognl.OgnlOps: java.lang.RuntimeException castToRuntime(java.lang.Throwable)>($r16);	throw $r17
;block_num 2