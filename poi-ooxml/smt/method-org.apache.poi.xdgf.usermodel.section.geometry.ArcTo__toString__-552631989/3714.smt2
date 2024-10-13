(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var810 0)
(declare-sort var1126 0)
(declare-sort var1631 0)
(declare-sort var1933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1631_getUserLocale/-603789096 () var1126)
(declare-fun arr-var1933-init () (Array Int var1933))
(declare-fun x/-2007343885 (var810) Float64)
(declare-fun cast-from-Float64-to-var1933 (Float64) var1933)
(declare-fun y/-2007343885 (var810) Float64)
(declare-fun a/-2007343885 (var810) Float64)
(declare-fun String_format/-647569892 (var1126 String (Array Int var1933)) String)
(declare-const null-var810 var810)
(declare-const null-__Array__Int__var1933__ (Array Int var1933))
(declare-const var551 var810) ; Statement: r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.ArcTo 
(assert (not (= var551 null-var810)))
(define-const var624 var1126 var1631_getUserLocale/-603789096) ; Statement: $r5 = staticinvoke <org.apache.poi.util.LocaleUtil: java.util.Locale getUserLocale()>() 
(define-const var1452 (Array Int var1933) arr-var1933-init) ; Statement: $r0 = newarray (java.lang.Object)[3] 
(define-const var1563 Float64 (x/-2007343885 var551)) ; Statement: $r2 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double x> 
(declare-const var1452!1 (Array Int var1933))
(assert (not (= var1452!1 null-__Array__Int__var1933__)))
(assert (= (select var1452!1 0) (cast-from-Float64-to-var1933 var1563))) ; Statement: $r0[0] = $r2 
(define-const var2233 Float64 (y/-2007343885 var551)) ; Statement: $r3 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double y> 
(declare-const var1452!2 (Array Int var1933))
(assert (not (= var1452!2 null-__Array__Int__var1933__)))
(assert (= (select var1452!2 1) (cast-from-Float64-to-var1933 var2233))) ; Statement: $r0[1] = $r3 
(define-const var2625 Float64 (a/-2007343885 var551)) ; Statement: $r4 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double a> 
(declare-const var1452!3 (Array Int var1933))
(assert (not (= var1452!3 null-__Array__Int__var1933__)))
(assert (= (select var1452!3 2) (cast-from-Float64-to-var1933 var2625))) ; Statement: $r0[2] = $r4 
(define-const var99 String (String_format/-647569892 var624 "ArcTo: x=%f; y=%f; a=%f" var1452!3)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "ArcTo: x=%f; y=%f; a=%f", $r0) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var1631_getUserLocale/-603789096=([], java.util.Locale), arr-var1933-init=([], java.lang.Object[]), x/-2007343885=([org.apache.poi.xdgf.usermodel.section.geometry.ArcTo], java.lang.Double), cast-from-Float64-to-var1933=([java.lang.Double], java.lang.Object), y/-2007343885=([org.apache.poi.xdgf.usermodel.section.geometry.ArcTo], java.lang.Double), a/-2007343885=([org.apache.poi.xdgf.usermodel.section.geometry.ArcTo], java.lang.Double), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String)}
; {var810=org.apache.poi.xdgf.usermodel.section.geometry.ArcTo, var551=r1, var1126=java.util.Locale, var1631=org.apache.poi.util.LocaleUtil, var624=$r5, var1933=java.lang.Object, var1452=$r0, var1563=$r2, var2233=$r3, var2625=$r4, var99=$r6}
; {org.apache.poi.xdgf.usermodel.section.geometry.ArcTo=var810, r1=var551, java.util.Locale=var1126, org.apache.poi.util.LocaleUtil=var1631, $r5=var624, java.lang.Object=var1933, $r0=var1452, $r2=var1563, $r3=var2233, $r4=var2625, $r6=var99}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r1 := @this: org.apache.poi.xdgf.usermodel.section.geometry.ArcTo;	$r5 = staticinvoke <org.apache.poi.util.LocaleUtil: java.util.Locale getUserLocale()>();	$r0 = newarray (java.lang.Object)[3];	$r2 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double x>;	$r0[0] = $r2;	$r3 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double y>;	$r0[1] = $r3;	$r4 = r1.<org.apache.poi.xdgf.usermodel.section.geometry.ArcTo: java.lang.Double a>;	$r0[2] = $r4;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r5, "ArcTo: x=%f; y=%f; a=%f", $r0);	return $r6
;block_num 1