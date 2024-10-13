(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort var3997 0)
(declare-sort var1249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1249-init () (Array Int var1249))
(declare-fun getRate/-1010794981 (var2636) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var1249 (Float64) var1249)
(declare-fun String_format/-647569892 (var3997 String (Array Int var1249)) String)
(declare-const null-var2636 var2636)
(declare-const var3997-ROOT var3997)
(declare-const null-__Array__Int__var1249__ (Array Int var1249))
(declare-const var3320 var2636) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter 
(assert (not (= var3320 null-var2636)))
(define-const var2431 var3997 var3997-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3439 (Array Int var1249) arr-var1249-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var546 Float64 (getRate/-1010794981 var3320)) ; Statement: $d0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter: double getRate()>() 
(define-const var3178 Float64 (Float64_valueOf/679560954 var546)) ; Statement: $r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
(declare-const var3439!1 (Array Int var1249))
(assert (not (= var3439!1 null-__Array__Int__var1249__)))
(assert (= (select var3439!1 0) (cast-from-Float64-to-var1249 var3178))) ; Statement: $r0[0] = $r3 
(define-const var2376 String (String_format/-647569892 var2431 "RateLimiter[stableRate=%3.1fqps]" var3439!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "RateLimiter[stableRate=%3.1fqps]", $r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1249-init=([], java.lang.Object[]), getRate/-1010794981=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var1249=([java.lang.Double], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var2636=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter, var3320=r1, var3997=java.util.Locale, var2431=$r2, var1249=java.lang.Object, var3439=$r0, var546=$d0, var3178=$r3, var2376=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter=var2636, r1=var3320, java.util.Locale=var3997, $r2=var2431, java.lang.Object=var1249, $r0=var3439, $d0=var546, $r3=var3178, $r4=var2376}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r0 = newarray (java.lang.Object)[1];	$d0 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.RateLimiter: double getRate()>();	$r3 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	$r0[0] = $r3;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "RateLimiter[stableRate=%3.1fqps]", $r0);	return $r4
;block_num 1