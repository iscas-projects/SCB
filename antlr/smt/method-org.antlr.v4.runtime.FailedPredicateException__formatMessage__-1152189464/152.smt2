(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2131 0)
(declare-sort var3544 0)
(declare-sort var426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3544_getDefault/-641693464 () var3544)
(declare-fun arr-var426-init () (Array Int var426))
(declare-fun cast-from-String-to-var426 (String) var426)
(declare-fun String_format/-647569892 (var3544 String (Array Int var426)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var426__ (Array Int var426))
(declare-const var742 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var742 null-String)))
(declare-const var1487 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1487 null-String)))
 ; Statement: if r0 == null goto $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(assert (= var1487 null-String)) ; Cond: r0 == null 
(define-const var3888 var3544 var3544_getDefault/-641693464) ; Statement: $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>() 
(define-const var2691 (Array Int var426) arr-var426-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(declare-const var2691!1 (Array Int var426))
(assert (not (= var2691!1 null-__Array__Int__var426__)))
(assert (= (select var2691!1 0) (cast-from-String-to-var426 var742))) ; Statement: $r1[0] = r2 
(define-const var2743 String (String_format/-647569892 var3888 "failed predicate: {%s}?" var2691!1)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "failed predicate: {%s}?", $r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3544_getDefault/-641693464=([], java.util.Locale), arr-var426-init=([], java.lang.Object[]), cast-from-String-to-var426=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var742=r2, var2131=null_type, var1487=r0, var3544=java.util.Locale, var3888=$r3, var426=java.lang.Object, var2691=$r1, var2743=$r4}
; {r2=var742, null_type=var2131, r0=var1487, java.util.Locale=var3544, $r3=var3888, java.lang.Object=var426, $r1=var2691, $r4=var2743}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r3 = staticinvoke <java.util.Locale: java.util.Locale getDefault()>();	$r1 = newarray (java.lang.Object)[1];	$r1[0] = r2;	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r3, "failed predicate: {%s}?", $r1);	return $r4
;block_num 2