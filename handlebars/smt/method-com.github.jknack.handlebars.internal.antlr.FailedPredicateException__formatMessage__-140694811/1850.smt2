(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2706 0)
(declare-sort var81 0)
(declare-sort var3764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var81_getDefault/-641693464 () var81)
(declare-fun arr-var3764-init () (Array Int var3764))
(declare-fun cast-from-String-to-var3764 (String) var3764)
(declare-fun String_format/-647569892 (var81 String (Array Int var3764)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3764__ (Array Int var3764))
(declare-const var3953 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3953 null-String)))
(declare-const var2389 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2389 null-String)))
 ; Statement: if r0 == null goto $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (= var2389 null-String)) ; Cond: r0 == null 
(define-const var566 var81 var81_getDefault/-641693464) ; Statement: $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var3106 (Array Int var3764) arr-var3764-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var3106!1 (Array Int var3764))
(assert (not (= var3106!1 null-__Array__Int__var3764__)))
(assert (= (select var3106!1 0) (cast-from-String-to-var3764 var3953))) ; Statement: $r1[0] = r2 
(define-const var1822 String (String_format/-647569892 var566 "failed predicate: {%s}?" var3106!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "failed predicate: {%s}?", $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var81_getDefault/-641693464=([], java.util.Locale), arr-var3764-init=([], java.lang.Object[]), cast-from-String-to-var3764=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3953=r2, var2706=null_type, var2389=r0, var81=java.util.Locale, var566=$r3, var3764=java.lang.Object, var3106=$r1, var1822=$r4}
; {r2=var3953, null_type=var2706, r0=var2389, java.util.Locale=var81, $r3=var566, java.lang.Object=var3764, $r1=var3106, $r4=var1822}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "failed predicate: {%s}?", $r1);	return $r4
;block_num 2