(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2866 0)
(declare-sort var3036 0)
(declare-sort var1560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1560_toLocale/455255440 (var3036) var3036)
(declare-fun toUpperCase/398655892 (String var3036) String)
(declare-const null-String String)
(declare-const null-var3036 var3036)
(declare-const var2636 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2636 null-String)))
(declare-const var1107 var3036) ; Statement: r1 := @parameter1: java.util.Locale 
(assert (not (= var1107 null-var3036)))
 ; Statement: if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1) 
(assert (not (= var2636 null-String))) ; Cond: r0 != null 
(define-const var3414 var3036 (var1560_toLocale/455255440 var1107)) ; Statement: $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1) 
(assert true)
(define-const var3106 String (toUpperCase/398655892 var2636 var3414)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1560_toLocale/455255440=([java.util.Locale], java.util.Locale), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var2636=r0, var2866=null_type, var3036=java.util.Locale, var1107=r1, var1560=org.apache.commons.lang3.LocaleUtils, var3414=$r2, var3106=$r3}
; {r0=var2636, null_type=var2866, java.util.Locale=var3036, r1=var1107, org.apache.commons.lang3.LocaleUtils=var1560, $r2=var3414, $r3=var3106}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Locale;	if r0 != null goto $r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1);	$r2 = staticinvoke <org.apache.commons.lang3.LocaleUtils: java.util.Locale toLocale(java.util.Locale)>(r1);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	return $r3
;block_num 2